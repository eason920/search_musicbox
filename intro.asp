<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>  
<%   
  response.Buffer = true   
  session.CodePage = 65001   
  response.Charset = "utf-8"
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>search Musicbox</title>
    <link href="./css/musicbox.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/datepicker_bs/datepicker.css" rel="stylesheet" type="text/css"/>
    <script src="../assets/plugins/jquery/jquery-1.12.4-min.js"></script>
    <script src="./js/select.js"></script>
    <script src="./js/musicbox.js"></script>
    <script src="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.min.js"></script>
    <script src="../assets/plugins/datepicker_bs/bootstrap-datepicker.js"></script>
  </head>
  <body>
    <div id="wrapperMain">
      <aside>
        <section id="blockLabel">
          <div class="label-list"><a class="label-item" href="">課程</a><a class="label-item" href="">文章</a><a class="label-item" href="">專欄</a><a class="label-item" href="">部落格</a><a class="label-item" href="">童話</a>
            <div class="label-item active" href="">音樂</div>
          </div>
        </section>
        <section id="blockSimple">
          <div class="simple-underline">
            <ul id="simpleList">
              <li class="simple-list-item">
                <div class="simple-title active">觀看紀錄</div>
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
                      <div class="tmp-select-title"> <span>音樂風格</span>
                        <div class="icon-arrow"></div>
                      </div>
                      <div class="tmp-select-dropscro">
                        <div class="tmp-select-itembox">
                          <div class="tmp-select-item" data-value="1">全部曲風</div>
                          <div class="tmp-select-item" data-value="1">曲風一</div>
                          <div class="tmp-select-item" data-value="1">曲風二</div>
                          <div class="tmp-select-item" data-value="1">曲風三</div>
                          <div class="tmp-select-item" data-value="1">曲風四</div>
                        </div>
                      </div>
                    </div>
                    <div class="borderbox">
                      <input class="custom-text" type="text" placeholder="輸入歌名或歌手名字..."/>
                    </div>
                  </li>
                  <li class="custom-item">
                    <div class="custom-left">
                      <input class="custom-checkbox" type="checkbox" name="record" id="record"/>
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
            <li class="item is-c1">
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
            </li>
            <li class="item is-c2">
              <div class="item-img" style="background-image: url(./images/demo/1.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風二</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">CHEAP THRILLS - SIA - Played on a BICYCLE - KHS & Kina Grannis Cover</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">KHS & Kina Grannis</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風三</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">This Is The New Year</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">A Great Big World</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
            <li class="item is-c4">
              <div class="item-img" style="background-image: url(./images/demo/4.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風四</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">Don’t Download This Song</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">“Weird Al” Yankovic</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
            <li class="item is-empty">沒有符合此搜尋的結果</li>
            <li class="item is-c1">
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
            </li>
            <li class="item is-c2">
              <div class="item-img" style="background-image: url(./images/demo/1.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風二</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">CHEAP THRILLS - SIA - Played on a BICYCLE - KHS & Kina Grannis Cover</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">KHS & Kina Grannis</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風三</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">This Is The New Year</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">A Great Big World</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
            <li class="item is-c4">
              <div class="item-img" style="background-image: url(./images/demo/4.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">曲風四</div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title">Don’t Download This Song</div>
                </div>
                <div class="box">
                  <div class="left">
                    <div class="sort">“Weird Al” Yankovic</div>
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
            </li>
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
        <iframe src="https://test.funday.asia/NewMylessonmobile/MusicBox/musicBox.asp?musicNo=835&rwd"></iframe>
      </div>
    </div>
  </body>
</html>