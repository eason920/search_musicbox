<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<%
response.Buffer = true   
session.CodePage = 65001   
response.Charset = "utf-8"  


if session("Learning_guided") <> "" then
	if Mid(session("Learning_guided"),8,1) = "0" then 
		Learning_guided = session("Learning_guided")
		'tmp = session("Learning_guided")
		session("Learning_guided") = Mid(session("Learning_guided"),1,7)+"1"+Mid(session("Learning_guided"),9,1) 
	end if
end if

musicNo=request("musicNo")

%>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width,height=device-height,minimum-scale=1,maximum-scale=1"/>
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Lora:700" rel="stylesheet">
        <script type="text/javascript" language="javascript" src="../app/app.js"></script>
    <script>
	 AndroidBackP='{"type":"9","url":"https://funday.asia/NewMylessonmobile/Musicbox/list.asp"}';
	 AndroidBack(AndroidBackP);
	 

    </script> 
	<link rel="stylesheet" href="./css/mediaelementplayer.min.css" />
	
<style>
.fontTc{
	font-family:PingFangTC-Regular,'Microsoft JhengHei',sans-serif;
}
.fontEn{
	font-family: 'Big Caslon', 'Book Antiqua', 'Palatino Linotype', Georgia, serif;
}
.animateTitle {
    animation-duration: 3s; 
    animation-delay: 0s;
    animation-name: rotateX;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}
@-webkit-keyframes rotateX {
    0%{
       transform: rotateX(90deg);
       z-index:1;
    }
  
    100% {
      transform: rotateX(0deg);
      z-index:0;
      display:none;
    }
}
.displayNone{
	display:none;
}
.displayBlock{
	display:block;
}

.animate-showModeTxt{
    position:relative;-webkit-animation:animateShow 2s;animation:animateShow 2s
}

.animate-hide{
	opacity:0;
    position:relative;-webkit-animation:animateHide 1s;animation:animateHide 1s
}
@-webkit-keyframes animateHide{from{opacity:1;display:block;} to{opacity:0;display:none;}}
@keyframes animateHide{from{opacity:1;display:block;} to{opacity:0;display:none;}}

.animate-show{
	opacity:1;
	display:block;
    position:relative;-webkit-animation:animateShow 1s;animation:animateShow 1s
}
@-webkit-keyframes animateShow{from{opacity:0} to{opacity:1}}
@keyframes animateShow{from{opacity:0} to{opacity:1}}

.animate-contentShow{
	opacity:1;
	display:block;
    position:relative;-webkit-animation:animateContentShow 1s;animation:animateContentShow 1s
}
@-webkit-keyframes animateContentShow{from{height:0;opacity:0} to{height:100%;opacity:1}}
@keyframes animateContentShow{from{height:0;opacity:0} to{height:100%;opacity:1}}


.ui-page{
	overflow-y: auto;
	height:100%;
	-webkit-overflow-scrolling: touch;
}

::-webkit-scrollbar {
    width: 2px;
    background-color: #232733;
}

::-webkit-scrollbar-thumb {
    background-color: #232733;
    border-radius: 1px;
}

::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 3px rgba(0,0,0,0.3);
    background-color: #232733;
    border-radius: 1px;
}
</style>

</head>


