<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>雇主故事————帝六人网，中国领先的一站式的企业全生命周期服务平台</title>

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
<%@ include file="/head.jsp"%>
<!-- add-products -->
<div class="add-products">
	<div class="container">
		<h3 class="w3ls-title"></h3>
		<div class="add-products-row">
			<c:forEach items="${pageInfo.list}" var="story" begin="0"
				varStatus="s">
				<c:if test="${story.imageURL == null}">
					<div class="w3ls-add-grids"
						style="background:url(<%=basePath%>/portal/images/img2.jpg)no-repeat 0px 0px;
						background-size: cover;">
						<a href="PortalManage/userStory.action?storyID=${story.storyID}">
							<h6>
								<c:out value="${story.storyTitle}"></c:out>
								<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
							</h6>
						</a>
					</div>
				</c:if>
				<c:if test="${story.imageURL != null}">
					<div class="w3ls-add-grids"
						style="background:url(${story.imageURL})no-repeat 0px 0px;
			background-size: cover;">
						<a href="PortalManage/userStory.action?storyID=${story.storyID}">
							<h6>
								<c:out value="${story.storyTitle}"></c:out>
								<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
							</h6>
						</a>
					</div>
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
<%@include file="/end.jsp"%>
</body>
</html>