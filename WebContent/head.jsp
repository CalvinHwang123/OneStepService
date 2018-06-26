<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>帝六人网，中国领先的一站式的企业全生命周期服务平台</title>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
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
</head>
<body>
	<script>
		$('#myModal88').modal('show');
	</script>
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="#">欢迎来到帝六人专业外包服务平台 </a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>

					<c:if test="${forelogin.userName == null}">
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-user" aria-hidden="true"></i> 我的账户<span
								class="caret"></span></a>

							<ul class="dropdown-menu">
								<li><a href="ForeLogin.jsp">登录 </a></li>
								<li><a href="ForeSign.jsp">注册</a></li>
								<li><a href="Person.jsp">我的命令</a></li>
								<li><a href="login.html">我的钱包</a></li>
								<li><a href="BusiManage/usersExit.action">退出</a></li>
							</ul>
					</c:if>
					<c:if test="${forelogin.userName != null}">
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-user" aria-hidden="true"></i> 我的账户<span
								class="caret"></span></a>

							<ul class="dropdown-menu">
								<li><a href="login.html">${forelogin.userName}</a></li>
								<li><a href="Person.jsp">我的命令</a></li>
								<li><a href="login.html">我的钱包</a></li>
								<li><a href="BusiManage/usersExit.action">退出</a></li>
							</ul>
					</c:if>
					
					<c:if test="${forelogin.userType ==1}">

						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> 我是雇主<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">我的订单</a></li>
								<li><a href="offers.html">我的足迹</a></li>
								<li><a href="offers.html">我的收藏</a></li>
								<li><a href="offers.html">真经</a></li>
								<li><a href="offers.html">红包中心</a></li>
								<li><a href="offers.html">服务百科</a></li>
								<li><a href="offers.html">雇主俱乐部</a></li>

							</ul></li>

						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-gift" aria-hidden="true"></i> 我是服务商<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">立即开店赚钱</a></li>
								<li><a href="offers.html">具体开店流程</a></li>
								<li><a href="offers.html">开店须知</a></li>
							</ul></li>
					</c:if>
					<c:if test="${forelogin.userType == 2}">
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> 我是雇主<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">我的订单</a></li>
								<li><a href="offers.html">我的足迹</a></li>
								<li><a href="offers.html">我的收藏</a></li>
								<li><a href="offers.html">真经</a></li>
								<li><a href="offers.html">红包中心</a></li>
								<li><a href="offers.html">服务百科</a></li>
								<li><a href="offers.html">雇主俱乐部</a></li>

							</ul></li>

						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-gift" aria-hidden="true"></i> 我是服务商<span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="offers.html">服务商中心</a></li>
							</ul></li>
					</c:if>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> 网站导航<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="Portal/ruleList.action">规则中心</a></li>
							<li><a href="Portal/userStoryList.action">雇主故事</a></li>
							<li><a href="Portal/foreViolationsList.action">曝光台</a></li>
							<li><a href="Portal/successCaseList.action">成功案例</a></li>
							<li><a href="Portal/creditQuery.action">信用查询</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="contact.html"
						class="dropdown-toggle"><i class="fa fa-map-marker"
							aria-hidden="true"></i> 定位</a></li>
					<li class="dropdown head-dpdn"><a href="card.html"
						class="dropdown-toggle"><i class="fa fa-credit-card-alt"
							aria-hidden="true"></i> 我的银行卡</a></li>
					<li class="dropdown head-dpdn"><a href="help.html"
						class="dropdown-toggle"><i class="fa fa-question-circle"
							aria-hidden="true"></i> 帮助</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="header-two">
			<!-- header-two -->
			<div class="container">
				<div class="header-logo">
					<h1>
						<a href="index.html"><span>帝</span>六 <i>人</i></a>
					</h1>
					<h6>DLR.COM</h6>
				</div>
				<div class="header-search">
					<form action="#" method="post">
						<input type="search" name="Search" placeholder="搜索" required="">
						<button type="submit" class="btn btn-default"
							aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="header-cart">
					<div class="my-account">
						<a href="contact.html"><i class="fa fa-map-marker"
							aria-hidden="true"></i> CONTACT US</a>
					</div>
					<div class="cart">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart" /> <input
								type="hidden" name="display" value="1" />
							<button class="w3view-cart" type="submit" name="submit" value="">
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							</button>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //header-two -->
		<div class="header-three">
			<!-- header-three -->
			<div class="container">
				<div class="menu1">
					<div class="cd-dropdown-wrapper">
						<a class="cd-dropdown-trigger" href="#0"> 服务</a>
						<nav class="cd-dropdown"> <a href="#0" class="cd-close">Close</a>
						<ul class="cd-dropdown-content">
							<li><a href="offers.html">Today's Offers</a></li>
							<li class="has-children"><a href="#">按专业找人</a>
								<ul class="cd-secondary-dropdown is-hidden">
									<li class="go-back"><a href="#">Menu</a></li>
									<li class="see-all"><a href="products.html">All
											Electronics</a></li>
									<li class="has-children"><a href="#">知识产权服务</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Electronics</a></li>
											<!-- <li class="has-children">
													<a href="#0">SmartPhones</a> 
													<ul class="is-hidden"> 
														<li class="go-back"><a href="#"> </a></li>
														<li><a href="products.html">Android</a></li>
														<li><a href="products.html">Windows</a></li>
														<li><a href="products.html">Black berry</a></li>
													</ul>
												</li> -->
											<li><a href="products.html">商标注册</a></li>
											<li><a href="products.html">商标购买</a></li>
											<li><a href="products.html">商标维权</a></li>
											<li><a href="products.html">专利申请</a></li>
											<li><a href="products.html">版权登记</a></li>
											<li><a href="products.html">国际专利</a></li>
										</ul></li>
									<li class="has-children"><a href="#">品牌设计</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">logo设计 </a></li>
											<li><a href="products.html">vi设计</a></li>
											<li><a href="products.html">广告设计</a></li>
											<li><a href="products.html">宣传品设计</a></li>
											<li><a href="products.html">包装设计</a></li>
											<li><a href="products.html">品牌策划</a></li>
										</ul></li>
									<li class="has-children"><a href="#">游戏</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">棋牌游戏</a></li>
											<li><a href="products.html">游戏开发</a></li>
											<li><a href="products.html">微信H5游戏</a></li>
											<li><a href="products.html">APP游戏</a></li>
											<li><a href="products.html">游戏资质办理</a></li>
											<li><a href="products.html">游戏UI设计</a></li>
											<li class="has-children"><a href="#">Computer</a>
												<ul class="is-hidden">
													<li class="go-back"><a href="#"> </a></li>
													<li><a href="products.html">Laptop </a></li>
													<li><a href="products.html">Gaming PC</a></li>
													<li><a href="products.html">Monitors</a></li>
													<li><a href="products.html">Networking</a></li>
													<li><a href="products.html">Printers & Supplies</a></li>
													<li><a href="products.html">Accessories</a></li>
												</ul></li>
										</ul></li>
								</ul> <!-- .cd-secondary-dropdown --></li>
							<!-- .has-children -->
							<li class="has-children"><a href="#">行业动态</a> <!-- 							<ul class="cd-secondary-dropdown is-hidden"> -->
								<!-- 								<li class="go-back"><a href="#">Menu</a></li> --> <!-- 								<li class="see-all"><a href="products1.html">All -->
								<!-- 										Fashion Stores</a></li> --> <!-- 								<li class="has-children"><a href="#">GIRLS' CLOTHING</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Ethnic wear </a></li> -->
								<!-- 										<li><a href="products1.html">Maternity wear</a></li> -->
								<!-- 										<li><a href="products1.html">inner & nightwear </a></li> -->
								<!-- 										<li><a href="products1.html">casual wear </a></li> -->
								<!-- 										<li><a href="products1.html">formal wear</a></li> -->
								<!-- 										<li><a href="products1.html">Sports wear</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">BOYS' CLOTHING</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Jeans</a></li> --> <!-- 										<li><a href="products1.html">Casual wear</a></li> -->
								<!-- 										<li><a href="products1.html">Shorts</a></li> -->
								<!-- 										<li><a href="products1.html">T-Shirts & Polos</a></li> -->
								<!-- 										<li><a href="products1.html">Trousers & Chinos</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">JACKETS</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Blazers</a></li> -->
								<!-- 										<li><a href="products1.html">Bomber jackets</a></li> -->
								<!-- 										<li><a href="products1.html">Denim Jackets</a></li> -->
								<!-- 										<li><a href="products1.html">Duffle Coats</a></li> -->
								<!-- 										<li><a href="products1.html">Leather Jackets</a></li> -->
								<!-- 										<li><a href="products1.html">Parkas</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">ACCESSORIES </a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Watches </a></li> -->
								<!-- 										<li><a href="products1.html">Eyewear </a></li> -->
								<!-- 										<li><a href="products1.html">Jewellery </a></li> -->
								<!-- 										<li class="has-children"><a href="#">Footwear </a> -->
								<!-- 											<ul class="is-hidden"> --> <!-- 												<li class="go-back"><a href="#"> </a></li> -->
								<!-- 												<li><a href="products1.html">Ethnic</a></li> -->
								<!-- 												<li><a href="products1.html">Casual wear</a></li> -->
								<!-- 												<li><a href="products1.html">Sports Shoes</a></li> -->
								<!-- 												<li><a href="products1.html">Boots</a></li> -->
								<!-- 											</ul></li> --> <!-- 										<li><a href="products1.html">Stoles & Scarves</a></li> -->
								<!-- 										<li><a href="products1.html">Handbags</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">BEAUTY</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Perfumes & Deos</a></li> -->
								<!-- 										<li><a href="products1.html">Lipsticks & Nail Polish</a></li> -->
								<!-- 										<li><a href="products1.html">Beauty Gift Hampers</a></li> -->
								<!-- 										<li><a href="products1.html">Personal Grooming</a></li> -->
								<!-- 										<li><a href="products1.html">Travel bags</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="products1.html">PERSONAL -->
								<!-- 										CARE</a> --> <!-- 									<ul class="is-hidden"> -->
								<!-- 										<li class="go-back"><a href="#">All Fashion Stores</a></li> -->
								<!-- 										<li><a href="products1.html">Face Care</a></li> -->
								<!-- 										<li><a href="products1.html">Nail Care</a></li> -->
								<!-- 										<li><a href="products1.html">Hair Care</a></li> -->
								<!-- 										<li><a href="products1.html">Body Care</a></li> -->
								<!-- 										<li><a href="products1.html">Bath & Spa</a></li> -->
								<!-- 									</ul></li> --> <!-- 							</ul> .cd-secondary-dropdown -->
							</li>
							<!-- .has-children -->
							<li class="has-children"><a href="products2.html">行业资讯</a> <!-- 							<ul class="cd-secondary-dropdown is-hidden"> -->
								<!-- 								<li class="go-back"><a href="#">Menu</a></li> --> <!-- 								<li class="see-all"><a href="products2.html">All Kids -->
								<!-- 										Fashions</a></li> --> <!-- 								<li class="has-children"><a href="products2.html">KIDS -->
								<!-- 										CLOTHING</a> --> <!-- 									<ul class="is-hidden"> -->
								<!-- 										<li class="go-back"><a href="#">All Kids Fashions</a></li> -->
								<!-- 										<li><a href="products2.html">Ethnic wear </a></li> -->
								<!-- 										<li><a href="products2.html">inner & Sleepwear </a></li> -->
								<!-- 										<li><a href="products2.html">Dresses & Frocks </a></li> -->
								<!-- 										<li><a href="products2.html">Winter wear</a></li> -->
								<!-- 										<li><a href="products2.html">Diaper & Accessories</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">KIDS FASHION</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Kids Fashions</a></li> -->
								<!-- 										<li><a href="products2.html">Footwear</a></li> -->
								<!-- 										<li><a href="products2.html">Sunglasses </a></li> -->
								<!-- 										<li><a href="products2.html">School & Stationery</a></li> -->
								<!-- 										<li><a href="products2.html">Jewellery</a></li> -->
								<!-- 										<li><a href="products2.html">Hair bands & Clips</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li class="has-children"><a href="#">Baby Care</a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Kids Fashions</a></li> -->
								<!-- 										<li><a href="products2.html">Lotions, Oil & Powder </a></li> -->
								<!-- 										<li><a href="products2.html">Soaps, Shampoo </a></li> -->
								<!-- 										<li><a href="products2.html">Bath Towels</a></li> -->
								<!-- 										<li class="has-children"><a href="#">Feeding</a> -->
								<!-- 											<ul class="is-hidden"> --> <!-- 												<li class="go-back"><a href="#"> </a></li> -->
								<!-- 												<li><a href="products2.html">Baby Food </a></li> -->
								<!-- 												<li><a href="products2.html">Bottle Feeding </a></li> -->
								<!-- 												<li><a href="products2.html">Breast Feeding</a></li> -->
								<!-- 											</ul></li> --> <!-- 										<li><a href="products2.html">Toddlers' Rooms</a></li> -->
								<!-- 									</ul> .cd-secondary-dropdown</li> --> <!-- 								.has-children -->
								<!-- 								<li class="has-children"><a href="#">TOYS & GAMES </a> -->
								<!-- 									<ul class="is-hidden"> --> <!-- 										<li class="go-back"><a href="#">All Kids Fashions</a></li> -->
								<!-- 										<li><a href="products2.html">Art & Crafts</a></li> -->
								<!-- 										<li><a href="products2.html">Educational Toys </a></li> -->
								<!-- 										<li><a href="products2.html">Baby Toys</a></li> -->
								<!-- 										<li><a href="products2.html">Outdoor Play </a></li> -->
								<!-- 										<li><a href="products2.html">Musical Instruments</a></li> -->
								<!-- 									</ul></li> --> <!-- 								<li> --> <!-- 									<ul class="is-hidden"> -->
								<!-- 										<li class="go-back"><a href="#">All Kids Fashions</a></li> -->
								<!-- 										<li><a href="products2.html">Toy Tips & Trends</a></li> -->
								<!-- 										<li><a href="products2.html">Preschool Toys</a></li> -->
								<!-- 										<li><a href="products2.html">Musical Instruments</a></li> -->
								<!-- 										<li><a href="products2.html">Bikes & Ride-Ons</a></li> -->
								<!-- 										<li><a href="products2.html">Video Games</a></li> -->
								<!-- 										<li><a href="products2.html">PC & Digital Gaming</a></li> -->
								<!-- 									</ul> --> <!-- 								</li> --> <!-- 							</ul> -->
								<!-- .cd-secondary-dropdown --></li>
						</ul>
						<!-- .cd-dropdown-content --> </nav>
						<!-- .cd-dropdown -->
					</div>
					<!-- .cd-dropdown-wrapper -->
				</div>
				<div class="move-text">
					<div class="marquee">
						<a href="offers.html"> 今日红包优惠卡入口 <span> </span> <span>
						</span></a>
					</div>
					<script type="text/javascript"
						src="portal/js/jquery.marquee.min.js"></script>
					<script>
						$('.marquee').marquee({
							pauseOnHover : true
						});
						//@ sourceURL=pen.js
					</script>
				</div>
			</div>
		</div>
	</div>
	<!-- //header -->


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
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>