<body style="margin: 0;background-color:#222222" >
<div data-role="page"  style="background-color:#222222; overflow-y: auto;height:100%;-webkit-overflow-scrolling: touch;" >
	<div id="all"  style="text-shadow: none;position:relative;margin: auto;min-width:300px;max-width:768px;background-color: #222222;font-size: 10px;">
		<header id="header"  style="z-index: 1;position:fixed;width:100%;margin-bottom: 20px;min-width:300px;max-width:768px;height:36px;top:0;background-color:#f42d54;box-shadow: 0 0 1px 0 rgba(0, 0, 0, 0.3);">
		<div style="position:relative;left:6.25%;width:87.5%;height:36px;">
			<div id="backContent1" onclick="history.back()" style="position:relative;float:left;width: 12.5%;height:36px">
				<svg style="position: absolute;top: 10px;left: 0;" width="9px" height="14px" viewBox="0 0 9 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g  stroke="none" stroke-width="1" fill="blue" fill-rule="evenodd" stroke-linecap="square">
						<g  transform="translate(-19.000000, -11.000000)"  stroke="#ffffff" stroke-width="1.5">
							<g id="Top">
								<g id="back" fill="blue"  transform="translate(20.000000, 12.000000)">
									<path d="M5.86399104,0 L0,5.83288076" id="Line"></path>
									<path d="M6.06431479,5.84 L0,11.4658395" id="Line-Copy-5" transform="translate(3.032157, 8.652920) scale(-1, 1) translate(-3.032157, -8.652920) "></path>
								</g>
							</g>
						</g>
					</g>
				</svg>
			</div>
			<div id="title" data-value="0" style="top: 10px;width:80%;position:absolute;height: 26px;margin:0 auto;left:0;right:0;color: #ffffff;font-size:14px;text-align: center;"></div>
			<div class="displayNone" style="position:relative;float:right;width:15%;height:36px">
				<svg style="position: absolute;top: 10px;right: 0;" width="13px" height="14px" viewBox="0 0 13 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g  stroke="none" stroke-width="1"  fill-rule="evenodd" opacity="1">
						<g transform="translate(-287.000000, -11.000000)" fill="#ffffff">
							<g id="Top">
								<g id="Material/Icons-black/share" transform="translate(281.000000, 6.000000)">
									<path d="M15.128,15.436747 L10.137,12.5200803 C10.172,12.3584337 10.2,12.1967871 10.2,12.0281124 C10.2,11.8594378 10.172,11.6977912 10.137,11.5361446 L15.072,8.64759036 C15.45,8.99899598 15.947,9.21686747 16.5,9.21686747 C17.662,9.21686747 18.6,8.2751004 18.6,7.10843373 C18.6,5.94176707 17.662,5 16.5,5 C15.338,5 14.4,5.94176707 14.4,7.10843373 C14.4,7.27710843 14.428,7.43875502 14.463,7.60040161 L9.528,10.4889558 C9.15,10.1375502 8.653,9.91967871 8.1,9.91967871 C6.938,9.91967871 6,10.8614458 6,12.0281124 C6,13.1947791 6.938,14.1365462 8.1,14.1365462 C8.653,14.1365462 9.15,13.9186747 9.528,13.5672691 L14.512,16.4909639 C14.477,16.6385542 14.456,16.7931727 14.456,16.9477912 C14.456,18.0793173 15.373,19 16.5,19 C17.627,19 18.544,18.0793173 18.544,16.9477912 C18.544,15.8162651 17.627,14.8955823 16.5,14.8955823 C15.968,14.8955823 15.492,15.1064257 15.128,15.436747 Z" id="Shape"></path>
								</g>
							</g>
						</g>
					</g>
				</svg>
			</div>	
			<!--<div style="position:relative;margin-top:4px;width:70px;height:45px;float:right;right: -10px;"><iframe id="Flipswitch" name="Flipswitch" frameborder="0" width="100%" height="100%" src="./Flipswitch.asp?mode=1" scrolling="no" ></iframe></div><!-->	
			<input type="hidden" name="PlayMode" id="PlayMode" value="1" />			
		</div>
		</header>
		
		<div id="content2">
			<div class="ec2" style="position:relative;height:36px"></div>
			<!--<div style="position:relative;background-color:black;padding:5px;"></div>-->
			<video id="player1"   style="width: 87.5%; height: 100%;position:relative;left:6.25%" preload="none">
				<source type="video/youtube" />
			</video>
			<!--<div style="position:relative;background-color:black;padding:5px;"></div>-->
			<span id="player1-mode"></span>
			<div id="lrcContent">
				<!--<div style="position:relative;left:12.5%;width:75%;background-color:rgb(34, 34, 34);margin-top:55px">
					<div style="font-family: 'Big Caslon', 'Book Antiqua', 'Palatino Linotype', Georgia, serif;position:relative;font-size:15px;color:#ffffff;text-align:center">Boys only want love if it's torture</div>
					<div style="font-family: PingFangTC-Regular,'Microsoft JhengHei', sans-serif;position:relative;font-size:13px;color:#ffffff;text-align:center;margin-top:10px">男孩只想要讓人痛苦不已的愛情</div>
				</div>-->
			</div>
			<div class="ec6" style="position:relative;height:200px"></div>
		</div>
		<footer id="footer2"  style="z-index: 1;font-family: 'Big Caslon', 'Book Antiqua', 'Palatino Linotype', Georgia, serif;text-shadow: none;position:fixed;width:100%;min-width:300px;max-width:768px;height:160px;bottom:0;background-color:#222222;">
			<div id="modeTxtX" style="position: absolute;color: #ffffff;top: -59px;background: linear-gradient(to bottom, #fc9c57 0%,#ff6c02 100%);letter-spacing: 1px;font-family: PingFangTC-Regular, Microsoft JhengHei, sans-serif;text-indent: 13px;padding: 3px 4px 5px 11px;font-size: 16px;border-radius: 20px;margin: 0 auto;text-align: center;width: 100px;left: 0;right: 0;" class="animate-showModeTxt"><div class="ec5" style="background: url(img/icnRecordWh@3x.png);width: 15px;height: 20px;background-repeat: no-repeat;background-position: bottom;background-size: 15px 18px;position: absolute;left: 13px;"></div>開始歡唱</div>
			<div id="modeTxt" style="opacity: 0;position: absolute;color: #ffffff;top: -25px;background-color: rgba(32,108,196);padding: 3px 20px 5px;font-size: 16px;border-radius: 20px;margin: 0 auto;text-align: center;left: 50%;letter-spacing: 1px;transform: translateX(-50%);">隨機撥放開啟</div>
			<div class="ec1" style="position:absolute;left:6.25%;width:87.5%;height:40px;top:10px;">
				<div id="repeat" data-mode="1" style="position: relative;float:left;padding: 12px 6.25%;width: 12%;height: 16px;background-image:url('./img/repeat_no.png');background-position: center;background-repeat:no-repeat;background-size:20px 16px;"></div>
				<div id="shuffle" data-mode="0" style="position:relative;float: right;padding: 12px 6.25%;width: 12%;height:16px;background-image:url('./img/sequence.png');background-position: center;background-repeat:no-repeat;background-size:19px 14px;"></div>
				<div id="reSentence" data-value="0" style="font-family:PingFangTC-Regular,'Microsoft JhengHei',sans-serif;opacity:0.2;position:relative;margin:0 auto;padding: 12px 6.25%;width: 12%;height: 16px;background-size: 20px 21px;background-image:url('./img/player_reSentence.png');background-position:center;background-repeat:no-repeat;"></div>
			</div>
			<div class="ec4" style="position:absolute;left:16%;width:70%;top:67px">
				<div id="playProgressBottom" style="position:absolute;width:100%;height: 20px;left:0%;margin:0 auto;border-radius: 2.5px;background-color: #222222;"><div style="position:absolute;width: 100%;height:3px;top:0;background-color:grey;"></div></div>
				<div id="playProgress" style="position:absolute;width:0%;height:20px;left:0;margin:0 auto;border-radius: 2.5px;background-color:#222222"><div style="position:absolute;width: 100%;height:3px;top:0;background-color:#ffffff;"></div>
					<svg id="playProgressBall"  style="position:absolute;padding:10px;right:-13px;top:-13px" height="10" width="10"><circle cx="5" cy="5" r="5"  fill="#ffffff" /></svg>
				</div>
			</div>
			<div id="playIng" style="position:absolute;left:6.25%;width:6%;top:60px;text-align:left;color:#ffffff">0:00</div>
			<div id="playEnd" style="position:absolute;right:6.25%;width:6%;top:60px;text-align:right;color:#ffffff">4:30</div>
			<div class="ec3" style="position:absolute;left:6.25%;width:87.5%;height:50px;top:90px;">
				<div id="preVideo" style="position:relative;float:left;padding: 15px 6.25%;width:16px;height:20px;background-image:url('./img/preArticle.png');background-position: center;background-repeat:no-repeat;background-size:16px 20px"></div>
				<div id="preSentence" style="position:relative;float:left;padding: 15px 6.25%;width:21px;height:20px;background-image:url('./img/preSentence.png');background-position: center;background-repeat:no-repeat;background-size:21px 20px"></div>
				<div id="player" style="position: absolute;margin: 0 auto;padding: 0 6.25%;left: 0;right: 0;width:50px;height:50px;background-image:url('./img/player_play.png');background-position: center;background-repeat:no-repeat;background-size:50px 50px"></div>
				<div id="nextVideo" style="position:relative;float:right;padding: 15px 6.25%;width:16px;height:20px;background-image:url('./img/nextArticle.png');background-position: center;background-repeat:no-repeat;background-size:16px 20px"></div>
				<div id="nextSentence" style="position:relative;float:right;padding: 15px 6.25%;width:21px;height:20px;background-image:url('./img/nextSentence.png');background-position: center;background-repeat:no-repeat;background-size:21px 20px"></div>
			</div>
		</footer>
	</div>	
