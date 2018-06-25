<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则中心-规则中心</title>
<link rel='shortcut icon' href='//s.zbjimg.com/img/favicon.ico'
	type='image/x-icon' />




<script type='text/javascript'>

window.ZBJInfo = {
baseURI: "zbj.com", 
pageDomain : "zbj.com",
staticLibURI: "//as.zbjimg.com", 
qiniuUploadTokenUrl: "//rms.zhubajie.com",
runtime: "product"
};
</script>



<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-cms-web/global/index_80a75e9.css,/static/nodejs-zbj-cms-web/widget/common/header/index_c58bf40.css,/static/nodejs-zbj-cms-web/widget/common/selector/index_ce4f02f.css,/static/nodejs-zbj-cms-web/widget/rules/left-nav/index_e5399aa.css,/static/nodejs-zbj-cms-web/widget/rules/news-show/index_4fe4d6c.css,/static/nodejs-zbj-cms-web/widget/rules/comment/index_bd10a88.css" />
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_80a3c8b.css,/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_dec9231.css" />
<meta name="referrer" content="always">
<script type="text/javascript">
    window.__bees__rates__ = {
    "default": 0.3,
        "path": {
          "/index": 0.2
        },
        "regexp": [{
          pattern: "\\/tingfu$",
          value: 0.5
        }]
    }
</script>
<script type="text/javascript"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-bees-core/0.0.9/index.js"></script>
<script id="seajsnode"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-core/0.0.2/index.js"></script>

<style>
.qs-module .qs-adviser-bottom .qs-adviser-wrap .adviser-item-container .qs-adviser-right
	{
	width: 158px;
}

.qs-module .qs-adviser-bottom .qs-adviser-wrap .adviser-item-container .qs-adviser-right .adviser-desc p
	{
	width: 158px;
	text-overflow: ellipsis;
}
</style>
<script type="text/javascript"
	src="//as.zbjimg.com/static/nodejs-zbj-cms-web/seajs-config_943a3dc.js"></script>
<script type="text/javascript"
	src="//as.zbjimg.com/??/rake-component/fe-common/utopia-arale-seajs-config/index.js,/rake-component/fe-witkey/utopia-witkey-iframeresizer-res/1.0.0/iframeResizer.contentWindow.min.js"></script>
<script type="application/x-javascript">
	
	
		
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- Custom Theme files -->
<link href="portal/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="portal/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="portal/css/menu.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- menu style -->
<link href="portal/css/ken-burns.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- banner slider -->
<link href="portal/css/animate.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="portal/css/owl.carousel.css" rel="stylesheet"
	type="text/css" media="all">
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="portal/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="portal/js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<!-- web-fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lovers+Quarrel'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Offside'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Tangerine:400,700'
	rel='stylesheet' type='text/css'>
<!-- web-fonts -->
<script src="portal/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() {
		$("#owl-demo").owlCarousel({
			autoPlay : 3000, //Set AutoPlay to 3 seconds 
			items : 4,
			itemsDesktop : [ 640, 5 ],
			itemsDesktopSmall : [ 480, 2 ],
			navigation : true

		});
	});
</script>
<script src="portal/js/jquery-scrolltofixed-min.js"
	type="text/javascript"></script>
<script>
	$(document).ready(function() {

		// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

		$('.header-two').scrollToFixed();
		// previous summary up the page.

		var summaries = $('.summary');
		summaries.each(function(i) {
			var summary = $(summaries[i]);
			var next = summaries[i + 1];

			summary.scrollToFixed({
				marginTop : $('.header-two').outerHeight(true) + 10,
				zIndex : 999
			});
		});
	});
</script>
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="portal/js/move-top.js"></script>
<script type="text/javascript" src="portal/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<script src="portal/js/bootstrap.js"></script>
<link rel='shortcut icon' href='//s.zbjimg.com/img/favicon.ico'
	type='image/x-icon' />




<script type='text/javascript'>
	window.ZBJInfo = {
		baseURI : "zbj.com",
		pageDomain : "zbj.com",
		staticLibURI : "//as.zbjimg.com",
		qiniuUploadTokenUrl : "//rms.zhubajie.com",
		runtime : "product"
	};
</script>


<link rel="stylesheet" href="./css/rule.css">
<link rel="stylesheet" href="./css/rule2.css">
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-cms-web/global/index_80a75e9.css,/static/nodejs-zbj-cms-web/widget/common/header/index_c58bf40.css,/static/nodejs-zbj-cms-web/widget/common/selector/index_ce4f02f.css,/static/nodejs-zbj-cms-web/widget/index/news/index_8082c46.css,/static/nodejs-zbj-cms-web/widget/index/banner/index_98b5bc3.css" />
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_80a3c8b.css,/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_dec9231.css" />
<meta name="referrer" content="always">
<script type="text/javascript">
	window.__bees__rates__ = {
		"default" : 0.3,
		"path" : {
			"/index" : 0.2
		},
		"regexp" : [ {
			pattern : "\\/tingfu$",
			value : 0.5
		} ]
	}
</script>
</head>

<body>

	


