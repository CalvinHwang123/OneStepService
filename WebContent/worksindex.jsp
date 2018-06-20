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
	<!-- 	<div class="agileits-modal modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88" -->
	<!-- 		aria-hidden="false"> -->
	<!-- 		<div class="modal-dialog"> -->
	<!-- 			<div class="modal-content"> -->
	<!-- 				<div class="modal-header"> -->
	<!-- 					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
	<!-- 					<h4 class="modal-title" id="myModalLabel"><i class="fa fa-map-marker" aria-hidden="true"></i> 选择您的城市</h4> -->
	<!-- 				</div> -->
	<!-- 				<div class="modal-body modal-body-sub">  -->
	<!-- 					<h5>选择您的所在城市 </h5>   -->
	<!-- 					<select class="form-control bfh-states" data-country="US" data-state="CA"> -->
	<!-- 						<option value="">选择您的国家</option> -->
	<!-- 						<option value="AL">阿拉巴马州</option><option value="AK">阿拉斯加</option><option value="AS">American Samoa</option><option value="AZ">Arizona</option><option value="AR">Arkansas</option><option value="AF">Armed Forces Africa</option><option value="AA">Armed Forces Americas</option><option value="AC">Armed Forces Canada</option><option value="AE">Armed Forces Europe</option><option value="AM">Armed Forces Middle East</option><option value="AP">Armed Forces Pacific</option><option value="CA">California</option><option value="CO">Colorado</option><option value="CT">Connecticut</option><option value="DE">Delaware</option><option value="DC">District of Columbia</option><option value="FM">Federated States Of Micronesia</option><option value="FL">Florida</option><option value="GA">Georgia</option><option value="GU">Guam</option><option value="HI">Hawaii</option><option value="ID">Idaho</option><option value="IL">Illinois</option><option value="IN">Indiana</option><option value="IA">Iowa</option><option value="KS">Kansas</option><option value="KY">Kentucky</option><option value="LA">Louisiana</option><option value="ME">Maine</option><option value="MH">Marshall Islands</option><option value="MD">Maryland</option><option value="MA">Massachusetts</option><option value="MI">Michigan</option><option value="MN">Minnesota</option> -->
	<!-- 						<option value="MS">密西西比</option><option value="MO">Missouri</option><option value="MT">Montana</option><option value="NE">Nebraska</option><option value="NV">Nevada</option><option value="NH">New Hampshire</option><option value="NJ">New Jersey</option><option value="NM">New Mexico</option><option value="NY">New York</option><option value="NC">North Carolina</option><option value="ND">North Dakota</option><option value="MP">Northern Mariana Islands</option><option value="OH">Ohio</option><option value="OK">Oklahoma</option><option value="OR">Oregon</option><option value="PW">Palau</option><option value="PA">Pennsylvania</option><option value="PR">Puerto Rico</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option><option value="SD">South Dakota</option><option value="TN">Tennessee</option><option value="TX">Texas</option><option value="UT">Utah</option><option value="VT">Vermont</option><option value="VI">Virgin Islands</option><option value="VA">Virginia</option><option value="WA">Washington</option><option value="WV">West Virginia</option><option value="WI">Wisconsin</option><option value="WY">Wyoming</option> -->
	<!-- 					</select> -->
	<!-- 					<input type="text" name="Name" placeholder="Enter your area / Landmark / Pincode" required="">  -->
	<!-- 					<button type="button" class="close2" data-dismiss="modal" aria-hidden="true">确定</button> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
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
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i> 我的账户<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.html">登录 </a></li>
							<li><a href="signup.html">注册</a></li>
							<li><a href="login.html">我的命令</a></li>
							<li><a href="login.html">我的钱包</a></li>
						</ul></li>
					</li>
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
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> 网站导航<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">规则中心</a></li>
							<li><a href="offers.html">雇主故事</a></li>
							<li><a href="offers.html">曝光台</a></li>


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
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //header-two -->
		<div class="header-three">
			<!-- header-three -->
			<div class="container">
				<div class="menu">
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
									<li class="has-children"><a href="#">HOME APPLIANCES</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#0">All Electronics </a></li>
											<li class="has-children"><a href="#">Kitchen
													appliances</a>
												<ul class="is-hidden">
													<li class="go-back"><a href="#0"> </a></li>
													<li><a href="products.html">Rice Cookers</a></li>
													<li><a href="products.html">Mixer Juicer</a></li>
													<li><a href="products.html">Grinder</a></li>
													<li><a href="products.html">Blenders & Choppers</a></li>
													<li><a href="products.html">Microwave Oven</a></li>
													<li><a href="products.html">Food Processors</a></li>
												</ul></li>
											<li><a href="products.html">Purifiers</a></li>
											<li><a href="products.html">Geysers</a></li>
											<li><a href="products.html">Gas Stove</a></li>
											<li><a href="products.html">Vacuum Cleaner</a></li>
											<li><a href="products.html">Sewing Machine</a></li>
											<li><a href="products.html">Heaters & Fans</a></li>
										</ul></li>
									<li class="has-children"><a href="#">SMALL DEVICES</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#0">All Electronics </a></li>
											<li><a href="products.html">Wifi Dongle</a></li>
											<li><a href="products.html">Router & Modem</a></li>
											<li class="has-children"><a href="#">Storage Devices</a>
												<ul class="is-hidden">
													<li class="go-back"><a href="#0"> </a></li>
													<li><a href="products.html">Cloud Storage</a></li>
													<li><a href="products.html">Hard Disk</a></li>
													<li><a href="products.html">SSD</a></li>
													<li><a href="products.html">Pen Drive</a></li>
													<li><a href="products.html">Memory card</a></li>
													<li><a href="products.html">Security Devices</a></li>
												</ul></li>
											<li><a href="products.html">Office Supplies</a></li>
											<li><a href="products.html">Cut the Cable</a></li>
											<li><a href="products.html">Auto Electronics</a></li>
										</ul></li>
									<li class="has-children"><a href="#">PERSONAL CARE</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#0">All Electronics </a></li>
											<li><a href="products.html">Epilator</a></li>
											<li><a href="products.html">Hair Styler</a></li>
											<li><a href="products.html">Trimmer & Shaver</a></li>
											<li><a href="products.html">Health Care</a></li>
											<li><a href="products.html">cables</a></li>
										</ul></li>
								</ul> <!-- .cd-secondary-dropdown --></li>
							<!-- .has-children -->
							<li class="has-children"><a href="#">Fashion Store</a>
								<ul class="cd-secondary-dropdown is-hidden">
									<li class="go-back"><a href="#">Menu</a></li>
									<li class="see-all"><a href="products1.html">All
											Fashion Stores</a></li>
									<li class="has-children"><a href="#">GIRLS' CLOTHING</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Ethnic wear </a></li>
											<li><a href="products1.html">Maternity wear</a></li>
											<li><a href="products1.html">inner & nightwear </a></li>
											<li><a href="products1.html">casual wear </a></li>
											<li><a href="products1.html">formal wear</a></li>
											<li><a href="products1.html">Sports wear</a></li>
										</ul></li>
									<li class="has-children"><a href="#">BOYS' CLOTHING</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Jeans</a></li>
											<li><a href="products1.html">Casual wear</a></li>
											<li><a href="products1.html">Shorts</a></li>
											<li><a href="products1.html">T-Shirts & Polos</a></li>
											<li><a href="products1.html">Trousers & Chinos</a></li>
										</ul></li>
									<li class="has-children"><a href="#">JACKETS</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Blazers</a></li>
											<li><a href="products1.html">Bomber jackets</a></li>
											<li><a href="products1.html">Denim Jackets</a></li>
											<li><a href="products1.html">Duffle Coats</a></li>
											<li><a href="products1.html">Leather Jackets</a></li>
											<li><a href="products1.html">Parkas</a></li>
										</ul></li>
									<li class="has-children"><a href="#">ACCESSORIES </a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Watches </a></li>
											<li><a href="products1.html">Eyewear </a></li>
											<li><a href="products1.html">Jewellery </a></li>
											<li class="has-children"><a href="#">Footwear </a>
												<ul class="is-hidden">
													<li class="go-back"><a href="#"> </a></li>
													<li><a href="products1.html">Ethnic</a></li>
													<li><a href="products1.html">Casual wear</a></li>
													<li><a href="products1.html">Sports Shoes</a></li>
													<li><a href="products1.html">Boots</a></li>
												</ul></li>
											<li><a href="products1.html">Stoles & Scarves</a></li>
											<li><a href="products1.html">Handbags</a></li>
										</ul></li>
									<li class="has-children"><a href="#">BEAUTY</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Perfumes & Deos</a></li>
											<li><a href="products1.html">Lipsticks & Nail Polish</a></li>
											<li><a href="products1.html">Beauty Gift Hampers</a></li>
											<li><a href="products1.html">Personal Grooming</a></li>
											<li><a href="products1.html">Travel bags</a></li>
										</ul></li>
									<li class="has-children"><a href="products1.html">PERSONAL
											CARE</a>
										<ul class="is-hidden">
											<li class="go-back"><a href="#">All Fashion Stores</a></li>
											<li><a href="products1.html">Face Care</a></li>
											<li><a href="products1.html">Nail Care</a></li>
											<li><a href="products1.html">Hair Care</a></li>
											<li><a href="products1.html">Body Care</a></li>
											<li><a href="products1.html">Bath & Spa</a></li>
										</ul></li>
								</ul> <!-- .cd-secondary-dropdown --></li>
							<li><a href="sitemap.html">Full Site Directory </a></li>
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