</div>		
<script src="./js/mediaelement-and-player.js"></script>
<script>

// ====================================
// == for PC 「搜尋音樂」介面 v
// ====================================
const ispc = /ispc=1/i.test(location.href);
if( ispc ){
	const cssRef = document.createElement("link");
	const cssName = "./css/pc_normal.css";
	cssRef.setAttribute("rel", "stylesheet");
	cssRef.setAttribute("type", "text/css");
	cssRef.setAttribute("href", cssName);
	document.getElementsByTagName("head")[0].appendChild(cssRef);

	setTimeout(function(){
		const cut = $('.ec2').height() + $('#mep_0').height() + $('#footer2').height();
		const height = $(window).height() - cut;
		$('#lrcContent').css({height});
	});
};

// -- 搜尋音樂 END ----------------------------------

var u = navigator.userAgent;
var isAndroid = u.indexOf('Android') > -1 || u.indexOf('Adr') > -1;
if (isAndroid==false){
	$('#reSentence').hide()
}

	var Learning_guided = '<%=Learning_guided%>'

	if ((Learning_guided.length==9)&&(Learning_guided.substring(7,8) == '0')){
		$('body').prepend('<div id="onboardingPage" style="display:none;width: 100%;height: 175vw;"></div>')
		jquery_onboardingPage(6)
	}
	function jquery_onboardingPage(num){
		$.ajax({
		   url: '../../NewMylessonMobile/onboarding/onboarding.asp?pg='+num,
		   type:'GET',
		   dateType:'html',
		   error: function(data){
			   //alert('data  error');
			   },
		   success:function(data){
				$('#onboardingPage').css('display','')
				$('#onboardingPage').append(data)
		   }			   
		});
	}

	function PlayListMode(){
		if($("#PlayMode").val()==0){ //歡唱
			let url = './musicboxK.asp?musicNo=<%=musicNo%>'
			ispc ? url += '&ispc=1': null;
			location.href=url
		}else{ //一般
			location.href='./musicbox.asp?musicNo=<%=musicNo%>'
		}

	}

	$('#modeTxtX').on('click',function(){
		$("#PlayMode").val(0)
		PlayListMode()
	})
	
