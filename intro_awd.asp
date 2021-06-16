<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>  
<!-- #include virtual="include/DBConnection.asp"--> 
<%   
    response.Buffer = true   
    session.CodePage = 65001   
    response.Charset = "utf-8"

    mindx=Get_mid()  '--使用者ID

    if session("indx")="" then
        response.Redirect "https://funday.asia/"
    end if
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>search Musicbox</title>
    <link href="./css/musicbox.css?1090812" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/datepicker_bs/datepicker.css" rel="stylesheet" type="text/css"/>
    <script src="../assets/plugins/jquery/jquery-1.12.4-min.js"></script>
    <script src="./js/select.js"></script>
    <script src="./js/musicbox.js?1090812"></script>
    <script src="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.min.js"></script>
    <script src="../assets/plugins/datepicker_bs/bootstrap-datepicker.js"></script>
  </head>
  <body>
    <div id="wrapperMain">
      <aside>
        <section id="blockLabel">
            <p hidden id="function_id">musicbox</p>
            <!--#include virtual="search/common/menu_search.inc"-->
        </section>
        <section id="blockSimple">
          <div class="simple-underline">
            <ul id="simpleList">
              <li class="simple-list-item">
                <div class="simple-title">推薦音樂</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">收錄音樂</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">我的歡唱</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">自訂搜尋</div>
                <div class="simple-border"></div>
              </li>
            </ul>
            <ul id="simpleContent">              
              <li class="simple-content-item"></li>
              <li class="simple-content-item"></li>
              <li class="simple-content-item"></li>
              <li class="simple-content-item">
                <ul id="customContent">
                  <li class="custom-item">
                    <div class="tmp-select ps5_2">
                      <div class="tmp-select-title"> <span data-value="">音樂風格</span>
                        <div class="icon-arrow"></div>
                      </div>
                      <div class="tmp-select-dropscro">
                        <div class="tmp-select-itembox">
                          <div class="tmp-select-item" data-value="0">全部曲風</div>
                          <div class="tmp-select-item" data-value="1">Pop流行樂</div>
                          <div class="tmp-select-item" data-value="2">EDM電音</div>
                          <div class="tmp-select-item" data-value="3">Hip-hop嘻哈樂</div>
                          <div class="tmp-select-item" data-value="4">Rap饒舌樂</div>
                          <div class="tmp-select-item" data-value="5">R&B節奏藍調</div>
                          <div class="tmp-select-item" data-value="6">Rock搖滾音樂</div>
                          <div class="tmp-select-item" data-value="7">Jazz爵士樂</div>
                          <div class="tmp-select-item" data-value="8">Folk/Country民歌/鄉村</div>
                        </div>
                      </div>
                    </div>
                    <div class="borderbox">
                      <input id="keyword" class="custom-text" type="text" placeholder="輸入歌名或歌手名字..."/>
                    </div>
                  </li>
                  <li class="custom-item">
                    <div class="custom-left">
                      <input class="custom-checkbox" type="checkbox" name="record" id="record" value ="1"/>
                      <label class="custom-label" for="record">歡唱紀錄</label>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
            <div class="submit">
              <div class="submit-btn is-type2" style="display: none">清除</div>
              <div class="submit-btn is-type1">搜尋</div>
            </div>
          </div>
        </section>
        <section id="blockList">
          <input id="forKeydown" type="text"/>
          <div class="block-title is-result"><span>
               搜尋結果：<b>(以下結果取得自 4 時 15 分)</b></span>
            <div class="title-num"><span>共30筆</span></div>
          </div>
          <ul id="list">
            <!-- 音樂的分類用色對照 :
            is-c1 曲風一
            is-c2 曲風二
            is-c3 曲風三
            is-c4 曲風四
            -->
<!--            <li class="item is-c1">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風一</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">memories</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">Maroon 5</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">歡唱
                <div class="icon-check"></div>
              </div>
            </li>-->
          </ul>
        </section>
        <div class="toTop">
          <div class="icon-top"></div>
        </div>
        <div class="loading"><img src="./images/loading.gif"/></div>
      </aside>
      <!--#content.is-empty
      .content-inner
      	.empty 沒有符合此搜尋的結果
      	.empty 請於左方重新輸入條件
      -->
      <!-- 搜尋「沒有結果」時的介面 ^^^-->
      <!-- 搜尋「有結果」時的介面 vvv-->
      <div id="content">          
        <iframe id="music_palyer" src=""></iframe>
      </div>
    </div>
  </body>
</html>