$(function(){
	// SEARCH INPUT v
	$('.simple-list-item').click(function(){
		const max = $('.simple-list-item').length - 1;
		$('.simple-title').removeClass('active');
		$(this).find('.simple-title').addClass('active');
		//
		const i = $(this).index();
		let marginTop = '';
		if( i == max ){
			$('.submit-btn').show();
			marginTop = '-40px';
		}else{
			$('.submit-btn').hide();
		};
		$('.submit').css({marginTop});
		$('.simple-content-item').hide();
		$('.simple-content-item').eq(i).show();
	});

	// CALENDAR CUSTOMER v
	$(function () {
		$('.datepicker').datepicker({ 
			autoclose: true, 
			todayHighlight: true,
			language: 'zh-CN',
			format: 'yyyy / mm / dd'
		}).datepicker('update', new Date());

		$('.form-control').val('YYYY / MM / DD');
	});

	// 左列的 KEYBOARD 選上/下一個 v
	$('#blockList').on('mouseenter click', function(){
		$('#forKeydown').focus();
	});

	let itemIndex;
	$('#forKeydown').on('keydown', function(e){
		const max = $('.item').length - 1;
		const wh = $(window).height();
		let st = $('#blockLabel').outerHeight(true) + $('#blockSimple').outerHeight(true) - 16;

		itemIndex == undefined ? itemIndex = -1 : null;

		if( e.keyCode == 38 ){ // up
			itemIndex <= 0 ? itemIndex =0 : itemIndex -= 1;

			// AUTO SCROLL v
			const top = $('.item').eq(itemIndex).offset().top;
			if( top < 0 ){
				for( i = 0; i<itemIndex; i++ ){
					st = st + $('.item').eq(i).outerHeight(true);
				}
				$('aside').animate({'scrollTop': st - 15}, 500);
			};

		}else if( e.keyCode == 40){ // down
			itemIndex >= max ? itemIndex = max : itemIndex += 1;

			// AUTO SCROLL v
			const height = $('.item').eq(itemIndex).outerHeight(true);
			const top = $('.item').eq(itemIndex).offset().top;
			if( top + height >= wh ){
				for( i = 0; i<itemIndex; i++ ){
					st = st + $('.item').eq(i).outerHeight(true);
				}
				$('aside').animate({'scrollTop': st - 15}, 1000);
			}
		}

		$('.item').removeClass('active').eq(itemIndex).addClass('active');
	})


	$('body').on('click', '.item', function(){
		// 此 item 加 class 'active' (框加粗) v
		itemIndex = $(this).index();
		$('.item').removeClass('active');
		$(this).addClass('active');

		// 右側同步改 skin v
		const className = $(this).attr('class').replace( 'item ', '' );
		$('#content').attr('class', className);

		// 右側同步改資訊欄的高度 v
		const all = $('.content-main').height();
		const top = $('.c-top').outerHeight(true);
		const height = all - top;
		$('.lanbox-art').css({height});
	});

	// 接上方 click 事件，以 click 預設右側的 skin v
	$('body').find('.item').eq(0).click();


	// GO TO TOP
	$('.toTop').click(function(){
		$('aside').animate({scrollTop: 0});
	});

	$('.toTop').hide();
	
	$('aside').on('scroll', function(){
		const start = 35 + $('#blockSimple').outerHeight(true);
		const st = $(this).scrollTop();
		if( st >= start ){
			$('.toTop').fadeIn();
			$('.is-result').addClass('is-fixed');
		}else{
			$('.toTop').fadeOut();
			$('.is-result').removeClass('is-fixed');
		};
	});

	$('.lanbox-icon').click(function(){
		$(this).toggleClass('active');
	});

	new PerfectScrollbar('aside');

	// ====================================
	// == 清空自訂搜尋 v
	// ====================================
	// $('.simple-list-item').eq(3).click();

	const customText2 = $('.ps5_2 .tmp-select-title span').text();
	$('.is-type2').click(function(){
		$('#customContent .custom-text').val('');
		$('.form-control').val('YYYY / MM / DD');
		$('.ps5_2 .tmp-select-title span').text(customText2).removeAttr('data-value');
		const $check = $('.custom-checkbox');
		$check.is(':checked') ? $check.click() : null;
	});
});