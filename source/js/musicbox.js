var PG = 1;
var Rcount = 0;
var SearchStr = '';
var Searchtimeout = '';
var clickCheck = ''

$(function() {

	// SEARCH INPUT v
	$('.simple-list-item').click(function() {
		const max = $('.simple-list-item').length - 1;
		$('.simple-title').removeClass('active');
		$(this).find('.simple-title').addClass('active');
		//
		const i = $(this).index();
		let marginTop = '';
		if (i == max) {
			$('.submit-btn').show();
			marginTop = '-40px';
		} else {
			$('.submit-btn').hide();
		};

		(i == 0) ? ResetDefault('Promote'): null;
		(i == 1) ? ResetDefault('Collect'): null;
		(i == 2) ? ResetDefault('Recording'): null;
		(i == 3) ? $('.submit-btn.is-type1').attr('data-value', 'Keyword'): null;

		$('.submit').css({
			marginTop
		});
		$('.simple-content-item').hide();
		$('.simple-content-item').eq(i).show();
	});

	// Click Search Button
	$('.submit-btn.is-type1').on('click', function() {
		ResetDefault($('.submit-btn.is-type1').attr('data-value'))
	})

	//預設第一個按鈕
	$('.simple-list-item').eq(0).trigger('click');

	// 左列的 KEYBOARD 選上/下一個 v
	$('#blockList').on('mouseenter click', function() {
		$('#forKeydown').focus();
	});

	let itemIndex;
	$('#forKeydown').on('keydown', function(e) {
		const max = $('.item').length - 1;
		const wh = $(window).height();
		let st = $('#blockLabel').outerHeight(true) + $('#blockSimple').outerHeight(true) - 16;

		itemIndex == undefined ? itemIndex = -1 : null;

		if (e.keyCode == 38) { // up
			itemIndex <= 0 ? itemIndex = 0 : itemIndex -= 1;

			// AUTO SCROLL v
			const top = $('.item').eq(itemIndex).offset().top;
			if (top < 0) {
				for (i = 0; i < itemIndex; i++) {
					st = st + $('.item').eq(i).outerHeight(true);
				}
				$('aside').animate({
					'scrollTop': st - 7
				}, 500);
			};

		} else if (e.keyCode == 40) { // down
			itemIndex >= max ? itemIndex = max : itemIndex += 1;

			// AUTO SCROLL v
			const height = $('.item').eq(itemIndex).outerHeight(true);
			const top = $('.item').eq(itemIndex).offset().top;
			if (top + height >= wh) {
				for (i = 0; i < itemIndex; i++) {
					st = st + $('.item').eq(i).outerHeight(true);
				}
				$('aside').animate({
					'scrollTop': st - 7
				}, 1000);
			}
		}

		$('.item').removeClass('active').eq(itemIndex).addClass('active');
		$('.item').eq(itemIndex).trigger('click')
	})

	$('body').on('click', '.item', function() {
		// 此 item 加 class 'active' (框加粗) v
		itemIndex = $(this).index();
		$('.item').removeClass('active');
		$(this).addClass('active');

		// 右側同步改 skin v
		const className = $(this).attr('class').replace('item ', '');
		$('#content').attr('class', className);

		// 右側同步改資訊欄的高度 v
		const all = $('.content-main').height();
		const top = $('.c-top').outerHeight(true);
		const height = all - top;
		$('.lanbox-art').css({
			height
		});
	});

	//// 接上方 click 事件，以 click 預設右側的 skin v
	//$('body').find('.item').eq(0).click();

	// GO TO TOP
	$('.toTop').click(function() {
		$('aside').animate({
			scrollTop: 0
		});
	});

	$('.toTop').hide();

	$('aside').on('scroll', function() {
		const start = 35 + $('#blockSimple').outerHeight(true);
		const st = $(this).scrollTop();
		const scrollHeight = $('#list').height();
		const windowHeight = $(this).height();

		if (st >= start) {
			$('.toTop').fadeIn();
			$('.is-result').addClass('is-fixed');
		} else {
			$('.toTop').fadeOut();
			$('.is-result').removeClass('is-fixed');
		};

		//console.log(st+'+'+windowHeight+'='+(scrollHeight+35))
		if (st + windowHeight >= (scrollHeight + 35)) {

			if (Searchtimeout == '') {
				toSearch()
				Searchtimeout = 1
			}
		}
	})

	$('.lanbox-icon').click(function() {
		$(this).toggleClass('active');
	});

	$('.lanbox-icon').click(function() {
		$(this).toggleClass('active');

		if ($(this).hasClass('active')) {

			$('#art_player')[0].play();
		} else {
			$('#art_player')[0].pause();
		}
	});

	new PerfectScrollbar('aside');

	// ====================================
	// == 清空自訂搜尋 v
	// ====================================

	const customText2 = $('.ps5_2 .tmp-select-title span').text();
	$('.is-type2').click(function() {
		$('#customContent .custom-text').val('');
		$('.form-control').val('YYYY / MM / DD');
		$('.ps5_2 .tmp-select-title span').text(customText2).removeAttr('data-value');
		const $check = $('.custom-checkbox');
		$check.is(':checked') ? $check.click() : null;
	});
});

const ResetDefault = target => {

	PG = 1
	Rcount = 0
	SearchStr = target
	location.hash = SearchStr
	toSearch()
}

var keywordStr = ''
var kclf = ''
var Krecord = ''