<!-- 右部div -->
	<div class="container">
		<div class="col-md-9 product-w3ls-right">
			<!-- breadcrumbs -->
			<ol class="breadcrumb breadcrumb1">
				<li><a href=<%=path+"/foregroundindex.jsp"%>>首页</a></li>
				<li class="active">作品</li>
			</ol>
			<!-- 所有作品div -->
			<div class="products-row">
				<c:forEach var="i" items="${pageInfo.list}">
				<div class="col-md-3 product-grids">
					<div class="agile-products">
						<!-- <div class="new-tag">
							<h6>
								20%<br>Off
							</h6>
						</div> -->
						<a href="single.html"><img src="images/bg.png"
							class="img-responsive" alt="img"></a>
						<div class="agile-product-text">
							<h5>
								<a href="single.html">Snacks</a>
							</h5>
							<h6>作者:<c:out value="${i.userName.userName}"></c:out></h6>
							<h6>作品:<c:out value="${i.worksName}"></c:out></h6>
							<h6>价格:<c:out value="${i.worksPrice}"></c:out></h6>
							<!-- <del>$50</del> -->
							
							<form action="#" method="post">
								<input name="cmd" value="_cart" type="hidden"> <input
									name="add" value="1" type="hidden"> <input
									name="w3ls_item" value="Snacks" type="hidden"> <input
									name="amount" value="40.00" type="hidden">
								<button type="submit" class="w3ls-cart pw3ls-cart">
									<i class="fa fa-cart-plus" aria-hidden="true"></i> 添加到购物车
								</button>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>

				<div class="clearfix"></div>
			</div>
			<!-- 所有作品div -->
			<!-- 底部广告 -->
			<div class="w3ls-add-grids w3agile-add-products">
				<a href="#">
					<h4>
						帝六人众包平台超越同平台 <span>30%</span>
					</h4>
					<h6>
						Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
					</h6>
				</a>
			</div>
			<!-- 底部广告 -->
		</div>
