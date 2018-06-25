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
<title>规则中心</title>

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
</head>
<body>


	<script>
		seajs
				.use([ "//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_f550d0f.js" ]);
	</script>

<%@include file="/head.jsp"%>
	<div class='el-header' id='utopia_widget_1'>
		<div class='content'>
			
			<div class='el-selector-container'>
				<div class='el-selector' id='utopia_widget_2'>
					
					<div class='el-selector-content'>
						<input id='el-content' class='el-content' placeholder='请输入规则关键词搜索' />
						<button type='button' id='el-content-btn'>搜索</button>
						
					</div>
				</div>
				<script>
					/*<![CDATA[*/
					utopia.arrived({
						uid : 'utopia_widget_2',
						js : [],
						entry : function() {
							$("#el-content-btn").on(
									"click",
									function() {
										if ("" == $("#el-content").val())
											return !1;
										var e = "/searchrules?categoryId="
												+ $("#el-selector").val()
												+ "&keyword="
												+ encodeURI($("#el-content")
														.val());
										window.location.href = e
									})
						}
					});
					//]]>
				</script>
			</div>
		</div>
	</div>
	
	<script>
		utopia.arrived({
			uid : 'utopia_widget_1',
			js : [],
			entry : function() {
			}
		});
	</script>





	<script>
		/*<![CDATA[*/
		utopia
				.arrived({
					uid : 'utopia_widget_3',
					js : [],
					entry : function() {
						$(document)
								.ready(
										function() {
											$(".index-news .bd li a")
													.on(
															"click",
															function() {
																var n = $(this)
																		.data();
																n.pid
																		&& $
																				.ajax({
																					type : "get",
																					url : "/addContentClickCount",
																					data : {
																						articleId : n.pid
																					},
																					dataType : "json",
																					success : function() {
																						n.pid
																								&& (window.location.href = n.href)
																					},
																					error : function(
																							i) {
																								n.pid
																										&& (window.location.href = n.href),
																								console
																										.log(i)
																					}
																				})
															})
										})
					}
				});
		//]]>
	</script>
	<div class='content padding-spacing'>
		<div class='fl'>
			<div class='index-banner' id='J-slider'>
				<div class='bd'>
					<ul>

						<li class='banner-item'><a href='/banner'> <img
								src='img/帝六人.jpg' />
						</a></li>

					</ul>
				</div>
				<div class='hd'>
					<ul class='ui-switchable-nav'>

						<li class='ui-switchable-trigger'></li>

					</ul>
				</div>
			</div>
			<script>
				utopia
						.arrived({
							uid : 'J-slider',
							js : [],
							entry : function(e) {
								e
										.async(
												[ "widget/common/lib/jquery.superslide.2.1.1" ],
												function() {
													$("#J-slider").slide({
														mainCell : ".bd ul",
														titCell : ".hd ul li",
														effect : "leftLoop",
														autoPlay : !0
													})
												})
							}
						});
			</script>
		</div>

		<div class='fr'>

			<div class='index-news  icon-news1'>
				<div class='hd'>
					<span class='title'><em class='icon'></em><span>规则公示</span></span>
					<a href='/rules-27?cid=29'><span>更多</span></a>
				</div>
				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class='cls'></div>
	</div>
	<div class='content padding-spacing footer-spacing'>
		<div class='fl'>


			<div class='index-news index-news-max icon-news2'>
				<div class='hd'>
					<span class='title'><em class='icon'></em><span>最新更新</span></span>
					<a href='/rules-27?cid=31'><span>更多</span></a>
				</div>

				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>


		</div>

		<div class='fr'>

			<div class='index-news  icon-news3'>
				<div class='hd'>
					 <span class='title'><em class='icon'></em><span>热门规则</span></span>
					<a href='/rules-27?cid=30'><span>更多</span></a>
				</div>
				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class='cls'></div>
	</div>
	<div class='cls'></div>




	<script>
		seajs
				.use([ "//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_c450da5.js" ]);
	</script>
	
	
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