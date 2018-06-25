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
<script src=<%=path+"/js/worksindex.js"%>></script>
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
	<!-- 右部div -->
	<div class="container">
		<div class="col-md-9 product-w3ls-right">
			<!-- breadcrumbs -->
			<ol class="breadcrumb breadcrumb1" id="breadcrumb1">
				<li><a href=<%=path + "/foregroundindex.jsp"%>>首页</a></li>
				<li class="active"><a href=<%=path + "/Portal/workInfoList.action"%>>作品</a></li>
				
			</ol>
			<!-- 搜索框 -->
			&nbsp;&nbsp;&nbsp;
			<div class="header-search">
				<form action=<%=path + "/Portal/workInfoList.action"%> id="workslook" method="post">
					<input type="hidden" id="beWorksPrice" name="beWorksPrice" value=171120 title="${beWorksPrice}"/>
					<input type="hidden" id="endWorksPrice" name="endWorksPrice" value=171120 title="${endWorksPrice}"/>
					<input type="hidden" id="classPid" name="classPid" value=171120 title="${classPid}"/>
					<input type="hidden" id="startDate" name="startDate" value="" title="${checkbox}"/>
					
					<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}" />
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}" />
					
					<input id="classname" name="title" placeholder="按作品名搜索" required="" type="search" title="${looktitle}">
					<button id="classnamelook" type="submit" class="btn btn-default" aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
				</form>
			</div>
		<!-- 搜索框 -->
		<div class="clearfix"></div>
		<!-- 所有作品div -->
		<div class="products-row">
				<c:forEach var="i" items="${pageInfo.list}">
					<div class="col-md-3 product-grids">
						<div class="agile-products">
							<a href=<%=path + "/Portal/worksIntroduction.action?worksId="%>+${i.worksId}><img src=<%=path%>+${i.url}
								class="img-responsive" alt="img"></a>
							<div class="agile-product-text">
								<h5>
									<a href="single.html">作品:<c:out value="${i.worksName}"></c:out></a>
								</h5>
								<h6>
									作者:
									<c:out value="${i.userName.userName}"></c:out>
								</h6>
								<h6>
									分类:
									<c:out value="${i.classificationName.classificationName}"></c:out>
								</h6>
								<h6>
									价格:
									<c:out value="${i.worksPrice}"></c:out>
								</h6>
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
		</div>
		<!-- 右部div -->
		<!-- 左部div -->
		<form action=<%=path + "/Portal/classpricevaluelook.action"%> method="post">
		<div class="col-md-3 rsidebar">
			<div class="rsidebar-top">
				<div class="slider-left">
					<h4>按价格分类</h4>
					<div class="row row1 scroll-pane jspScrollable"
						style="overflow: hidden; padding: 0px; width: 223px;" tabindex="0">
						<div class="jspContainer" style="width: 223px; height: 160px;">
							<div id="jspPane" class="jspPane"style="padding: 0px; width: 246px; top: 0px;" title="${worksPrice}">
								<label class="checkbox"><input class="racheckbox" name="checkbox" type="radio" value="0-10000" >
								<i></i>￥0 - ￥10000 </label>
								<label class="checkbox"><input class="racheckbox"  name="checkbox" type="radio" value="10000-30000">
								<i></i>￥10000 - ￥30000 </label>
								<label class="checkbox" ><input class="racheckbox" name="checkbox" type="radio" value="30000-80000" >
								<i></i>￥30000 - ￥80000 </label>
								<label class="checkbox"><input class="racheckbox" name="checkbox" type="radio"  value="80000-1000000" >
								<i></i>More</label>
							</div>
						</div>
					</div>
				</div>
				<div class="sidebar-row">
					<h4>按类型分类</h4>
					<ul class="faq">
					<c:forEach var="i" items="${oneclassmenulist}">
						<li class="item1"><a ><c:out value="${i.classificationName}"></c:out><span
								class="glyphicon glyphicon-menu-down"></span></a>
							<ul style="display: none;">
							<c:forEach var="j" items="${twoclassmenulist}">
							<c:if test="${j.classificationPid==i.classificationId}">
								<li ><a class="twoclassname" value="${j.classificationId}" title="${j.classificationName}"><c:out value="${j.classificationName}"></c:out></a></li>
							</c:if>
							</c:forEach>
							</ul></li>
					</c:forEach>
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
			</div>
		</div>
		</form>
		<!-- 左部div -->
		<div class="clearfix"></div>
<!-- 分页 -->
			<div class="page">
			<c:choose>
				<c:when test="${pageInfo.getPages() == 0}">
				<blockquote class="layui-elem-quote layui-quote-nm">尊敬的用户，当前列表没有数据~~~</blockquote>
				</c:when>
				<c:otherwise>
					<div>
  				共${pageInfo.getPages()}页，每页 <select  
					style="width: 6%; height: 30px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
  					<option value="5" ${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>  
					<option value="10"
  						${pageInfo.getPageSize() == 10 ? "selected" : ""}>10</option>  
					<option value="20"
  						${pageInfo.getPageSize() == 20 ? "selected" : ""}>20</option>  
				</select> 条
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
  							onclick="changePage(${pageInfo.pageNum-1})"><c:out  
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
				</c:otherwise>
			</c:choose>
		</div>
<!-- 分页 -->	
	</div>
		<script type="text/javascript">
//更改当前页
function changePage(pageNum) {
	//1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	//2 提交表单
	$("#workslook").submit();
};

// 更改每页条数
function changePageSize(pageSize) {
	//1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	//2 提交表单
	$("#pageForm").submit();
};

</script>

	<!-- product -->
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