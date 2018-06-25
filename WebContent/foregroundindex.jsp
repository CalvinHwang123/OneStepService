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
	<%@ include file="/head.jsp"%>	
	<!-- banner -->
	<div class="banner">
		<div id="kb" class="carousel kb_elastic animate_text kb_wrapper"
			data-ride="carousel" data-interval="6000" data-pause="hover">
			<!-- Wrapper-for-Slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<!-- First-Slide -->
					<img src="portal/images/5.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_right">
						<h3 data-animation="animated flipInX">
							超过187,863 <span>设计人才</span> 供您挑选
						</h3>
						<h4 data-animation="animated flipInX">More than 187863 design
							talents for you to choose</h4>
					</div>
				</div>
				<div class="item">
					<!-- Second-Slide -->
					<img src="portal/images/8.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_right">
						<h3 data-animation="animated fadeInDown">找专业的人，做专业的事</h3>
						<h4 data-animation="animated fadeInUp">Find professional
							people, do professional things</h4>
					</div>
				</div>

				<div class="item">
					<!-- Third-Slide -->
					<img src="portal/images/3.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_center">
						<h3 data-animation="animated fadeInLeft">为6,000,000企业主提供服务</h3>
						<h4 data-animation="animated flipInX">Providing service for
							6000000 business owners</h4>
					</div>
				</div>

			</div>
			<!-- Left-Button -->
			<a class="left carousel-control kb_control_left" href="#kb"
				role="button" data-slide="prev"> <span
				class="fa fa-angle-left kb_icons" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a>
			<!-- Right-Button -->
			<a class="right carousel-control kb_control_right" href="#kb"
				role="button" data-slide="next"> <span
				class="fa fa-angle-right kb_icons" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		<script src="portal/js/custom.js"></script>
	</div>
	<!-- //banner -->
	<div class="tlinks">
		Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
	</div>
	<!-- welcome -->
	<div class="welcome">
		<div class="container">
			<div class="welcome-info">
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">
					<ul id="myTab" class=" nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home"
							id="home-tab" role="tab" data-toggle="tab"> <i
								class="fa fa-laptop" aria-hidden="true"></i>
								<h5>IT作品</h5>
						</a></li>
						<li role="presentation"><a href="#carl" role="tab"
							id="carl-tab" data-toggle="tab"> <i class="fa fa-female"
								aria-hidden="true"></i>
								<h5>服务行业</h5>
						</a></li>
						<li role="presentation"><a href="#james" role="tab"
							id="james-tab" data-toggle="tab"> <i class="fa fa-gift"
								aria-hidden="true"></i>
								<h5>食品行业</h5>
						</a></li>
						<li role="presentation"><a href="#decor" role="tab"
							id="decor-tab" data-toggle="tab"> <i class="fa fa-home"
								aria-hidden="true"></i>
								<h5>装修行业</h5>
						</a></li>
						<li role="presentation"><a href="#sports" role="tab"
							id="sports-tab" data-toggle="tab"> <i
								class="fa fa-motorcycle" aria-hidden="true"></i>
								<h5>工业制造</h5>
						</a></li>
					</ul>
					<div class="clearfix"> </div>
					<h3 class="w3ls-title" >作品入口</h3>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home"
							aria-labelledby="home-tab">
							<div class="tabcontent-grids">
								<div id="owl-demo" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products.html"><img src="portal/images/e1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Audio speaker</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$100</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Audio speaker" /> <input
														type="hidden" name="amount" value="200.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products.html"><img src="portal/images/e2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Refrigerator</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$300</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Refrigerator" /> <input
														type="hidden" name="amount" value="700.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products.html"><img src="portal/images/e3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Smart Phone</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$70</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Smart Phone" /> <input
														type="hidden" name="amount" value="300.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products.html"><img src="portal/images/e4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Digital Camera</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Digital Camera" />
													<input type="hidden" name="amount" value="100.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products.html"><img src="portal/images/e1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Audio speaker</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$100</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Audio speaker" /> <input
														type="hidden" name="amount" value="200.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products.html"><img src="portal/images/e2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Refrigerator</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$300</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Refrigerator" /> <input
														type="hidden" name="amount" value="700.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products.html"><img src="portal/images/e3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Smart Phone</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$70</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Smart Phone" /> <input
														type="hidden" name="amount" value="300.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products.html"><img src="portal/images/e4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products.html">Digital Camera</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Digital Camera" />
													<input type="hidden" name="amount" value="100.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="carl"
							aria-labelledby="carl-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo1").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});

									});
								</script>
								<div id="owl-demo1" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products1.html"><img src="portal/images/f1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">T Shirt</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$10</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="T Shirt" /> <input
														type="hidden" name="amount" value="10.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br> Off
												</h6>
											</div>
											<a href="products1.html"><img src="portal/images/f2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Women Sandal</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$20</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Women Sandal" /> <input
														type="hidden" name="amount" value="20.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products1.html"><img src="portal/images/f3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Jewellery</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$60</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Jewellery" /> <input
														type="hidden" name="amount" value="60.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products1.html"><img src="portal/images/f4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Party dress</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$15</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Party dress" /> <input
														type="hidden" name="amount" value="15.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products1.html"><img src="portal/images/f1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">T Shirt</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$10</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="T Shirt" /> <input
														type="hidden" name="amount" value="10.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br> Off
												</h6>
											</div>
											<a href="products1.html"><img src="portal/images/f2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Women Sandal</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$20</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Women Sandal" /> <input
														type="hidden" name="amount" value="20.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products1.html"><img src="portal/images/f3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Jewellery</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$60</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Jewellery" /> <input
														type="hidden" name="amount" value="60.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products1.html"><img src="portal/images/f4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products1.html">Party dress</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$15</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Party dress" /> <input
														type="hidden" name="amount" value="15.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="james"
							aria-labelledby="james-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo2").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});

									});
								</script>
								<div id="owl-demo2" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Coffee Mug</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$14</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Coffee Mug" /> <input
														type="hidden" name="amount" value="14.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br> Off
												</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Teddy bear</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$20</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Teddy bear" /> <input
														type="hidden" name="amount" value="20.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Chocolates</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$60</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Chocolates" /> <input
														type="hidden" name="amount" value="60.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products6.html"><img src="portal/images/p4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Gift Card</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$22</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Gift Card" /> <input
														type="hidden" name="amount" value="22.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Coffee Mug</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$14</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Coffee Mug" /> <input
														type="hidden" name="amount" value="14.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br> Off
												</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Teddy bear</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$20</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Teddy bear" /> <input
														type="hidden" name="amount" value="20.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products6.html"><img src="portal/images/p3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Chocolates</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$60</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Chocolates" /> <input
														type="hidden" name="amount" value="60.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products6.html"><img src="portal/images/p4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products6.html">Gift Card</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$22</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Gift Card" /> <input
														type="hidden" name="amount" value="22.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="decor"
							aria-labelledby="decor-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo3").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});

									});
								</script>
								<div id="owl-demo3" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products3.html"><img src="portal/images/h1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Wall Clock</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Wall Clock" /> <input
														type="hidden" name="amount" value="80.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													10%<br>Off
												</h6>
											</div>
											<a href="products3.html"><img src="portal/images/h2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Plants & Vases</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$40</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Plants & Vases" />
													<input type="hidden" name="amount" value="40.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products3.html"><img src="portal/images/h3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Queen Size Bed</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$250</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Queen Size Bed" />
													<input type="hidden" name="amount" value="250.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products3.html"><img src="portal/images/h4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">flower pot</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$30</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="flower pot" /> <input
														type="hidden" name="amount" value="30.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>Sale</h6>
											</div>
											<a href="products3.html"><img src="portal/images/h1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Wall Clock</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Wall Clock" /> <input
														type="hidden" name="amount" value="80.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													10%<br>Off
												</h6>
											</div>
											<a href="products3.html"><img src="portal/images/h2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Plants & Vases</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$40</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Plants & Vases" />
													<input type="hidden" name="amount" value="40.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products3.html"><img src="portal/images/h3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">Queen Size Bed</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$250</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Queen Size Bed" />
													<input type="hidden" name="amount" value="250.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products3.html"><img src="portal/images/h4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products3.html">flower pot</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$30</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="flower pot" /> <input
														type="hidden" name="amount" value="30.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="sports"
							aria-labelledby="sports-tab">
							<div class="tabcontent-grids">
								<script>
									$(document).ready(function() {
										$("#owl-demo4").owlCarousel({

											autoPlay : 3000, //Set AutoPlay to 3 seconds

											items : 4,
											itemsDesktop : [ 640, 5 ],
											itemsDesktopSmall : [ 414, 4 ],
											navigation : true

										});
									});
								</script>
								<div id="owl-demo4" class="owl-carousel">
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products4.html"><img src="portal/images/s1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Roller Skates</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$180</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Roller Skates" /> <input
														type="hidden" name="amount" value="180.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products4.html"><img src="portal/images/s2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Football</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$70</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Football" /> <input
														type="hidden" name="amount" value="70.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br>Off
												</h6>
											</div>
											<a href="products4.html"><img src="portal/images/s3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Nylon Shuttle</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$56</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Nylon Shuttle" /> <input
														type="hidden" name="amount" value="56.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products4.html"><img src="portal/images/s4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Cricket Kit</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Cricket Kit" /> <input
														type="hidden" name="amount" value="80.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>New</h6>
											</div>
											<a href="products4.html"><img src="portal/images/s1.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Roller Skates</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$180</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Roller Skates" /> <input
														type="hidden" name="amount" value="180.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products4.html"><img src="portal/images/s2.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Football</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$70</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Football" /> <input
														type="hidden" name="amount" value="70.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<div class="new-tag">
												<h6>
													20% <br>Off
												</h6>
											</div>
											<a href="products4.html"><img src="portal/images/s3.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Nylon Shuttle</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$56</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Nylon Shuttle" /> <input
														type="hidden" name="amount" value="56.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="glry-w3agile-grids agileits">
											<a href="products4.html"><img src="portal/images/s4.png"
												alt="img"></a>
											<div class="view-caption agileits-w3layouts">
												<h4>
													<a href="products4.html">Cricket Kit</a>
												</h4>
												<p>Lorem ipsum dolor sit amet consectetur</p>
												<h5>$80</h5>
												<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart" /> <input
														type="hidden" name="add" value="1" /> <input
														type="hidden" name="w3ls_item" value="Cricket Kit" /> <input
														type="hidden" name="amount" value="80.00" />
													<button type="submit" class="w3ls-cart">
														<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to
														cart
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>&nbsp;&nbsp;&nbsp;<a href=<%=path+"/Portal/workInfoList.action" %> class="w3ls-title"><label><< 更多 >></label></a>
			</div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- add-products -->
	<div class="add-products">
		<div class="container">
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a href="products1.html">
						<h4>
							作品交易数量前 <span>10</span> 名
						</h4>
						<h6>
							Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-mdl">
					<a href="products1.html">
						<h4>
							作品好评率前<span>10</span>名
						</h4>
						<h6>
							Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-mdl1">
					<a href="products.html">
						<h4>
							<span> Hurry !</span>
						</h4>
						<h6>
							Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="clerfix"></div>
			</div>
		</div>
	</div>
	<!-- //add-products -->
	<!-- coming soon -->
	<div class="soon">
		<div class="container">
			<h3>帝六人15周年年庆</h3>
			<h4>礼品使用倒计时</h4>
			<div id="countdown1" class="ClassyCountdownDemo"></div>
		</div>
	</div>
	<!-- //coming soon -->
	<!-- deals -->
	<div class="deals">
		<div class="container">
			<h3 class="w3ls-title">当日交易</h3>
			<div class="deals-row">
				<div class="col-md-3 focus-grid">
					<a href="products.html" class="wthree-btn">
						<div class="focus-image">
							<i class="fa fa-mobile"></i>
						</div>
						<h4 class="clrchg">品牌设计</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products.html" class="wthree-btn wthree1">
						<div class="focus-image">
							<i class="fa fa-laptop"></i>
						</div>
						<h4 class="clrchg">营销传播</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products4.html" class="wthree-btn wthree2">
						<div class="focus-image">
							<i class="fa fa-wheelchair"></i>
						</div>
						<h4 class="clrchg">网站建设</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products3.html" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-home"></i>
						</div>
						<h4 class="clrchg">软件开发</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products9.html" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-book"></i>
						</div>
						<h4 class="clrchg">电商服务</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products1.html" class="wthree-btn wthree4">
						<div class="focus-image">
							<i class="fa fa-asterisk"></i>
						</div>
						<h4 class="clrchg">动漫影视</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products2.html" class="wthree-btn wthree2">
						<div class="focus-image">
							<i class="fa fa-gamepad"></i>
						</div>
						<h4 class="clrchg">工业设计</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products5.html" class="wthree-btn wthree">
						<div class="focus-image">
							<i class="fa fa-shopping-basket"></i>
						</div>
						<h4 class="clrchg">工程设计</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products7.html" class="wthree-btn wthree5">
						<div class="focus-image">
							<i class="fa fa-medkit"></i>
						</div>
						<h4 class="clrchg">餐饮行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products8.html" class="wthree-btn wthree1">
						<div class="focus-image">
							<i class="fa fa-car"></i>
						</div>
						<h4 class="clrchg">游戏</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products5.html" class="wthree-btn wthree2">
						<div class="focus-image">
							<i class="fa fa-cutlery"></i>
						</div>
						<h4 class="clrchg">农林牧渔</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products4.html" class="wthree-btn wthree5">
						<div class="focus-image">
							<i class="fa fa-futbol-o"></i>
						</div>
						<h4 class="clrchg">旅游行业</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products2.html" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-gamepad"></i>
						</div>
						<h4 class="clrchg">工程设计</h4>
					</a>
				</div>
				<div class="col-md-3 focus-grid">
					<a href="products6.html" class="wthree-btn ">
						<div class="focus-image">
							<i class="fa fa-gift"></i>
						</div>
						<h4 class="clrchg">IT服务</h4>
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //deals -->
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
	<!-- //footer-top -->
	<!-- subscribe -->
	<div class="subscribe">
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus">
					</a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li>
				</ul>
				<ul class="apps">
					<li><h4>Download Our app :</h4></li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul>
			</div>
			<div class="col-md-6 subscribe-right">
				<h4>注册电子邮件，获得2%的折扣！</h4>
				<form action="#" method="post">
					<input type="text" name="email" placeholder="Enter your Email..."
						required=""> <input type="submit" value="Subscribe">
				</form>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- footer -->
	<%@include file="end.jsp"%>

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