<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>成功案例————帝六人网，中国领先的一站式的企业全生命周期服务平台</title>
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
	  autoPlay: 3000, //Set AutoPlay to 3 seconds 
	  items :4,
	  itemsDesktop : [640,5],
	  itemsDesktopSmall : [480,2],
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
                marginTop: $('.header-two').outerHeight(true) + 10, 
                zIndex: 999
            });
        });
    });
</script>
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="portal/js/move-top.js"></script>
<script type="text/javascript" src="portal/js/easing.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' }); 
			
		});
	</script>
<!-- //smooth-scrolling-of-move-up -->
<script src="portal/js/bootstrap.js"></script>
</head>
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
						class="fa fa-user" aria-hidden="true"></i> 我的账户<span class="caret"></span></a>
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
						<!-- .has-children -->
						<li class="has-children"><a href="products2.html">Kids
								Fashion & Toys</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products2.html">All Kids
										Fashions</a></li>
								<li class="has-children"><a href="products2.html">KIDS
										CLOTHING</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#">All Kids Fashions</a></li>
										<li><a href="products2.html">Ethnic wear </a></li>
										<li><a href="products2.html">inner & Sleepwear </a></li>
										<li><a href="products2.html">Dresses & Frocks </a></li>
										<li><a href="products2.html">Winter wear</a></li>
										<li><a href="products2.html">Diaper & Accessories</a></li>
									</ul></li>
								<li class="has-children"><a href="#">KIDS FASHION</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#">All Kids Fashions</a></li>
										<li><a href="products2.html">Footwear</a></li>
										<li><a href="products2.html">Sunglasses </a></li>
										<li><a href="products2.html">School & Stationery</a></li>
										<li><a href="products2.html">Jewellery</a></li>
										<li><a href="products2.html">Hair bands & Clips</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Baby Care</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#">All Kids Fashions</a></li>
										<li><a href="products2.html">Lotions, Oil & Powder </a></li>
										<li><a href="products2.html">Soaps, Shampoo </a></li>
										<li><a href="products2.html">Bath Towels</a></li>
										<li class="has-children"><a href="#">Feeding</a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"> </a></li>
												<li><a href="products2.html">Baby Food </a></li>
												<li><a href="products2.html">Bottle Feeding </a></li>
												<li><a href="products2.html">Breast Feeding</a></li>
											</ul></li>
										<li><a href="products2.html">Toddlers' Rooms</a></li>
									</ul> <!-- .cd-secondary-dropdown --></li>
								<!-- .has-children -->
								<li class="has-children"><a href="#">TOYS & GAMES </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#">All Kids Fashions</a></li>
										<li><a href="products2.html">Art & Crafts</a></li>
										<li><a href="products2.html">Educational Toys </a></li>
										<li><a href="products2.html">Baby Toys</a></li>
										<li><a href="products2.html">Outdoor Play </a></li>
										<li><a href="products2.html">Musical Instruments</a></li>
									</ul></li>
								<li>
									<ul class="is-hidden">
										<li class="go-back"><a href="#">All Kids Fashions</a></li>
										<li><a href="products2.html">Toy Tips & Trends</a></li>
										<li><a href="products2.html">Preschool Toys</a></li>
										<li><a href="products2.html">Musical Instruments</a></li>
										<li><a href="products2.html">Bikes & Ride-Ons</a></li>
										<li><a href="products2.html">Video Games</a></li>
										<li><a href="products2.html">PC & Digital Gaming</a></li>
									</ul>
								</li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<!-- .has-children -->
						<li class="has-children"><a href="#">Home, Furniture &
								Patio</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products3.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Kitchen Uses</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products3.html">Dinner Sets </a></li>
										<li><a href="products3.html">Cookware & Bakeware </a></li>
										<li><a href="products3.html">Containers & Jars </a></li>
										<li><a href="products3.html">Kitchen Tools </a></li>
										<li><a href="products3.html">Food Storage</a></li>
										<li><a href="products3.html">Casseroles</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Furniture </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products3.html">Bedroom </a></li>
										<li><a href="products3.html">Dining Room </a></li>
										<li><a href="products3.html">Kids' Furniture </a></li>
										<li><a href="products3.html">Living Room</a></li>
										<li><a href="products3.html">Office</a></li>
										<li><a href="products3.html">Mattresses</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Home Decor </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products3.html">Lighting</a></li>
										<li><a href="products3.html">Painting</a></li>
										<li><a href="products3.html">Curtains & Blinds</a></li>
										<li><a href="products3.html">Patio Furniture</a></li>
										<li><a href="products3.html">Wardrobes & Cabinets</a></li>
										<li><a href="products3.html">Mattresses</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Gardening & Lawn </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"> </a></li>
										<li><a href="products3.html">Gardening </a></li>
										<li><a href="products3.html">Landscaping </a></li>
										<li><a href="products3.html">Sheds</a></li>
										<li><a href="products3.html">Outdoor Storage </a></li>
										<li><a href="products3.html">Garden & Ideas </a></li>
										<li><a href="products3.html">Patio Tips</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Garage Storage</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products3.html">Baskets & Bins </a></li>
										<li><a href="products3.html">Garage Door Openers</a></li>
										<li><a href="products3.html">Free Standing Shelves </a></li>
										<li><a href="products3.html">Floor cleaning</a></li>
										<li><a href="products3.html">Tool Kits</a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<!-- .has-children -->
						<li class="has-children"><a href="#">Sports, Fitness &
								Outdoor</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products4.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Single Sports </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html">Bikes </a></li>
										<li><a href="products4.html">Fishing </a></li>
										<li><a href="products4.html">Cycling </a></li>
										<li><a href="products4.html">Musical Instruments</a></li>
										<li><a href="products4.html">Archery </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Team Sports</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html">Cricket </a></li>
										<li><a href="products4.html">Badminton </a></li>
										<li><a href="products4.html">Swimming Gear </a></li>
										<li><a href="products4.html">Sports Apparel </a></li>
										<li><a href="products4.html">Indoor games</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Fitness </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html">Fitness Accessories </a></li>
										<li><a href="products4.html">Exercise Machines </a></li>
										<li><a href="products4.html">Ellipticals </a></li>
										<li><a href="products4.html">Home Gyms</a></li>
										<li><a href="products4.html">Exercise Bikes</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Camping </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html"> Airbeds</a></li>
										<li><a href="products4.html">Tents </a></li>
										<li><a href="products4.html">Gazebo's & Shelters</a></li>
										<li><a href="products4.html">Coolers </a></li>
										<li><a href="products4.html">Canopies</a></li>
										<li><a href="products4.html">Sleeping Bags</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Camping Tools</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html">Shooting </a></li>
										<li><a href="products4.html">Knives & Tools </a></li>
										<li><a href="products4.html">Optics & Binoculars </a></li>
										<li><a href="products4.html">Lights & Lanterns </a></li>
										<li><a href="products4.html">Hunting Clothing </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Other</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products4.html">Riding Gears & More </a></li>
										<li><a href="products4.html">Body Massagers </a></li>
										<li><a href="products4.html">Health Monitors </a></li>
										<li><a href="products4.html">Health Drinks </a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<!-- .has-children -->
						<li class="has-children"><a href="#">Grocery store</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products5.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Veggies & Fruits </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Vegetables </a></li>
										<li><a href="products5.html">Fruits </a></li>
										<li><a href="products5.html">Dry Fruits</a></li>
										<li><a href="products5.html">Snacks & Cookies </a></li>
										<li><a href="products5.html">Breakfast & Cereal</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Packet Food</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Beverages </a></li>
										<li><a href="products5.html">Baking </a></li>
										<li><a href="products5.html">Emergency Food </a></li>
										<li><a href="products5.html">Candy & Gum </a></li>
										<li><a href="products5.html">Meals & Pasta </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Shop All Pets </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Dogs </a></li>
										<li><a href="products5.html">Fish </a></li>
										<li><a href="products5.html">Cats</a></li>
										<li><a href="products5.html">Birds </a></li>
										<li><a href="products5.html">Pet Food </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Household
										Essentials </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Laundry Room </a></li>
										<li><a href="products5.html">Paper & Plastic</a></li>
										<li><a href="products5.html">Pest Control </a></li>
										<li><a href="products5.html">Batteries </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Food Shops </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Fresh Food</a></li>
										<li><a href="products5.html">Food Gifts </a></li>
										<li><a href="products5.html">Frozen Food </a></li>
										<li><a href="products5.html">Organic </a></li>
										<li><a href="products5.html">Gluten Free </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Tips </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products5.html">Pets Growth</a></li>
										<li><a href="products5.html">Recipes </a></li>
										<li><a href="products5.html">Snacks</a></li>
										<li><a href="products5.html">Nutrition</a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<!-- .has-children -->
						<li class="has-children"><a href="#">Photo, Gifts &
								Office Supplies</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products6.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Trending Now </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Best Priced</a></li>
										<li><a href="products6.html">Chocolates </a></li>
										<li><a href="products6.html">Gift Cards </a></li>
										<li><a href="products6.html">Fashion & Accessories </a></li>
										<li><a href="products6.html">Decorative Plants </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Photos </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Shelf animation </a></li>
										<li><a href="products6.html">3D-rendered </a></li>
										<li><a href="products6.html">gift builder </a></li>
										<li><a href="products6.html">Frames</a></li>
										<li><a href="products6.html">Wall Decor</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Gifts </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Personalized Gifts </a></li>
										<li><a href="products6.html">Flowers </a></li>
										<li><a href="products6.html">Cards & Toys</a></li>
										<li><a href="products6.html">Show pieces </a></li>
										<li><a href="products6.html">Photo Books</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Favourite Brands </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Archies </a></li>
										<li><a href="products6.html">Jewel Fuel </a></li>
										<li><a href="products6.html">Ferns N Petals </a></li>
										<li><a href="products6.html">Happily Unmarried</a></li>
										<li><a href="products6.html">Chumbak</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Office</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Calendars</a></li>
										<li><a href="products6.html">Mousepads</a></li>
										<li><a href="products6.html">Phone Cases</a></li>
										<li><a href="products6.html">Tablet & Laptop Cases</a></li>
										<li><a href="products6.html">Mounted Photos</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Combos </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products6.html">Chocolates </a></li>
										<li><a href="products6.html">Dry Fruits</a></li>
										<li><a href="products6.html">Sweets</a></li>
										<li><a href="products6.html">Snacks</a></li>
										<li><a href="products6.html">Cakes</a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<li class="has-children"><a href="#">Health, Beauty &
								Pharmacy</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products7.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Health</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products7.html">Home Health Care </a></li>
										<li><a href="products7.html">Sports Nutrition </a></li>
										<li><a href="products7.html">Vision </a></li>
										<li><a href="products7.html">Vitamins </a></li>
										<li><a href="products7.html">Diet & Nutrition </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Health Tips</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products7.html">Diet</a></li>
										<li><a href="products7.html">Exercise Tips </a></li>
										<li><a href="products7.html">Vitamin Balance</a></li>
										<li><a href="products7.html">Health Insurance</a></li>
										<li><a href="products7.html">Funeral</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Beauty </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products7.html">Massage & Spa </a></li>
										<li><a href="products7.html">Face Wash</a></li>
										<li><a href="products7.html">Facial Cleanser</a></li>
										<li><a href="products7.html">Makeup </a></li>
										<li><a href="products7.html">Beauty Tips</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Pharmacy </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products7.html">Home Delivery </a></li>
										<li><a href="products7.html">History & Reports </a></li>
										<li><a href="products7.html">Transfer Prescriptions </a></li>
										<li><a href="products7.html">Health CheckUp</a></li>
										<li><a href="products7.html">Mobile App</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Pharmacy Center </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products7.html">Diabetes Shop </a></li>
										<li><a href="products7.html">Medicine Cabinet </a></li>
										<li><a href="products7.html">Vitamin Selector</a></li>
										<li><a href="products7.html">Pharmacy Help</a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<li class="has-children"><a href="#">Automotive</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products8.html">All
										Products</a></li>
								<li class="has-children"><a href="#">All Motors </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Bikes </a></li>
										<li><a href="products8.html">Yachts </a></li>
										<li><a href="products8.html">Scooters </a></li>
										<li><a href="products8.html">Autos</a></li>
										<li><a href="products8.html">Bus</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Accessories </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Vehicle Electronics</a></li>
										<li><a href="products8.html">Stereos & Monitors</a></li>
										<li><a href="products8.html">Bluetooth Devices</a></li>
										<li><a href="products8.html">GPS Navigation</a></li>
										<li><a href="products8.html">Speakers & Tweeters</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Safety & Security
								</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Anti-Theft Devices </a></li>
										<li><a href="products8.html">Helmets</a></li>
										<li><a href="products8.html">Sensors</a></li>
										<li><a href="products8.html">Auto Repair Tools </a></li>
										<li><a href="products8.html">Antifreeze & Coolants </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Car Interiors</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Stereos </a></li>
										<li><a href="products8.html">Floor Mats </a></li>
										<li><a href="products8.html">Seat Covers</a></li>
										<li><a href="products8.html">Chargers </a></li>
										<li><a href="products8.html">Audio Finder </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Exterior
										Accessories </a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Wheel covers </a></li>
										<li><a href="products8.html">Car Lighting </a></li>
										<li><a href="products8.html">Polish & Waxes</a></li>
										<li><a href="products8.html">Cargo Management</a></li>
										<li><a href="products8.html">Car Decoration </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Car Care</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products8.html">Auto Tips & Advice </a></li>
										<li><a href="products8.html">Car Washes & Cleaners </a></li>
										<li><a href="products8.html">Car Wax & Polish</a></li>
										<li><a href="products8.html">Cleaning Tools</a></li>
										<li><a href="products8.html">Detailing Kits </a></li>
									</ul></li>
							</ul> <!-- .cd-secondary-dropdown --></li>
						<li class="has-children"><a href="#">Books, Music &
								Movies</a>
							<ul class="cd-secondary-dropdown is-hidden">
								<li class="go-back"><a href="#">Menu</a></li>
								<li class="see-all"><a href="products9.html">All
										Products</a></li>
								<li class="has-children"><a href="#">Books</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li class="has-children"><a href="#">Exam books </a>
											<ul class="is-hidden">
												<li class="go-back"><a href="#"> </a></li>
												<li><a href="products9.html">CAT/MAT/XAT</a></li>
												<li><a href="products9.html">Civil Services</a></li>
												<li><a href="products9.html">AFCAT</a></li>
												<li><a href="products9.html">New Releases</a></li>
											</ul></li>
										<li><a href="products9.html">Academic Text </a></li>
										<li><a href="products9.html">Romance Books </a></li>
										<li><a href="products9.html">Journals </a></li>
										<li><a href="products9.html">Children's & Teen Books
										</a></li>
									</ul></li>
								<li class="has-children"><a href="#">Music</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products9.html">New Releases </a></li>
										<li><a href="products9.html">Country Music </a></li>
										<li><a href="products9.html">Musical Instruments </a></li>
										<li><a href="products9.html">Collections</a></li>
										<li><a href="products9.html">Boxed Sets </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Music Combo</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products9.html">Pop </a></li>
										<li><a href="products9.html">Preorders </a></li>
										<li><a href="products9.html">Album Songs</a></li>
										<li><a href="products9.html">Top 50 CDs </a></li>
										<li><a href="products9.html">Music DVDs </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Movies</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products9.html">New Releases </a></li>
										<li><a href="products9.html">Children & Family </a></li>
										<li><a href="products9.html">Action</a></li>
										<li><a href="products9.html">Classic Movies </a></li>
										<li><a href="products9.html">Bollywood Movies </a></li>
									</ul></li>
								<li class="has-children"><a href="#">Movies Combo</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products9.html">Hollywood Movies </a></li>
										<li><a href="products9.html">Digital Movies </a></li>
										<li><a href="products9.html">Boxed Sets</a></li>
										<li><a href="products9.html">Animated</a></li>
										<li><a href="products9.html">Adventure</a></li>
									</ul></li>
								<li class="has-children"><a href="#">TV Shows</a>
									<ul class="is-hidden">
										<li class="go-back"><a href="#"></a></li>
										<li><a href="products9.html">Serials</a></li>
										<li><a href="products9.html">Best Programs</a></li>
										<li><a href="products9.html">Celebrations</a></li>
										<li><a href="products9.html">Top Shows</a></li>
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
					<a href="offers.html"> 今日红包优惠卡入口 <span> </span> <span> </span></a>
				</div>
				<script type="text/javascript" src="portal/js/jquery.marquee.min.js"></script>
				<script>
					  $('.marquee').marquee({ pauseOnHover: true });
					  //@ sourceURL=pen.js
					</script>
			</div>
		</div>
	</div>
