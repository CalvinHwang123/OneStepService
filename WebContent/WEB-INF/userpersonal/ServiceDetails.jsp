<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
	String basepath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>服务商详情</title>
<script type="text/javascript" src=<%=basepath + "/js/jquery.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/js/worksindex.js"%>></script>
</head>
<body>

	<%@ include file="/head.jsp"%>
	<!-- offers-page -->
	<div class="wthree-offers">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">${Service.userName}</h3>
			<c:if test="${sessionScope.forelogin == null}">
				<button class="w3ls-cart w3ls-cart-like" style="width:10%;"
					onclick = "collectServer()">
					<i class="fa fa-heart-o" aria-hidden="true"></i>收藏店铺
				</button>
			</c:if>
			<c:if test="${sessionScope.forelogin != null}">
				<button class="w3ls-cart w3ls-cart-like" style="width:10%;"
					onclick = "collectServer()">
					<i class="fa fa-heart-o" aria-hidden="true"></i>收藏店铺
				</button>
			</c:if>
			<div class="w3ls-add-grids w3agile-add-products">
				<a href="#">
				</a>
			</div>
			
			<div class="offer-bottom">
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info2">
						<h4>简介</h4>
						<h6>${Service.userIntroduction}!</h6>
					</div>
				</div>
				<div class="col-md-6 offer-bottom-grids">
					<div class="offer-bottom-grids-info">
						<h4>联系方式</h4>
						<h6>
							电话号码:${Service.userPhone}<br>地址: ${Service.userAddress}
						</h6>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<h3 class="w3ls-title w3ls-title1">服务商的作品</h3>
			<c:forEach var="i"  items="${works}" varStatus="status">				
				<div class="offer-card-row">
					<div class="col-md-4 offer-card-grids" style="margin: 10px">
						<h4>${i.worksName}</h4>
						<p>${i.worksContext}</p>
						<a href="products.html">Shop Now <i
							class="fa fa-arrow-circle-right" aria-hidden="true"></i></a>
					</div>
					<c:if test="status %3 ==0">
						<div class="clearfix" ></div>
					</c:if>
				</div>
			</c:forEach>

		</div>
	</div>
	<!-- //login-page -->
	<!-- //footer-top -->
	<%@include file="/end.jsp"%>
	<script type="text/javascript">
	//收藏服务商
	function collectServer(){
		
		
		
	}
	
	
	</script>
</body>
</html>