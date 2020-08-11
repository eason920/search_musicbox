<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" %>   
<!-- #include virtual="include/DBConnection.asp"--> 
<%

response.Buffer = true   
session.CodePage = 65001   
response.Charset = "utf-8"

Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.charset = "UTF-8"
response.contentType = "application/json"

mindx=Get_mid()  '--使用者ID
cindx=Get_cid()  '--cust

'mindx = 1179
'mindx = 246467

toDo = request("toDo")
Page = request("PG")

'自訂搜尋
classify = request("kclf")
keyword = Trim(request("keywordStr"))
Krecord= request("Krecord")

if Page="" then
	Page=0
end if

AbsolutePos=1

if Page <= 1 then
    countPerPage = 12
    AbsolutePos = 1
else 
    countPerPage = 5
    AbsolutePos = 12 + (countPerPage * (Page - 2)) + 1
end if

sfilter = ""

if keyword <> "" then
    sfilter = " WHERE (mb.Title LIKE N'%" & keyword & "%' OR mbe.singer_title LIKE '%" & keyword & "%') " 
end if 

if classify <> "" and classify <> "0" then
    if sfilter = "" then
        sfilter = " WHERE "
    else
        sfilter = sfilter & "AND" 
    end if

    sfilter = sfilter & " mbe.song_style IN (" & classify & ") "
end if

if Krecord <> "" then
    if sfilter = "" then
        sfilter = " WHERE "
    else
        sfilter = sfilter & "AND" 
    end if

    sfilter = sfilter & " CASE WHEN tm.[filename] IS NULL THEN 0 ELSE 1 END = 1 "
end if

sql = "; with tmpMemberList AS " &_
      "( " &_
      "  SELECT ref_id, [filename] " &_
	  "  FROM [Company1].[dbo].[FundayKTV] " &_
	  "  WHERE booking = 1 AND member_id = " & mindx &_
      ") , tmpMusic AS " &_
      "( " &_
      "  SELECT indx, Title, REPLACE(urls, 'https://youtu.be/', '') AS imgfilename, cdate " &_
      "  FROM [Funday].[dbo].[MusicBox] " & _
      ") " &_
      "SELECT mb.indx, CASE WHEN tm.[filename] IS NULL THEN 0 ELSE 1 END AS featured, CONVERT(varChar(10), mb.cdate, 111) AS cdate, " &_
      "mb.Title, mbe.singer_title, mb.imgfilename, ISNULL(mbe.song_style, '') AS classify " &_
      "FROM tmpMusic mb " &_
      "LEFT JOIN tmpMemberList tm " &_
      "ON tm.ref_id = mb.indx " &_
      "LEFT JOIN [Funday].[dbo].[MusicBox_ext] mbe " &_
      "ON mb.indx = mbe.re_indx " & sfilter &_       
      "ORDER BY mb.cdate DESC " &_
      "OFFSET " + CSTR(AbsolutePos - 1) + " ROWS " &_
	  "FETCH NEXT " + CSTR(countPerPage) + " ROWS ONLY;"

'response.write "{" & parseJson("sql", sql, 1)
'response.end

rs.ActiveConnection = connection2 
rs.CursorLocation = 3 
rs.CursorType = 1
rs.LockType = 3
rs.Source = sql

'On Error Resume Next
rs.Open()

'response.write "{" & parseJson("error", err.Description, 1)
'response.end

recCount = 0

if not rs.eof then
    recCount = rs.RecordCount 
end if
    
'首錄
strJson = strJson & "{" & vbcrlf & Chr("34") & "info" & Chr("34") & ":" & Vbcrlf & vbTab & "{" & Vbcrlf
strJson = strJson & vbTab & Chr("34") & "SearchTime" & Chr("34") & ": " &Chr("34") & Time() & Chr("34") & "," & Vbcrlf
strJson = strJson & vbTab & Chr("34") & "recCount" & Chr("34") & ": " &Chr("34") & cstr(recCount) & Chr("34") & Vbcrlf
strJson = strJson & vbTab & "}," & Vbcrlf

'查詢條件
strJson = strJson & Chr("34") & "data" & Chr("34") & ":[ " & Vbcrlf 

while not rs.eof 

    song_id = rs("indx")
    classify = rs("classify")
    ch_subject = rs("Title")
    singer = rs("singer_title")
    publish_date = rs("cdate")
    featured = rs("featured")
    imgfilename = rs("imgfilename")

    strJson = strJson & vbTab & "{" 
    strJson = strJson & parseJson("song_id", CStr(song_id), 0)
    strJson = strJson & parseJson("c_classify", ch_classify(classify), 0)
    strJson = strJson & parseJson("publish_date", publish_date, 0)
    strJson = strJson & parseJson("ch_subject", ch_subject, 0)
    strJson = strJson & parseJson("singer", singer, 0)
    strJson = strJson & parseJson("featured", featured, 0)
    strJson = strJson & parseJson("imgfilename", imgfilename, 1)
        
    rs.movenext

    if not rs.eof then
        strJson = strJson & "," & vbcrlf
    end if
wend

rs.close

strJson = strJson & Vbcrlf & vbTab & "]" & Vbcrlf
strJson = strJson & "}" 

response.write strJson
response.End

'Function Start-------------------------------------

'將取出的資料轉換成 Json 字串
Function parseJson(keyword, value, isLast) 

    retJson = chr(34) & keyword & chr(34) & ":" & chr(34) & value & chr(34) 

    if isLast = 1 then
        retJson = retJson & "}" 
    else
        retJson = retJson & ", " 
    end if

    parseJson = retJson

End function

'回傳分類名稱
Function ch_classify(val)

    Select case TRIM(CStr(val))
        case "1"
            ch_classify = "Pop流行樂"
        case "2" 
            ch_classify = "EDM電音"
        case "3"
            ch_classify = "Hip-hop嘻哈樂"
        case "4"
            ch_classify = "Rap饒舌樂"        
        case "5"
            ch_classify = "R&B節奏藍調"
        case "6"        
            ch_classify = "Rock搖滾音樂"
        case "7"
            ch_classify = "Jazz爵士樂"
        case "8"
            ch_classify = "Folk/Country民歌/鄉村"
        case else
            ch_classify = "Pop流行樂"
    End Select

End function

'Function End-------------------------------------
%>