<%@include file="/head.jsp"%>
	<div class='content padding-spacing footer-spacing'>
		<div class='fl'>
			<div class='el-left-nav' id='utopia_widget_3'>

				<div class='title'>
					<span>规则中心</span>
				</div>
				<div class='list'>


					<!-- <dl class='' data-id='29' data-parentId='27'>

						<dt class='noSub'>
							<a href='/rules-27?cid=29'><span>规则公示</span></a>
						</dt>

						<dd></dd>
					</dl>

					<dl class='' data-id='30' data-parentId='27'>

						<dt class='noSub'>
							<a href='/rules-27?cid=30'><span>热门规则</span></a>
						</dt>

						<dd></dd>
					</dl>

					<dl class='' data-id='31' data-parentId='27'>

						<dt class='noSub active'>
							<a href='/rules-27?cid=31'><span>最新更新</span></a>
						</dt>

						<dd></dd>
					</dl>
 -->

				</div>

			</div>
			<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_3', js:[], entry:function(){$(".el-left-nav dl dt").on("click",function(){var a=$(this).parent();$(this).hasClass("noSub")||(a.hasClass("expand")?a.removeClass("expand"):a.addClass("expand"))}),$(".el-left-nav dl dd li").each(function(){$(this).hasClass("active")&&$(this).parents("dl").addClass("expand")})}});
//]]></script>
		</div>
		<div class='fr el-contents-container'>
			<div class='el-contentShow' id='utopia_widget_4'>
				<div class='title'>
					<span>【规则公示】《<c:out value="${rule.ruleTitle}" ></c:out>》新增公示公告</span>
				</div>
				<div class='subTitle'>
					<em class='icon icon-clocks'></em><span class=''>发布时间：<c:out value="${rule.ruleTime}" ></c:out></span>
				</div>
				<div class='contents'>
					<p>尊敬的帝六人用户朋友：</p>
					<p>
						<br>
					</p>
					<p>规则中心将新增《<c:out value="${rule.ruleTitle}" ></c:out>》，现就本次新增协议条款进行公示，请知悉。</p>
					<p>
						<br>
					</p>
					<p>
						<font color="#ff0000"><b>本公告于<c:out value="${rule.ruleTime}" ></c:out>开始进行7天公示通知。</b></font>
					</p>
					<p>
						<font color="#ff0000"><b><br></b></font>
					</p>
					<p>
						<font color="#ff0000"><b><title></title></b></font>
					</p>
					<p align="center">
						<b><c:out value="${rule.ruleTitle}" ></c:out></b>
					</p>
					<p align="center">
						<b><br></b>
					</p>
					<p>帝六人企业采购工作台（以下简称“本工作台”）依据《<c:out value="${rule.ruleTitle}" ></c:out>》（以下简称“本协议”）的规定提供服务，本协议具有合同效力。用户入驻时，请您认真阅读本协议，审阅并接受或不接受本协议（未成年人应在法定监护人陪同下审阅）。</p>
					<p>&nbsp;</p>
					<p>
						<b>若您已经入驻为本工作台用户，即表示您已充分阅读、理解并同意自己与本工作台订立本协议，且您自愿受本协议的条款约束。本工作台有权随时变更补充本协议并在本工作台上予以公告。经修订的条款一经在本工作台的公布后，立即自动生效。如您不同意相关变更，必须停止使用本工作台。一旦您继续使用本工作台，则表示您已接受并自愿遵守经修订后的条款。本协议内容包括协议正文及所有帝六人网已经发布的各类规则。所有规则为本协议不可分割的一部分，与本协议正文具有同等法律效力。</b>
					</p>
					<p>
						<b><br></b>
					</p>
					<p>
						<b>本协议具有优先效力，如帝六人网各类规则与本协议不一致的，以本协议为准。</b>
					</p>
					<p>&nbsp;</p>
					
					<p>
					
						<b><c:out value="${rule.ruleContext}" escapeXml="flase"></c:out></b>  
					</p>
				
				</div>
			</div>
			

	<!-- cart-js -->
	<script src="portal/js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
					items[i].set('shipping', 0);
					items[i].set('shipping2', 0);
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- countdown.js -->
	<script src="portal/js/jquery.knob.js"></script>
	<script src="portal/js/jquery.throttle.js"></script>
	<script src="portal/js/jquery.classycountdown.js"></script>
	<script>
		$(document).ready(function() {
			$('#countdown1').ClassyCountdown({
				end : '1388268325',
				now : '1387999995',
				labels : true,
				style : {
					element : "",
					textResponsive : .5,
					days : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#1abc9c",
							lineCap : 'round'
						},
						textCSS : 'font-weight:300; color:#fff;'
					},
					hours : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#05BEF6",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					},
					minutes : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#8e44ad",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					},
					seconds : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#f39c12",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					}

				},
				onEndCallback : function() {
					console.log("Time out!");
				}
			});
		});
	</script>
	<!-- //countdown.js -->
	<!-- menu js aim -->
	<script src="portal/js/jquery.menu-aim.js">
		
	</script>
	<script src="portal/js/main.js"></script>
		<%@include file="/end.jsp"%>	
</body>
</html>