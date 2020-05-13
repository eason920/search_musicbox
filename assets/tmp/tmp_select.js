$(function(){
	const $tmpSelect = $('.tmp-select');
	const $tmpTitle = $('.tmp-select-title');
	const $tmpDroper = $('.tmp-select-dropscro');
	const height = $tmpDroper.data('dheight');

	// Droper 的高，需配合 css 一開始 opaicty 0
	$tmpDroper.css({height});
	setTimeout(function(){
		$tmpDroper.slideUp(0);
	});
	
	// Droper 與 mouse 的互動：展開收合
	

	$tmpSelect.click(function(){
		$(this).css('z-index', '1');
		$(this).find($tmpDroper).stop(true, false).slideDown(200).css({opacity: 1});
		// $(this).find($tmpDroper).scrollTop(1);
		$(this).find($tmpTitle).addClass('is-hover');
	});

	// $tmpSelect.find('.tmp-select-dropscro').mouseleave(function(){
		

	// });

	// Droper 內 item 在點擊後，Droper 收合
	$('.tmp-select-itembox').on('click', '.tmp-select-item', function(){
		let text = $(this).text();
		const parent = $(this).parent().parent().siblings('.tmp-select-title').find('span');
		// v main title text
		parent.text(text);
		$(this).parent().parent().slideUp(200);

		//
		const $this = $(this).parent().parent();
		setTimeout(function(){
			$this.removeAttr('style');
		}, 200);
		$(this).find($tmpDroper).slideUp(200);
		$(this).find($tmpTitle).removeClass('is-hover');
	});

	// $('aside').click(function(){
	// 	const $this = $tmpSelect;
	// 	setTimeout(function(){
	// 		$this.removeAttr('style');
	// 	}, 200);
	// 	$(this).find($tmpDroper).slideUp(200);
	// 	$(this).find($tmpTitle).removeClass('is-hover');
	// });
});