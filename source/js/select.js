$(function(){
	const $tmpSelect = $('.tmp-select');
	const $tmpTitle = $('.tmp-select-title');
	const $tmpDroper = $('.tmp-select-dropscro');

	// Droper 的高，需配合 css 一開始 opaicty 0
	// $tmpDroper.css({height});
	setTimeout(function(){
		$tmpDroper.slideUp(0);
	});
	
	// Droper 與 mouse 的互動：展開收合
	let zIdx = '3'
	$tmpSelect.on('click', function(){
		$(this).css('z-index', zIdx);
		zIdx ++;
		$(this).find($tmpDroper).stop(true, false).slideDown(200).css({opacity: 1});
		$(this).find($tmpTitle).addClass('is-hover');
	});

	$tmpSelect.on('mouseleave', function(e){
		const $this = $(this);
		setTimeout(function(){
			$this.removeAttr('style');
		}, 200);
		$(this).find($tmpDroper).slideUp(200);
		$(this).find($tmpTitle).removeClass('is-hover');
	})

	// Droper 內 item 在點擊後，Droper 收合
	$('.tmp-select-itembox').on('click', '.tmp-select-item', function(){
		let text = $(this).text();
		const parent = $(this).parent().parent().siblings('.tmp-select-title').find('span');
		// v main title text
		parent.text(text);		
	});
});