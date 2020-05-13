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
    <title>search Article</title>
    <link href="./css/article.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/datepicker_bs/datepicker.css" rel="stylesheet" type="text/css"/>
    <script src="../assets/plugins/jquery/jquery-1.12.4-min.js"></script>
    <script src="./js/select.js"></script>
    <script src="./js/article.js"></script>
    <script src="../assets/plugins/perfect-scrollbar-master/perfect-scrollbar.min.js"></script>
    <script src="../assets/plugins/datepicker_bs/bootstrap-datepicker.js"></script>
  </head>
  <body>
    <div id="wrapperMain">
      <aside>
        <section id="blockLabel">
          <div class="label-list"><a class="label-item" href="">課程</a>
            <div class="label-item active" href="">文章</div>
          </div>
        </section>
        <section id="blockSimple">
          <div class="simple-underline">
            <ul id="simpleList">
              <li class="simple-list-item">
                <div class="simple-title active">正規教室文章</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">收錄文章</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">閱讀紀錄</div>
                <div class="simple-border"></div>
              </li>
              <li class="simple-list-item">
                <div class="simple-title">自訂搜尋</div>
                <div class="simple-border"></div>
              </li>
            </ul>
            <ul id="simpleContent">
              <li class="simple-content-item">
                <div class="sub-title">課程等級</div>
                <ul class="input-list">
                  <li class="input-item">
                    <input type="checkbox" id="level1" checked="checked"/>
                    <label for="level1">A1</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="level2" checked="checked"/>
                    <label for="level2">A2</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="level3" checked="checked"/>
                    <label for="level3">B1</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="level4" checked="checked"/>
                    <label for="level4">B2</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="level5" checked="checked"/>
                    <label for="level5">C1</label>
                  </li>
                </ul>
                <div class="sub-title">頻道分類 (複選)</div>
                <ul class="input-list is-class">
                  <li class="input-item">
                    <input type="checkbox" id="class1" checked="checked"/>
                    <label for="class1">政治國際</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class2" checked="checked"/>
                    <label for="class2">產業科技</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class3" checked="checked"/>
                    <label for="class3">財經社會</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class4" checked="checked"/>
                    <label for="class4">淺談職場</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class5" checked="checked"/>
                    <label for="class5">生活消費</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class6" checked="checked"/>
                    <label for="class6">文化藝術</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class7" checked="checked"/>
                    <label for="class7">旅遊娛樂</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class8" checked="checked"/>
                    <label for="class8">運動健康</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class9" checked="checked"/>
                    <label for="class9">日常對話</label>
                  </li>
                  <li class="input-item">
                    <input type="checkbox" id="class10" checked="checked"/>
                    <label for="class10">寫作賞析</label>
                  </li>
                </ul>
              </li>
              <li class="simple-content-item"></li>
              <li class="simple-content-item"></li>
              <li class="simple-content-item">
                <ul id="customContent">
                  <li class="custom-item">
                    <div class="borderbox">
                      <input class="custom-text" type="text" placeholder="輸入關鍵字..."/>
                    </div>
                  </li>
                  <li class="custom-item">
                    <div class="tmp-select ps5_1">
                      <div class="tmp-select-title"><span>課程等級</span>
                        <div class="icon-arrow"></div>
                      </div>
                      <div class="tmp-select-dropscro">
                        <div class="tmp-select-itembox">
                          <div class="tmp-select-item" data-value="2">A1 初階</div>
                          <div class="tmp-select-item" data-value="2">A2 初中階</div>
                          <div class="tmp-select-item" data-value="2">B1 中階</div>
                          <div class="tmp-select-item" data-value="2">B2 中高階</div>
                          <div class="tmp-select-item" data-value="3">C1 高階</div>
                        </div>
                      </div>
                    </div>
                    <div class="tmp-select ps5_2">
                      <div class="tmp-select-title"> <span>頻道名稱</span>
                        <div class="icon-arrow"></div>
                      </div>
                      <div class="tmp-select-dropscro">
                        <div class="tmp-select-itembox">
                          <div class="tmp-select-item" data-value="1">政治國際</div>
                          <div class="tmp-select-item" data-value="1">產業科技</div>
                          <div class="tmp-select-item" data-value="1">財經社會</div>
                          <div class="tmp-select-item" data-value="1">淺談職場</div>
                          <div class="tmp-select-item" data-value="1">生活消費</div>
                          <div class="tmp-select-item" data-value="1">文化藝術</div>
                          <div class="tmp-select-item" data-value="1">旅遊娛樂</div>
                          <div class="tmp-select-item" data-value="1">運動健康</div>
                          <div class="tmp-select-item" data-value="1">日常對話</div>
                          <div class="tmp-select-item" data-value="1">寫作賞析</div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="custom-item">
                    <div class="borderbox">
                      <div class="icon-calendar"></div>
                      <div class="datepicker date">
                        <input class="form-control" type="text" readonly="readonly"/><span class="input-group-addon"></span>
                      </div><span>~</span>
                      <div class="datepicker date">
                        <input class="form-control" type="text" readonly="readonly"/><span class="input-group-addon"></span>
                      </div>
                    </div>
                  </li>
                  <li class="custom-item">
                    <div class="custom-left">
                      <input class="custom-checkbox" type="checkbox" name="record" id="record"/>
                      <label class="custom-label" for="record">做過測驗</label>
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
            <!-- 文章的分類用色對照 :
            is-c1 政治國際
            is-c2 產業科技
            is-c3 財經社會
            is-c4 淺談職場
            is-c5 生活消費
            is-c6 文化藝術
            is-c7 旅遊娛樂
            is-c8 運動健康
            is-c9 日常對話
            is-c10 寫作賞析
            -->
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-empty">沒有符合此搜尋的結果</li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
            <li class="item is-c3">
              <div class="item-img" style="background-image: url(./images/demo/3.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">政治國際</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/30</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">A2</div>享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <div class="icon-test">精讀
                <div class="icon-check"></div>
              </div>
            </li>
            <li class="item is-c6">
              <div class="item-img" style="background-image: url(./images/demo/2.jpg)"></div>
              <div class="box1">
                <div class="box">
                  <div class="left">
                    <div class="sort">文化藝術</div>
                    <div class="stars">
                      <div class="icon-star"></div>
                      <div class="icon-star-empty"></div>
                      <div class="icon-star-empty"></div>
                    </div>
                  </div>
                  <div class="right">
                    <div class="date">2020/01/29</div>
                  </div>
                </div>
                <div class="box">
                  <div class="title"> 
                    <div class="level">B1</div>享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看享譽全球表演在家看
                  </div>
                </div>
              </div>
              <div class="item-side"></div>
              <!--.icon-test
              |精讀
              .icon-check
              -->
            </li>
          </ul>
        </section>
        <div class="toTop">
          <div class="icon-top"></div>
        </div>
        <div class="loading"><img src="./images/loading.gif"/></div>
      </aside>
      <!--
      <div id="content" class="is-empty">
        <div class="empty">沒有符合此搜尋的結果</div>
        <div class="empty">請於左方重新輸入條件</div>
      </div>
      -->
      <!-- 搜尋「沒有結果」時的介面 ^^^-->
      <!-- 搜尋「有結果」時的介面 vvv-->
      <div id="content">
        <div class="content-inner">
          <div class="content-main">
            <div class="c-top">
              <div class="c-sort">政治國際</div>
              <div class="c-time">2020/01/30</div>
              <div class="c-box">
                <div class="c-left">
                  <div class="c-ch"><span class="c-level">B1</span>美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典美國文學經典</div>
                  <div class="c-en">Classic American Literature - "The Monkey's Paw"	</div>
                </div>
                <div class="c-right" style="background-image: url(./images/demo/3.jpg)"></div>
              </div>
            </div>
            <div class="c-middle">
              <div class="lanbox">
                <div class="lanbox-art">
                  <div class="en">A Chinese Finnish City Councilor, Jenni Chen-Ye, has been led from the Vantaa City Council group of the moderate-right National Coalition Party (NCP) after her ties to the Chinese communist party were discovered.</div>
                  <div class="ch">芬蘭中間偏右國家聯合黨（NCP）萬塔市（Vantaa）市議會黨團最近將華裔市議員陳燕妮逐出黨團，因為她與中國共產黨關係密切。</div>
                  <div class="en">“The decision was unanimous,” NCP Vantaa council group chair Sakari Rokkana said, stating that Chen-Ye failed to disclose her role in a CCP-backed organization.</div>
                  <div class="ch">萬塔市議會國家聯合黨黨團總召表示，黨團無異議通過該決議，並指出陳燕妮之前並未透露自己在中共支持的組織中扮演的角色。</div>
                  <div class="en">Chen-Ye became a member of the Vantaa City Council in 2017 while maintaining an role in the Finland Association for Promoting Peaceful Reunification of China (FAPPRC). </div>
                  <div class="ch">陳燕妮於2017年當選萬塔市議會議員，同時活躍於芬蘭中國和平統一促進會（FAPPRC），</div>
                  <div class="en">The organization promotes  the unification of China and Taiwan in Finland.</div>
                  <div class="ch">該組織的宗旨是在芬蘭促進中國和台灣統一，</div>
                  <div class="en">A Chinese Finnish City Councilor, Jenni Chen-Ye, has been led from the Vantaa City Council group of the moderate-right National Coalition Party (NCP) after her ties to the Chinese communist party were discovered.</div>
                  <div class="ch">芬蘭中間偏右國家聯合黨（NCP）萬塔市（Vantaa）市議會黨團最近將華裔市議員陳燕妮逐出黨團，因為她與中國共產黨關係密切。</div>
                  <div class="en">“The decision was unanimous,” NCP Vantaa council group chair Sakari Rokkana said, stating that Chen-Ye failed to disclose her role in a CCP-backed organization.</div>
                  <div class="en">A Chinese Finnish City Councilor, Jenni Chen-Ye, has been led from the Vantaa City Council group of the moderate-right National Coalition Party (NCP) after her ties to the Chinese communist party were discovered.</div>
                  <div class="ch">芬蘭中間偏右國家聯合黨（NCP）萬塔市（Vantaa）市議會黨團最近將華裔市議員陳燕妮逐出黨團，因為她與中國共產黨關係密切。</div>
                  <div class="en">“The decision was unanimous,” NCP Vantaa council group chair Sakari Rokkana said, stating that Chen-Ye failed to disclose her role in a CCP-backed organization.</div>
                  <div class="ch">萬塔市議會國家聯合黨黨團總召表示，黨團無異議通過該決議，並指出陳燕妮之前並未透露自己在中共支持的組織中扮演的角色。</div>
                  <div class="en">Chen-Ye became a member of the Vantaa City Council in 2017 while maintaining an role in the Finland Association for Promoting Peaceful Reunification of China (FAPPRC). </div>
                  <div class="ch">陳燕妮於2017年當選萬塔市議會議員，同時活躍於芬蘭中國和平統一促進會（FAPPRC），</div>
                  <div class="en">The organization promotes  the unification of China and Taiwan in Finland.</div>
                  <div class="ch">該組織的宗旨是在芬蘭促進中國和台灣統一，</div>
                  <div class="en">A Chinese Finnish City Councilor, Jenni Chen-Ye, has been led from the Vantaa City Council group of the moderate-right National Coalition Party (NCP) after her ties to the Chinese communist party were discovered.</div>
                  <div class="ch">芬蘭中間偏右國家聯合黨（NCP）萬塔市（Vantaa）市議會黨團最近將華裔市議員陳燕妮逐出黨團，因為她與中國共產黨關係密切。</div>
                  <div class="en">“The decision was unanimous,” NCP Vantaa council group chair Sakari Rokkana said, stating that Chen-Ye failed to disclose her role in a CCP-backed organization.</div>
                </div>
                <div class="lanbox-btn">
                  <div class="lanbox-icon"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="btn-cta">進入學習</div>
        </div>
      </div>
    </div>
  </body>
</html>