</div>
<!-- //header -->
<!-- <div class="container"> -->
<!-- 	<div class="welcome-info"> -->
<!-- 		<div class="bs-example bs-example-tabs" role="tabpanel" -->
<!-- 			data-example-id="togglable-tabs"> -->
<!-- 			<h3 class="w3ls-title" align="center">帝六人————成功案例</h3> -->
<!-- 			<div id="myTabContent" class="tab-content"> -->
<!-- 				<div role="tabpanel" class="tab-pane fade in active" id="home" -->
<!-- 					aria-labelledby="home-tab"> -->
<!-- 					<div class="tabcontent-grids"> -->
<!-- 						<div id="owl-demo" class="owl-carousel"> -->
<%-- 							<c:forEach items="${pageInfo.list}" var="successCase" begin="0" --%>
<%-- 								varStatus="s"> --%>
<%-- 								<c:if test="${successCase.stickTime > successCase.successCaseTime}"> --%>
<!-- 									<div class="item"> -->
<!-- 										<div class="glry-w3agile-grids agileits"> -->
<!-- 											<div class="new-tag"> -->
<!-- 												<h6>置顶</h6> -->
<!-- 											</div> -->
<%-- 											<a href="Portal/successCase.action?successCaseID=${successCase.successCaseID}"><img src="${successCase.imageURL}" --%>
<!-- 												alt="img"></a> -->
<!-- 											<div class="view-caption agileits-w3layouts"> -->
<!-- 												<h4> -->
<%-- 													<a href="PortalManage/userStory.action?storyID=${successCase.successCaseID}"><c:out --%>
<%-- 															value="${successCase.successCaseTitle}"></c:out> </a> --%>
<!-- 												</h4> -->
<!-- 												<div style="width:100%;overflow:hidden;text-overflow:ellipsis;"> -->
<%-- 													<c:out value="${successCase.successCaseContext}"></c:out> --%>
<!-- 												</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<%-- 								</c:if> --%>
<%-- 							</c:forEach> --%>
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- 	</div>  -->
<!-- //welcome -->
<!-- add-products -->
<div class="add-products">
	<div class="container">
		<h3 class="w3ls-title"></h3>
		<div class="add-products-row">
			<c:forEach items="${pageInfo.list}" var="successCase" begin="0"
				varStatus="s">
				<c:if test="${successCase.imageURL == null}">

					<div class="w3ls-add-grids"
						style="background:url(<%=basePath%>/portal/images/noface.gif)no-repeat 0px 0px;
						background-size: cover;">
						<a
							href="Portal/successCase.action?successCaseID=${successCase.successCaseID}">
							<h6>
								<c:out value="${successCase.successCaseTitle}"></c:out>
								<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
							</h6>
						</a>
					</div>
					<div class="successText">
						<a
							href="Portal/successCase.action?successCaseID=${successCase.successCaseID}">
							<h6>
								<c:out value="${successCase.successCaseTitle}"></c:out>
							</h6>
						</a>
						<HR
							style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
							width="80%" color=#987cb9 SIZE=3>
					</div>
				</c:if>
				<c:if test="${successCase.imageURL != null}">
					<div class="info-item">
						<img
							src="${successCase.imageURL};a.c=220x160&amp;a.g=Center"
							class="info-img" alt="从贫困村到“中国最美休闲乡村”逆袭，这三个村子有话说">

						<div class="content-wrap">
							<h4 class="info-title text-overflow">
								<a class="link-hover" href="Portal/successCase.action?successCaseID=${successCase.successCaseID}">
								<c:out value="${successCase.successCaseTitle}"></c:out></a>
							</h4>
							<div class="info-content">近几年，乡村旅游发展得如火如荼，尤其是随着乡村振兴战略的深入推动，发挥着“引擎”作用的乡村旅游也更“火”了起来，乡村旅游迎来了自发展以来最好的时期。</div>
						</div>
