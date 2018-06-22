<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i> 我的账户<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><c:out value="${forelogin.userType}"></c:out></li>
							<li><a href="ForeLogin.jsp">登录 </a></li>
							<li><a href="ForeSign.jsp">注册</a></li>
							<li><a href="login.html">我的命令</a></li>
							<li><a href="login.html">我的钱包</a></li>
							<li><a href="BusiManage/usersExit.action">退出</a></li>
						</ul></li>
					<c:if test="${forelogin.userType eq ''}">
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
							<li><a href="offers.html">规则中心</a></li>
							<li><a href="Portal/userStoryList.action">雇主故事</a></li>
							<li><a href="PortalManage/foreViol.action">曝光台</a></li>
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
</body>
</html>