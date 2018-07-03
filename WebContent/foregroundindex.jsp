<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
					<img src="portal/images/主页1.jpg" alt="" class="img-responsive" />
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
					<img src="portal/images/timg.jpg" alt="" class="img-responsive" />
					<div class="carousel-caption kb_caption kb_caption_right">
						<h3 data-animation="animated fadeInDown">找专业的人，做专业的事</h3>
						<h4 data-animation="animated fadeInUp">Find professional
							people, do professional things</h4>
					</div>
				</div>

				<div class="item">
					<!-- Third-Slide -->
					<img src="portal/images/主页3.jpg" alt="" class="img-responsive" />
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
					<div class="clearfix"></div>
					<h3 class="w3ls-title" >最新作品</h3>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home"
							aria-labelledby="home-tab">
							<div class="tabcontent-grids">
								<div id="owl-demo" class="owl-carousel">
									<c:forEach var="i" items="${pageInfo.list}">
										<div class="item">
											<div class="glry-w3agile-grids agileits">
												<div class="new-tag">
													<h6>New</h6>
												</div>
												<a href="Portal/worksIntroduction.action?worksId=${i.worksId}"><img src="${i.url}"
													alt="img"></a>
												<div class="view-caption agileits-w3layouts">
													<h4>
														<a href="Portal/worksIntroduction.action?worksId=${i.worksId}">${i.worksName}</a>
													</h4>
													<h5>价格:${i.worksPrice}</h5>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>&nbsp;&nbsp;&nbsp;<a
					href=<%=path + "/Portal/workInfoList.action"%> class="w3ls-title"><<
						更多作品 >></a>
			</div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- add-products -->
	<div class="add-products">
		<div class="container">
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a href="Portal/successCaseList.action">
						<h6>
							成功案例 <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-mdl">
					<a href="Portal/userStoryList.action">
						<h6>
							雇主故事<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
						</h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-mdl1" style="background: url(portal/images/exposure.jpg) no-repeat 0px 0px;
	background-size:cover;">
					<a href="Portal/foreViolationsList.action">
						<h6>
							曝光台<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
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
			<h3 class="w3ls-title">精选行业分类</h3>
			<div class="deals-row">
				<div class="col-md-2 focus-grid">
					<a href="products.html" class="wthree-btn">
						<div class="focus-image">
							<i class="fa fa-mobile"></i>
						</div>
						<h4 class="clrchg">手机行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid">
					<a href="products.html" class="wthree-btn wthree1">
						<div class="focus-image">
							<i class="fa fa-laptop"></i>
						</div>
						<h4 class="clrchg">IT行业</h4>
					</a>
				</div>

				<div class="col-md-2 focus-grid">
					<a href="products3.html" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-home"></i>
						</div>
						<h4 class="clrchg">装修行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products9.html" class="wthree-btn wthree3">
						<div class="focus-image">
							<i class="fa fa-book"></i>
						</div>
						<h4 class="clrchg">文化教育</h4>
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
						<h4 class="clrchg">游戏行业</h4>
					</a>
				</div>

				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products7.html" class="wthree-btn wthree5">
						<div class="focus-image">
							<i class="fa fa-medkit"></i>
						</div>
						<h4 class="clrchg">医疗行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid w3focus-grid-mdl">
					<a href="products8.html" class="wthree-btn wthree1">
						<div class="focus-image">
							<i class="fa fa-car"></i>
						</div>
						<h4 class="clrchg">汽车行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid">
					<a href="products5.html" class="wthree-btn wthree2">
						<div class="focus-image">
							<i class="fa fa-cutlery"></i>
						</div>
						<h4 class="clrchg">餐饮行业</h4>
					</a>
				</div>
				<div class="col-md-2 focus-grid">
					<a href="products4.html" class="wthree-btn wthree5">
						<div class="focus-image">
							<i class="fa fa-futbol-o"></i>
						</div>
						<h4 class="clrchg">运动行业</h4>
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
						<h4>免费发货</h4>
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
						<h4>客户信赖</h4>
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
						<h4>品质保证</h4>
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
					<li><a href="#" class="fa fa-facebook icon facebook"
						onclick="return false"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"
						onclick="return false"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus"
						onclick="return false"> </a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"
						onclick="return false"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"
						onclick="return false"> </a></li>
				</ul>
				<ul class="apps">
					<li><h4>Download Our app :</h4></li>
					<li><a href="#" class="fa fa-apple" onclick="return false"></a></li>
					<li><a href="#" class="fa fa-windows" onclick="return false"></a></li>
					<li><a href="#" class="fa fa-android" onclick="return false"></a></li>
				</ul>
			</div>
			<div class="col-md-6 subscribe-right">
				<h4>查找适合您的服务商！</h4>
				<form action="Portal/serviceProviders.action" method="post">
					<input type="text" name="title" placeholder="请输入服务商名称" required="">
					<input type="submit" value="搜索">
				</form>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- footer -->
	<%@include file="end.jsp"%>
</body>
</html>