<!-- 						<div class="mark-label"> -->
<!-- 							<div class="info-notice"> -->
<!-- 								<i class="icon-loc"></i> <span class="info-notice-tip">来源</span> -->
<!-- 								<span class="info-notice">猪八戒网：四姑娘</span> -->
<!-- 							</div> -->
<!-- 							<div class="info-notice"> -->
<!-- 								<i class="icon-eye"></i> <span class="info-notice-tip">阅读</span> -->
<!-- 								<span class="info-notice">798</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>



<!-- 					<div class="w3ls-add-grids" -->
<%-- 						style="background:url(${successCase.imageURL})no-repeat 0px 0px; --%>
<%-- 			background-size: cover;"> --%>
<!-- 						<a -->
<%-- 							href="Portal/successCase.action?successCaseID=${successCase.successCaseID}"> --%>
<!-- 							<h6> -->
<%-- 								<c:out value="${successCase.successCaseTitle}"></c:out> --%>
<!-- 								<i class="fa fa-arrow-circle-right" aria-hidden="true"></i> -->
<!-- 							</h6> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					<div class="successText"> -->
<!-- 						<a -->
<%-- 							href="Portal/successCase.action?successCaseID=${successCase.successCaseID}"> --%>
<!-- 							<h6> -->
<%-- 								<c:out value="${successCase.successCaseTitle}"></c:out> --%>
<!-- 							</h6> -->
<!-- 						</a> -->
<!-- 						<HR -->
<!-- 							style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)" -->
<!-- 							width="80%" color=#987cb9 SIZE=3> -->
<!-- 					</div> -->




				</c:if>
			</c:forEach>
			<div class="clerfix"></div>
		</div>
	</div>