/*****Event[playProgress]*****/
$('.mejs-controls').css('display','none')

	$(document).on('vmouseup', '#playProgressBottom', function(event){
		ballgo = 0
	})
	
	$(document).on('vmouseup', '#playProgress', function(event){
		ballgo = 0
	})
	
	$(document).on('vmouseup', '#playProgressBall', function(event){
		ballgo = 0
	})
	
	$(document).on('vmousedown', '#playProgressBall', function(event){
		ballgo = 1
	})
	
	$(document).on('tap', '#playProgress', function(event){
		var tmp = ((( event.clientX - $(window).width() * 0.15 ) / ( $(window).width() * 0.7 )).toFixed(2))
		$("#player1")[0].player.setCurrentTime((videoDuration*tmp))
	})
	
	$(document).on('tap', '#playProgressBottom', function(event){
		var tmp = ((( event.clientX - $(window).width() * 0.15 ) / ( $(window).width() * 0.7 )).toFixed(2)) 
		$("#player1")[0].player.setCurrentTime((videoDuration*tmp))
	})
	
	$(document).on('vmousemove', '#playProgress', function(event){
		
		if ((ballgo==1)&&(event.clientX <  ($(window).width()*0.85))){
			
			var tmp = ((( event.clientX - $(window).width() * 0.15 ) / ( $(window).width() * 0.7 )).toFixed(2)) 
			
			$("#player1")[0].player.setCurrentTime((videoDuration*tmp))
			
		}
	})