<!-- 右部div -->
<!-- 左部div -->
		<div class="col-md-3 rsidebar">
			<div class="rsidebar-top">
				<div class="slider-left">
					<h4>按价格分类</h4>
					<div class="row row1 scroll-pane jspScrollable"
						style="overflow: hidden; padding: 0px; width: 223px;" tabindex="0">
						<div class="jspContainer" style="width: 223px; height: 160px;">
							<div class="jspPane"
								style="padding: 0px; width: 246px; top: 0px;">
								<label class="checkbox"><input name="checkbox"
									type="checkbox"><i> </i>0 - ￥1000 </label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>￥1000
									- ￥3000 </label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>￥3000 - ￥8000 </label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>￥8000
									- ￥15000 </label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>￥15000 - ￥30000 </label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>￥30000
									- ￥50000 </label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>More</label>
							</div>
							<div class="jspVerticalBar" style="">
								<div class="jspCap jspCapTop"></div>
								<div class="jspTrack" style="height: 160px;">
									<div class="jspDrag" style="height: 96px;">
										<div class="jspDragTop"></div>
										<div class="jspDragBottom"></div>
									</div>
								</div>
								<div class="jspCap jspCapBottom"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="sidebar-row">
					<h4>Grocery Store</h4>
					<ul class="faq">
						<li class="item1"><a href="#">Food Shops<span
								class="glyphicon glyphicon-menu-down"></span></a>
							<ul style="display: none;">
								<li class="subitem1"><a href="#">Fresh Food</a></li>
								<li class="subitem1"><a href="#">Food Gifts</a></li>
								<li class="subitem1"><a href="#">Organic</a></li>
							</ul></li>
						<li class="item2"><a href="#">Packed Food<span
								class="glyphicon glyphicon-menu-down"></span></a>
							<ul style="display: none;">
								<li class="subitem1"><a href="#">Beverages</a></li>
								<li class="subitem1"><a href="#">Baking</a></li>
								<li class="subitem1"><a href="#">Meals &amp; Pasta</a></li>
								<li class="subitem1"><a href="#">Emergency Food</a></li>
							</ul></li>
						<li class="item3"><a href="#">Shop All Pets<span
								class="glyphicon glyphicon-menu-down"></span></a>
							<ul style="display: none;">
								<li class="subitem1"><a href="#">Dogs</a></li>
								<li class="subitem1"><a href="#">Fish</a></li>
								<li class="subitem1"><a href="#">Pet Food</a></li>
							</ul></li>
					</ul>
					<!-- script for tabs -->
					<script type="text/javascript">
						$(function() {

							var menu_ul = $('.faq > li > ul'), menu_a = $('.faq > li > a');

							menu_ul.hide();

							menu_a.click(function(e) {
								e.preventDefault();
								if (!$(this).hasClass('active')) {
									menu_a.removeClass('active');
									menu_ul.filter(':visible')
											.slideUp('normal');
									$(this).addClass('active').next().stop(
											true, true).slideDown('normal');
								} else {
									$(this).removeClass('active');
									$(this).next().stop(true, true).slideUp(
											'normal');
								}
							});

						});
					</script>
					<!-- script for tabs -->
				</div>
				<div class="sidebar-row">
					<h4>DISCOUNTS</h4>
					<div class="row row1 scroll-pane jspScrollable"
						style="overflow: hidden; padding: 0px; width: 223px;" tabindex="0">
						<div class="jspContainer" style="width: 223px; height: 160px;">
							<div class="jspPane"
								style="padding: 0px; width: 246px; top: 0px;">
								<label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>Upto - 10% (20)</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>70%
									- 60% (5)</label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>50% - 40% (7)</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>30%
									- 20% (2)</label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>10% - 5% (5)</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>30%
									- 20% (7)</label><label class="checkbox"><input name="checkbox"
									type="checkbox"><i></i>10% - 5% (2)</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>Other(50)</label>
							</div>
							<div class="jspVerticalBar" style="">
								<div class="jspCap jspCapTop"></div>
								<div class="jspTrack" style="height: 160px;">
									<div class="jspDrag" style="height: 85px; top: 0px;">
										<div class="jspDragTop"></div>
										<div class="jspDragBottom"></div>
									</div>
								</div>
								<div class="jspCap jspCapBottom"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="sidebar-row">
					<h4>Color</h4>
					<div class="row row1 scroll-pane jspScrollable"
						style="overflow: hidden; padding: 0px; width: 223px;" tabindex="0">
						<div class="jspContainer" style="width: 223px; height: 160px;">
							<div class="jspPane"
								style="padding: 0px; width: 246px; top: 0px;">
								<label class="checkbox"><input name="checkbox"
									checked="" type="checkbox"><i></i>White</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>Pink</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>Gold</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>Blue</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>Orange</label><label
									class="checkbox"><input name="checkbox" type="checkbox"><i></i>
									Brown</label>
							</div>
							<div class="jspVerticalBar" style="">
								<div class="jspCap jspCapTop"></div>
								<div class="jspTrack" style="height: 160px;">
									<div class="jspDrag" style="height: 110px;">
										<div class="jspDragTop"></div>
										<div class="jspDragBottom"></div>
									</div>
								</div>
								<div class="jspCap jspCapBottom"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="related-row">
				<h4>YOU MAY ALSO LIKE</h4>
				<div class="galry-like">
					<a href="single.html"><img src="images/e1.png"
						class="img-responsive" alt="img"></a>
					<h4>
						<a href="products.html">Audio speaker</a>
					</h4>
					<h5>$100</h5>
				</div>
			</div>
		</div>
