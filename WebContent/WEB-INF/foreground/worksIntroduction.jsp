<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<%@ include file="/head.jsp"%>
<body>
	<!--导航栏-->
	<div class="container">
		<ol class="breadcrumb breadcrumb1">
			<li><a href=<%=path + "/Portal/workInfoList.action"%>>作品首页</a></li>
			<c:forEach var="i" items="${worksIntroduction}">
			<li class="active">${i.worksName}</li>
			</c:forEach>
		</ol>
		<div class="clearfix"></div>
	</div>
	<!--导航栏-->
	<!-- 内容 -->
	<div class="single-page">
		<div class="single-page-row" id="detail-21">
			<div class="col-md-6 single-top-left">
				<div class="flexslider">
					<div class="flex-viewport"
						style="overflow: hidden; position: relative;">
						<li><img src=<%=path+"/images/Page-advertisement.png" %> draggable="false" class="flex-active"></li>
					</div>
				</div>
			</div>
			
<!-- 内容右部div -->
			<c:forEach var="i" items="${worksIntroduction}">
			<div class="col-md-6 single-top-right">
				<h3 class="item_name">${i.worksName}</h3>
				<p>处理时间: 作品项目将在1-2个工作日内发货.</p>
				<!-- <div class="single-rating">
					<ul>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
						<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
						<li class="rating">20 reviews</li>
						<li><a href="#">Add your review</a></li>
					</ul>
				</div> -->
				<div class="single-price">
					<ul>
						<li>￥${i.worksPrice}</li>
						<!--<li><del>$600</del></li>  -->
						<li><span class="w3off">作品作者:${i.userName.userName}</span></li>
						<li>发布时间: 2018-6-23</li>
					</ul>
				</div>
				<p class="single-price-text">作品介绍.</p>
				<form action="#" method="post">
					<input name="cmd" value="_cart" type="hidden"> <input
						name="add" value="1" type="hidden"> <input
						name="w3ls_item" value="${i.worksName}" type="hidden"> <input
						name="amount" value="${i.worksPrice}" type="hidden">
					<button type="submit" class="w3ls-cart">
						<i class="fa fa-cart-plus" ></i> 购买
					</button>
				</form>
			</div>
			</c:forEach>
<!-- 内容右部div -->

			<div class="clearfix"></div>
		</div>
		<div class="single-page-icons social-icons">
			<ul>
				<li><h4>Share on</h4></li>
				<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
				<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
				<li><a href="#" class="fa fa-google-plus icon googleplus">
				</a></li>
				<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
				<li><a href="#" class="fa fa-rss icon rss"> </a></li>
			</ul>
		</div>
		<div></div>
	</div>
	<!-- 内容 -->
	<!-- 底部 -->
	<%@ include file="/end.jsp"%>
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
		<!--底部 -->
</body>
</html>
	