/*****Event[Repeat & Shuffle]*****/

	$(document).on('tap', '#repeat', function(event){
		if($(this).attr("data-mode")=="0"){
			$(this).attr("data-mode","1")
			$("#modeTxt").text("重複播放全部歌曲")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css("background-image","url('./img/repeat_all.png')")
		}else if($(this).attr("data-mode")=="1"){
			$(this).attr("data-mode","2")
			$("#modeTxt").text("單曲重複")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css("background-image","url('./img/repeat_one.png')")
		}else{
			$(this).attr("data-mode","0")
			$("#modeTxt").text("重複播放關閉")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);	
			$(this).css("background-image","url('./img/repeat_no.png')")
		}
	})

	$(document).on('tap', '#shuffle', function(event){
		if($(this).attr("data-mode")=="0"){
			$(this).attr("data-mode","1")
			$("#modeTxt").text("隨機撥放開啟")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css("background-image","url('./img/shuffle.png')")
			$(this).css('opacity','1')
		}else{		
			$(this).attr("data-mode","0")
			$("#modeTxt").text("隨機撥放關閉")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css("background-image","url('./img/sequence.png')")
			$(this).css('opacity','0.2')
		}

	})

	$(document).on('tap', '#reSentence', function(event){
		if($(this).attr("data-value")=="0"){
			$(this).attr("data-value","1")
			$("#modeTxt").text("單句重複開啟")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css('opacity','1')
		}else{		
			$(this).attr("data-value","0")
			$("#modeTxt").text("單句重複關閉")
			$("#modeTxt").attr("class"," ")
			setTimeout(function(){ $("#modeTxt").toggleClass("animate-showModeTxt")}, 100);
			$(this).css('opacity','0.2')
		}	
	});
	
	$(document).on('tap', '#preVideo', function(event){
		var ArticleShuffle = $("#shuffle").attr("data-mode")
		if (ArticleShuffle==1){
			var shuffleNo = Math.floor((Math.random() * listIndx.length) + 1)-1;
			for (i=0;i<10;++i){
				if (shuffleNo == parseInt(whichStart)){
					shuffleNo = Math.floor((Math.random() * listIndx.length)+ 1)-1;
				}else{
					break;
				}
			}
			var tmp =listIndx[shuffleNo]
			whichStart = shuffleNo
			jquery_lrc(tmp)
			
		}else{
			if ( whichStart==0 ){whichStart=listIndx.length}
			var tmp =listIndx[parseInt(whichStart)-1]
			whichStart = parseInt(whichStart)-1
			jquery_lrc(tmp)	
		}
	})
	
	
	$(document).on('tap', '#nextVideo', function(event){
		var ArticleShuffle = $("#shuffle").attr("data-mode")
		if (ArticleShuffle==1){
			var shuffleNo = Math.floor((Math.random() * listIndx.length) + 1)-1;
			for (i=0;i<10;++i){
				if (shuffleNo == parseInt(whichStart)){
					shuffleNo = Math.floor((Math.random() * listIndx.length)+ 1)-1;
				}else{
					break;
				}
			}
			var tmp =listIndx[shuffleNo]
			whichStart = shuffleNo
			jquery_lrc(tmp)
			
		}else{
			if ( parseInt(whichStart) >=(listIndx.length-1) ){whichStart=-1}
			var tmp =listIndx[parseInt(whichStart)+1]
			whichStart = parseInt(whichStart)+1
			jquery_lrc(tmp)
		}
	})
	
	$(document).on('tap', '#preSentence', function(event){
		var tmp = parseInt(lastSentence)-2
		if (tmp<0){tmp = 0}
		$("#player1")[0].player.setCurrentTime( parseFloat(mp3sec[tmp]) )
	});

	$(document).on('tap', '#nextSentence', function(event){
		var tmp = parseInt(lastSentence)+1
		if ( tmp>(mp3sec.length-1) ){tmp = mp3sec.length-1}
		$("#player1")[0].player.setCurrentTime( parseFloat(mp3sec[tmp]) )
	});

   //$('video').addEventListener('load', mediaelementplayer, false);
	
	$('video').mediaelementplayer({
		success: function (mediaElement, domObject) {
			mediaElement.load()
			$(".mejs-controls").css('display','none')
			mediaElement.addEventListener('timeupdate', function (e){
				videoDuration = mediaElement.duration
				timeUpdate(e)
			}, false);
			var xml='<%=request("musicNo")%>'
				
			//setTimeout(function(){
				jquery_lrc(xml)
			//},1000);
				
				
		},
		error: function() {
			if ( parseInt(whichStart) >=(listIndx.length-1) ){whichStart=-1}
			var tmp =listIndx[parseInt(whichStart)+1]
			whichStart = parseInt(whichStart)+1
			jquery_lrc(tmp)
		}

	});
	

	$(document).on('tap','#player',function(event){
		if( mp3Ing == true ){
			$("#player1")[0].player.pause()
			//$(this).css("background-image","url('./img/player_play.png')")
			mp3Ing = false
		}else{
			$("#player1")[0].player.play()
			//$(this).css("background-image","url('./img/player_pause.png')")
			mp3Ing = true
		}
	
	});

	var bool_changeSong = true
    var bool_open = true
	function timeUpdate(e){
		if( bool_open==true ){	
		bool_open = false

		$(".mejs-controls").css('display','none')
		if ( (parseInt($("#player1")[0].player.getCurrentTime()) >0.5 ) && (mp3Go == false) ){
			$( "#title" ).attr('class','animateTitle')
			$( "#title" ).text(title)
			$( "#title" ).attr("data-value","1")
			intervalFuc = setInterval(function (){ 
				if($( "#title" ).attr("data-value")=="0" ){
					$( "#title" ).text(title)
					$( "#title" ).attr("data-value","1")
				}else{
					$( "#title" ).text(author)
					$( "#title" ).attr("data-value","0")	
				}	
			},6000);
			mp3Go = true
		}

		
		
		var nowmp3sec = $("#player1")[0].player.getCurrentTime()
		
		if( ( Math.abs( accSub( parseFloat(nowmp3sec),parseFloat(videoDuration) ) ) < 0.5  ) && ( parseFloat(videoDuration)!=0 ) ) {
			
			var ArticleRepeat = $("#repeat").attr("data-mode")
			var ArticleShuffle = $("#shuffle").attr("data-mode")
			
			if (ArticleRepeat==0){
				if (ArticleShuffle==1){
					var shuffleNo = Math.floor((Math.random() * listIndx.length) + 1)-1;
					for (i=0;i<10;++i){
						if (shuffleNo == parseInt(whichStart)){
							shuffleNo = Math.floor((Math.random() * listIndx.length)+ 1)-1;
						}else{
							break;
						}
					}
					var tmp =listIndx[shuffleNo]
					whichStart = shuffleNo
					jquery_lrc(tmp)
				}
				mp3Ing = false
				$("#player").css("background-image","url('./img/player_play.png')")		
			}else if ( (ArticleRepeat==1) &&(bool_changeSong==true) ){
				bool_changeSong = false
				if ( parseInt(whichStart) >=(listIndx.length-1) ){whichStart=-1}
				var tmp =listIndx[parseInt(whichStart)+1]
				whichStart = parseInt(whichStart)+1
				jquery_lrc(tmp)
				
			}else{
				$("#player1")[0].player.setCurrentTime(0)
			}
			
			
			

		}else if( Math.abs( accSub( parseFloat(nowmp3sec),parseFloat(premp3sec) ) ) > 0.05  ){
			mp3Ing = true
			$("#player").css("background-image","url('./img/player_pause.png')")
			
			var minIng = Math.floor(($("#player1")[0].player.getCurrentTime())/60)
			var secIng = Math.round(($("#player1")[0].player.getCurrentTime())%60)	
			var minEnd = Math.floor((videoDuration)/60)
			var secEnd = Math.round((videoDuration)%60)
			if (secIng / 10 < 1){secIng="0"+secIng.toString()}
			if (secEnd / 10 < 1){secEnd="0"+secEnd.toString()}
			$("#playIng").text(minIng+":"+secIng)
			$("#playEnd").text(minEnd+":"+secEnd)
			var tmp =((Math.round($("#player1")[0].player.getCurrentTime()) / Math.round(videoDuration)).toFixed(2))*100
			$("#playProgress").css("width",tmp+"%")
			
			
			for( i=0;i<mp3sec.length;++i ){
			
				if( $("#player1")[0].player.getCurrentTime() > parseInt($(".sentence:eq("+(i)+")").attr("data-start") ) ) {
					var data_end = ""
					if ( (i+1) == mp3sec.length ){
						data_end = videoDuration
					}else{
						data_end = $(".sentence:eq("+(i+1)+")").attr("data-start")
					}
					
					if( ( $("#player1")[0].player.getCurrentTime() < parseFloat( data_end ) )  && ( lastSentence != i) ){ 
						lastSentence = i 
						if( ($('#reSentence').attr('data-value')=='1') && ((i-1)>0) ){
							$("#player1")[0].player.setCurrentTime(mp3sec[i-2])
							lastSentence = i-1
						}else{
							for( j=0;j<mp3sec.length;++j ){
								$(".sentence:eq("+(j)+")").css('display','none')

							}
							$(".sentence:eq("+(i)+")").css('display','block')
						}
					}
				}
				
			}
		}else{
			mp3Ing = false
			$("#player").css("background-image","url('./img/player_play.png')")
		}	
	
		premp3sec = nowmp3sec
		bool_open = true
		}
	}	
		
		
		
  ////////////////
 /***Variable***/