<!-- 左部div -->
		<div class="clearfix"></div>
	</div>
	<!-- product -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2>
							<a href="index.html"><span>帝</span>六 <i>人</i></a>
						</h2>
						<h6>帝六人欢迎您.</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 福建省厦门市软件园二期.</li>
						<li><i class="fa fa-mobile"></i> 13225927015</li>
						<li><i class="fa fa-phone"></i> +222 11 4444</li>
						<li><i class="fa fa-envelope-o"></i> <a
							href="mailto:example@mail.com"> 657789474@qq.com</a></li>
					</ul>
				</div>
				<div class="col-md-8 address-right">
					<div class="col-md-4 footer-grids">
						<h3>Company</h3>
						<ul>
							<li><a href="about.html">关于我们</a></li>
							<li><a href="marketplace.html">Marketplace</a></li>
							<li><a href="values.html">Core Values</a></li>
							<li><a href="privacy.html">Privacy Policy</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Services</h3>
						<ul>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="login.html">Returns</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="sitemap.html">Site Map</a></li>
							<li><a href="login.html">Order Status</a></li>
						</ul>
					</div>
					<div class="col-md-4 footer-grids">
						<h3>Payment Methods</h3>
						<ul>
							<li><i class="fa fa-laptop" aria-hidden="true"></i> Net
								Banking</li>
							<li><i class="fa fa-money" aria-hidden="true"></i> Cash On
								Delivery</li>
							<li><i class="fa fa-pie-chart" aria-hidden="true"></i>EMI
								Conversion</li>
							<li><i class="fa fa-gift" aria-hidden="true"></i> E-Gift
								Voucher</li>
							<li><i class="fa fa-credit-card" aria-hidden="true"></i>
								Debit/Credit Card</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<div class="copy-right">
		<div class="container">
			<p>Copyright 2018-2018 dlr.com 版权所有 渝ICP备10202274-4号 渝B2-20080005
				渝公网安备 50019002500154号 厦门帝六人网络有限公司 互联网违法和不良信息举报电话：023-88390110
				邮箱：110@dlr.com 信用厦门 国家企业信用信息公示系统(厦门)</p>
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
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>