const toSearch = () => {
	//console.log('不僅止是 label, sbumit 更精準 clicked');//ememo90812
	//console.log('search star is ' + SearchStr);//ememo90812
	$('.loading').fadeIn();

	var Surl = ''
	var Sdata = ''

	keywordStr = ''
	kclf = ''
	Krecord = ''

	keywordStr = $('#keyword').val()
	kclf = $('.ps5_2 > .tmp-select-title > span').attr('data-value')
	$('input:checkbox:checked[name="record"]').each(function() {
		Krecord = `${this.value}`
	});

	var toDo = SearchStr

	switch (SearchStr) {
		case 'Collect':
		case 'Recording':
			Sdata = {
				toDo: toDo,
				PG: PG
			}
			Surl = '../musicbox/data/Search-Record.asp'
			break;
		case 'Keyword':
			Sdata = {
				toDo,
				PG,
				keywordStr,
				kclf,
				Krecord
			}
			Surl = '../musicbox/data/Search-Keyword.asp'
			//console.log('%cSdata is '+Sdata+', toDo頁籤 is '+toDo+', PG is '+PG+', keywordStr關鍵字 is '+keywordStr+', kclf下拉選定 is '+kclf+', Krecord勾歡唱 is '+Krecord, 'color:greenyellow');//ememo90812
			break;
		case 'Promote':
			Sdata = {
				toDo,
				PG,
				keywordStr,
				kclf,
				Krecord
			}
			Surl = '../musicbox/data/Search-Keyword.asp'
			break;
	}

	setTimeout(function() {

		$.ajax({
			type: 'POST',
			url: Surl,
			data: Sdata,
			cache: false,
			dateType: 'json',
			success: function(data) {

				//alert('got');
				//alert(JSON.stringify(data));

				var Str = ''
				var Classify_css = ""
				var firstID = ""

				Searchtimeout = ''

				if (PG == 1)
					$('.block-title > span').html(`搜尋結果：<b>(以下結果取得自 ${data.info.SearchTime})</b>`)

				if (PG == 1 && data.data.length == 0) {

					Str = `<li class="item is-empty">沒有符合此搜尋的結果</li>`
					$('#list').html(Str)
					Rcount = 0
					ContentEmpty()
				}

				$.each(data.data, function(i, item) {

					if (item.song_id == '0') {
						Str = `<li class="item is-empty">沒有符合此搜尋的結果</li>`
						if (PG == 1 && i == 0) {
							$('#list').html(Str)
						}
						Rcount = 0
						ContentEmpty(item)
					} else {

						switch (item.c_classify) {
							case 'Pop流行樂':
								Classify_css = "is-c1";
								break;
							case 'EDM電音':
								Classify_css = "is-c2";
								break;
							case 'Hip-hop嘻哈樂':
								Classify_css = "is-c3";
								break;
							case 'Rap饒舌樂':
								Classify_css = "is-c4";
								break;
							case 'R&B節奏藍調':
								Classify_css = "is-c5";
								break;
							case 'Rock搖滾音樂':
								Classify_css = "is-c6";
								break;
							case 'Jazz爵士樂':
								Classify_css = "is-c7";
								break;
							case 'Folk/Country民歌/鄉村':
								Classify_css = "is-c8";
								break;
							default:
								Classify_css = "is-c1";
						}

						Str = `<li class="item ${Classify_css}" id="${item.song_id}" >
                                <div class="item-img" style="background-image: url(https://img.youtube.com/vi/${item.imgfilename}/1.jpg)"></div>
								<div class="box1">
								    <div class="box">
									    <div class="left">
                                            <div class="sort">${item.c_classify}</div>
                                        </div>
                                        <div class="right">
                                            <div class="date">${item.publish_date}</div>
                                        </div>									
								    </div>
                                    <div class="box">
                                        <div class="title">${item.ch_subject}</div>
                                    </div>
                                    <div class="box">
                                        <div class="left">
                                            <div class="sort">${item.singer}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-side"></div>
                                ${item.featured == 1 ? '<div class="icon-test">歡唱 <div class="icon-check"></div>' : ''}
							</li>`

						Rcount++

						if (PG == 1 && i == 0) {

							$('#list').html(Str)
							firstID = item.song_id

						} else {
							$('#list').append(Str)
						}

						$('#' + item.song_id).on('click', function() {
							Content(item)
						})

						$('.title-num > span').html(`共${Rcount}筆`)
					}
				})

				if (firstID != "") {
					$('#' + firstID).trigger('click')
				}

				PG++

				$('.loading').fadeOut();

				$('.box2-item').on('click', function() {

					if ($(this).attr("data-value") != '') {
						if (clickCheck != $(this).attr("data-value")) {
							window.open($(this).attr("data-value"))
							clickCheck = $(this).attr("data-value")
						}
					}
				})
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {
				//alert(XMLHttpRequest.responseText);
				alert("error:" + errorThrown)
			}

		});
	}, 10)
}

const ContentEmpty = () => {
	$('#content').attr('class', 'is-empty')
	$('#music_palyer').hide()
	$('#content').append(`<div class="content-inner"><div class="empty">沒有符合此搜尋的結果</div><div class="empty">請於左方重新輸入條件</div></div>`)
	//$('.content-inner > .empty').remove()
	//$('.content-inner').append(`<div class="empty">沒有符合此搜尋的結果</div><div class="empty">請於左方重新輸入條件</div>`)
}

const Content = contentJson => {

	$('#content').removeClass('is-empty')
	$('.content-inner').remove()
	$('#music_palyer').attr('src', 'https://funday.asia/NewMylessonmobile/MusicBox/musicBox.asp?musicNo=' + contentJson.song_id + '&rwd')
	$('#music_palyer').show()

}