////////////////
	var ballgo = 0	//Variable[event:playProgress](global)播放球
//////////////////////

	var title;
	var author;

	var mp3Go = false;
	var videoDuration ;
	
	var  premp3sec = 0;
	
	var whichStart = 0 //Variable[event:.menuContent-click](global)要從哪篇開始
	var speedAdjust = 1

/*****Variable[function:onupdateTime](global)*****/
	var lastSentence = -1

	var repeatNo = 0
	var mp3Ing = false
	var playNoIng = 0	//Article now

/*****Variable[XML](global)*****/
	var mp3sec = new Array();
	var listIndx = new Array();
	var countListIndx = 0
	
	var pic = new Array()	
	var mp3A = new Array()	//learning

	/*****Variable[XML]*****/
	var lrc ,list;

	var xmlList = './xml/musicboxList.asp'
	jquery_list(xmlList)
	
	function jquery_list(url_str){
		$.get( url_str, function( data ) {
			list = data;
			getList();
		});
	}
	

	whichStart = '<%=request("whichStart")%>'
	whichStart = parseInt(whichStart)
	
	function jquery_lrc(url_str){
		$.get( "../../../musicbox/SRT.asp?indx="+url_str, function( data ) {
			lrc = data;
			getContent2()
		});
	}
	
	
	
	
	/***id=content的內容***/
	function getList(){
		$(list).find('lrc').each(function(){
			listIndx[countListIndx] = $(this).attr('indx')
			countListIndx = countListIndx + 1
		})
	}
	
	
	/***id=content2的內容***/
	function getContent2(){
		
		/***Initialize***/
		mp3sec.length = 0
		
		title = $(lrc).find('lrc').attr('Title')
		author = $(lrc).find('lrc').attr('singer_title')
		var Ysrc = 'https://www.youtube.com/watch?v='+$(lrc).find('lrc').attr('Yurl')
        //console.log(Ysrc)
		setTimeout(function(){
			$("#player1")[0].player.setSrc(Ysrc)
		}, 500);
				
		var contentEn = new Array();
		var contentTc = new Array();
		

		var countEn = 0,countTc = 0;
		
		$(lrc).find('lrclist').each(function(){
			contentEn[countEn] = $(this).attr('en_content')
			contentTc[countEn] = $(this).attr('ch_content')
			mp3sec[countEn] = $(this).attr('lrctime')
			
			var splitStart = mp3sec[countEn].split(":");
			mp3sec[countEn] = parseFloat(Math.round(splitStart[0]))*60+parseFloat(parseFloat(splitStart[1]).toFixed(2));
			
			countEn = countEn + 1
		})
		
		if(contentEn.length == contentTc.length){
		
			$("#lrcContent").html('')
			tmp1 = '<div class="sentence" data-start="0" style="display: block; position: relative; left: 5%; width: 90%; background-color: rgb(34, 34, 34);margin-top:30px">'
			tmpTitle = '<div class="sentence-en" style="font-family: PingFangTC-Regular,\'Microsoft JhengHei\', sans-serif;position:relative;font-size:15px;color:#ffffff;text-align:center">'+title+'</div>'
			tmpAuthor = '<div class="sentence-ch" style="font-family: PingFangTC-Regular,\'Microsoft JhengHei\', sans-serif;position:relative;font-size:13px;color:#ffffff;text-align:center;margin-top:10px">'+author+'</div>'
			$("#lrcContent").append(tmp1+tmpTitle+tmpAuthor+'</div>')

			for(i=0;i<contentEn.length;i++){
				
				var lrcEn = '<div class="sentence-en" style="font-family: PingFangTC-Regular,\'Microsoft JhengHei\', sans-serif;position:relative;font-size:15px;color:#ffffff;text-align:center">'+contentEn[i]+'</div>'
				var lrcTc = '<div class="sentence-ch" style="font-family: PingFangTC-Regular,\'Microsoft JhengHei\', sans-serif;position:relative;font-size:13px;color:#ffffff;text-align:center;margin-top:10px">'+contentTc[i]+'</div>'

				$("#lrcContent").append('<div class="sentence" data-start="'+mp3sec[i]+'" style="display:none;position:relative;left:5%;width:90%;background-color:rgb(34, 34, 34);margin-top:30px">'+lrcEn+lrcTc+'</div>');
			}
			
		}
			
			if (mp3Go == true){
				setTimeout(function(){
					bool_changeSong = true
					mp3Ing = false
					$( "#player" ).trigger( "tap" );
				},800);
			}
		
		
	}
	
	function accSub(arg1,arg2){
	　　 var r1,r2,m,n;
	　　 try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}
	　　 try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}
	　　 m=Math.pow(10,Math.max(r1,r2));
	　　 //last modify by deeka
	　　 //動態控制精度長度
	　　 n=(r1>=r2)?r1:r2;
	　　 return ((arg1*m-arg2*m)/m).toFixed(n);
	}


</script>
</body>
</html>