</div>
<div class="page">
	<form id="pageForm" class="layui-form layui-col-md12 x-so"
		action="Portal/userStoryList.action">
		<!-- 隐藏域 每页条数 -->
		<input type="hidden" id="pageSizeInput" name="pageSize"
			value="${pageInfo.getPageSize()}" />
		<!-- 隐藏域 当前页数 -->
		<input type="hidden" id="currentPageInput" name="pageNum"
			value="${pageInfo.getPageNum()}" />
	</form>
	<div>
		共${pageInfo.getPages()}页
		<c:choose>
			<c:when test="${!pageInfo.hasPreviousPage}">
				<span class="prev">上一页</span>
			</c:when>
			<c:otherwise>
				<a class="prev" href="javascript:void(0);"
					onclick="changePage(${pageInfo.getPrePage()})">上一页</a>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${pageInfo.pageNum <= 2}">
				<c:if test="${pageInfo.pageNum != 1}">
					<a class="num" href="javascript:void(0);"
						onclick="changePage(${pageInfo.pageNum-1})"><c:out
							value="${pageInfo.pageNum-1}"></c:out> </a>
				</c:if>
				<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
				<c:forEach begin="1" step="1" end="4" var="num">
					<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
						<a class="num" href="javascript:void(0);"
							onclick="changePage(${pageInfo.pageNum+num})"><c:out
								value="${pageInfo.pageNum+num}"></c:out> </a>
					</c:if>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<a class="num" href="javascript:void(0);"
					onccick="changePage(${pageInfo.pageNum-1})"><c:out
						value="${pageInfo.pageNum-1}"></c:out> </a>
				<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
				<c:forEach begin="1" step="1" end="4" var="num">
					<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
						<a class="num" href="javascript:void(0);"
							onclick="changePage(${pageInfo.pageNum+num})"><c:out
								value="${pageInfo.pageNum+num}"></c:out> </a>
					</c:if>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${!pageInfo.hasNextPage}">
				<span class="next">下一页</span>
			</c:when>
			<c:otherwise>
				<a class="next" href="javascript:void(0);"
					onclick="changePage(${pageInfo.getNextPage()})">下一页</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<!-- footer-top -->
