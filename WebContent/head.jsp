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
<!-- datetimepicker -->
<link href="portal/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<!-- bootstrapValidator -->
<link href="portal/css/bootstrapValidator.css" rel="stylesheet">
<!-- bootstrapValidator -->
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
	<input type="hidden" id="loginUser"  value="${sessionScope.forelogin}"/>
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
							<li><a href="Portal/beforeDemandsList.action">需求大厅-所有需求</a></li>
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
					<button class="w3view-cart" type="button" name="" value=""
						style="border-radius: 0; margin: 4px 150px 0 0; color: white; background-color: #f44336; height: 50px; width: 80px; padding: 0; -moz-transition: 0.5s all;"
						id="btnclick">
						<i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
						发布需求
					</button>
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
	<script src="portal/js/bootstrap-datetimepicker.js"></script>
	<script src="portal/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="portal/js/bootstrapValidator.js"></script>
	<!-- 发布需求modal	 -->
	<div class="modal fade" id="NoPermissionModal" tabindex="-1">
		<div class="modal-dialog" style="display: inline-block; width: auto;">
			<div class="modal-content">
				<div class="modal-header"
					style="background: url(portal/images/bg.png) #08bce4 no-repeat; background-size: cover; border-radius: 6px 6px 0px 0px;">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">免费发布需求</h4>
					<div>
						<ul class="list-inline">
							<li class="active"><span>发布需求</span> <i
								class="glyphicon glyphicon-arrow-right" aria-hidden="true"></i>
							</li>
							<li><span>为您匹配服务商</span> <i
								class="glyphicon glyphicon-arrow-right" aria-hidden="true"></i>
							</li>
							<li><span>服务商完成工作</span> <i
								class="glyphicon glyphicon-arrow-right" aria-hidden="true"></i>
							</li>
							<li><span>验收满意付款</span></li>
						</ul>
					</div>
				</div>
				<form action="BusiManage/releaseDemand.action" method="post" class="form-inline" id="formRelease">
					<div class="modal-body" style="width: 900px; height: 420px;">
						<div style="width: 100%; height: 12%; text-align: center;">
							<div class="form-group">
								<label for="name">请选择行业：</label> 
								 <select name="first_classification" id="first_classification" class="form-control"
									style="width: 200px;">
                      				  <option value="">请选择一级分类</option>
                   				 </select>
								<label for="name">请选择服务类型：</label> 
                  			     <select name="classificationID" id="second_classification" class="form-control"
									style="width: 200px;">
                                      <option value="">请选择二级分类</option>
                   			     </select>
							</div>
						</div>
						<div style="width: 100%; height: 88%; background-color: #f7f7f7;">
							<div class="login-body" style="width: 100%; height: 100%;">
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="demandTitle">需求标题：</label> <input type="text"
										name="demandTitle" class="form-control" placeholder="请输入需求标题"
										style="width: 80%;">
								</div>
								<br>
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="name">需求内容：</label>
									<textarea class="form-control" rows="3" style="width: 80%;"
										name="demandContent" placeholder="请输入需求内容"></textarea>
								</div>
								<br>
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="asoftTime">截标日期：</label> <input id="datetimeStart"
										class="form-control" placeholder="请选择截标日期" value=""
										style="width: 25%;" name="asoftTime" >
										<label id="stopBidDaysLabel">(1天-30天)</label>
								</div>
								<br>
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="worksPrice">需求预算：</label> <input type="text"
										name="demandPrice" class="form-control" placeholder="请输入预算"
										style="width: 25%;">
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="submit" class="btn btn-primary"
							onclick="releaseDemand()" id="releaseSubmit">立 即 发 布</button>
						<button type="reset" class="btn btn-default" >重 置</button>	
						<button type="button" class="btn btn-default" data-dismiss="modal">关 闭</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- 	行业和服务分类脚本 -->
	<script type="text/javascript">
        $(function(){
            //页面加载完毕后开始执行的事件
            var class_json = '${classJson}';
            var class_obj=eval('('+class_json+')');
            for (var key in class_obj)
            {
                $("#first_classification").append("<option value="+key+">"+key+"</option>");
            }
            $("#first_classification").change(function(){
                var now_province=$(this).val();
                $("#second_classification").html('<option value="">请选择二级分类</option>');
                for(var k in class_obj[now_province])
                {
                    var now_city=class_obj[now_province][k];
                    
                    for (var m in now_city) {
                    	/* alert(now_city[m]); */
                    	$("#second_classification").append('<option value='+m+'>'+now_city[m]+'</option>');
                    }
                }
            });
        });
    </script>
  <!-- 	//行业和服务分类脚本 -->  
    
    <!-- 	发布需求模态框和日期选择控件脚本 -->
	<script>
		$(function() {
			$("#btnclick").click(function() {
				$('#NoPermissionModal').modal({
					show : true,
					backdrop : 'static'
					
					
				});
			});
			
			$("#formRelease").bootstrapValidator({  
				  message:'This value is not valid',
//	            定义未通过验证的状态图标
	            feedbackIcons: {/*输入框不同状态，显示图片的样式*/
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
//	            字段验证
	            fields:{
//	                用户名
	                demandTitle:{
	                    message:'用户名非法',
	                    validators:{
//	                        非空
	                        notEmpty:{
	                            message:'需求标题不能为空'
	                        },
//	                        限制字符串长度
	                        stringLength:{
	                            min:2,
	                            max:20,
	                            message:'标题长度必须位于2到20之间'
	                        },
	                    }
	                },
	                demandContent:{
	                	 validators:{
	                		 notEmpty:{
	                			message:'请填写需求内容' 
	                		 },
	                	 }
	                },
	                asoftTime:{
	                	 validators:{
	                		 notEmpty:{
	                			message:'请选择截标日期' 
	                		 },
	                	 }
	                },
	                demandPrice:{
	                	 validators:{
	                		 notEmpty:{
	                			message:'请填写需求预算' 
	                		 },
//                    基于正则表达是的验证
                   			 regexp:{
                       			 regexp:/^[1-9]\d*$/,
                      		     message:'请输入正确的预算'
                    		},
                    		stringLength:{
	                            min:1,
	                            max:8,
	                            message:'需求预算在1-99999999之间'
	                        },
	                	 }
	                },
	                classificationID:{
	                	 validators:{
	                		 notEmpty:{
	                			message:'请选择服务类型' 
	                		 },
	                	 }
	                },
	
	            }
		    });  
		});
		
		function releaseDemand(){
			alert($("#loginUser").val());
			if ($("#loginUser").val() == "") {
				alert("未登录");				
			}else{
				alert("已登录");
			}
			return;
		}
		
		//用户选择截标日期之后，显示距离截标的剩余时间
		function gotoDate(){
			if ($("#datetimeStart").val() == "") {
				$("#stopBidDaysLabel").text("(1-30天)");
			}else{
				//相差的毫秒数
				var ts = (new Date($("#datetimeStart").val()).getTime() - new Date().getTime())/1000;
				var dd = parseInt(ts/60/60/24,10);//计算剩余的天数
				var hh = parseInt(ts/60/60%24,10);//计算剩余的小时数
				var mm = parseInt(ts/60%60,10);//计算剩余的分钟数
				var ss = parseInt(ts%60,10);//计算剩余的秒数
				//最後剩余时间
				var remainingTime= dd + "天"+hh + "时" +mm + "分"+ss + "秒";
				$("#stopBidDaysLabel").text("距离截标剩余时间："+remainingTime);
			}
		}		
		$('#datetimeStart').datetimepicker({
			format: 'yyyy-mm-dd hh:00:00',  //显示格式可为yyyymm/yyyy-mm-dd/yyyy.mm.dd  
		    weekStart: 1,//0-周日,6-周六 。默认为0  
		    autoclose: true,    
		    startView: 2, //打开时显示的视图。0-'hour' 1-'day' 2-'month' 3-'year' 4-'decade'   
		    minView: 1,//最小时间视图。默认0-'hour'  
		//  maxView: 4, <span style="white-space:pre;"> </span>//最大时间视图。默认4-'decade'  
		//  todayBtn:true, <span style="white-space:pre;">  </span>//true时"今天"按钮仅仅将视图转到当天的日期。如果是'linked'，当天日期将会被选中。   
		//  todayHighlight:true,<span style="white-space:pre;"> </span>//默认值: false,如果为true, 高亮当前日期。  
		    startDate: new Date((new Date()/1000+86400)*1000),//日期只能从今天开始选择 
		    endDate:  new Date((new Date()/1000+86400*30)*1000),//日期范围最多15天
		    forceParse: false,//当输入非格式化日期时，强制格式化。默认true  
		    bootcssVer:3,//显示向左向右的箭头  
		    language: 'zh-CN', //语言
		    onSelect: gotoDate
		}).on('changeDate',gotoDate).on('hide',function(e) {  
            $('#formRelease').data('bootstrapValidator')  
            .updateStatus('datetimeStart', 'NOT_VALIDATED',null)  
            .validateField('datetimeStart');  
    });  ;
	</script>
	 <!-- 	发布需求模态框和日期选择控件脚本 -->
	<!-- 发布需求modal/	 -->
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>