<div class="w3agile-ftr-top">
	<div class="container">
		<div class="ftr-toprow">
			<div class="col-md-4 ftr-top-grids">
				<div class="ftr-top-left">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<div class="ftr-top-right">
					<h4>FREE DELIVERY</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Fusce tempus justo ac</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 ftr-top-grids">
				<div class="ftr-top-left">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div class="ftr-top-right">
					<h4>CUSTOMER CARE</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Fusce tempus justo ac</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 ftr-top-grids">
				<div class="ftr-top-left">
					<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
				</div>
				<div class="ftr-top-right">
					<h4>GOOD QUALITY</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Fusce tempus justo ac</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
//更改当前页
function changePage(pageNum) {
	//1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	//2 提交表单
	$("#pageForm").submit();
};

// 更改每页条数
function changePageSize(pageSize) {
	//1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	//2 提交表单
	$("#pageForm").submit();
};

</script>

<!-- //footer-top -->
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

        w3ls.cart.on('w3sb_checkout', function (evt) {
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
					end: '1388268325',
					now: '1387999995',
					labels: true,
					style: {
						element: "",
						textResponsive: .5,
						days: {
							gauge: {
								thickness: .10,
								bgColor: "rgba(0,0,0,0)",
								fgColor: "#1abc9c",
								lineCap: 'round'
							},
							textCSS: 'font-weight:300; color:#fff;'
						},
						hours: {
							gauge: {
								thickness: .10,
								bgColor: "rgba(0,0,0,0)",
								fgColor: "#05BEF6",
								lineCap: 'round'
							},
							textCSS: ' font-weight:300; color:#fff;'
						},
						minutes: {
							gauge: {
								thickness: .10,
								bgColor: "rgba(0,0,0,0)",
								fgColor: "#8e44ad",
								lineCap: 'round'
							},
							textCSS: ' font-weight:300; color:#fff;'
						},
						seconds: {
							gauge: {
								thickness: .10,
								bgColor: "rgba(0,0,0,0)",
								fgColor: "#f39c12",
								lineCap: 'round'
							},
							textCSS: ' font-weight:300; color:#fff;'
						}

					},
					onEndCallback: function() {
						console.log("Time out!");
					}
				});
			});
		</script>
<!-- //countdown.js -->
<!-- menu js aim -->
<script src="portal/js/jquery.menu-aim.js"> </script>
<script src="portal/js/main.js"></script>
<script type="text/javascript">
	


</script>

<!-- Resource jQuery -->
<!-- //menu js aim -->
<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>