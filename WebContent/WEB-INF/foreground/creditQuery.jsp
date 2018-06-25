<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="portal/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="portal/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="portal/css/font-awesome.css" rel="stylesheet">
<style type="text/css">
.bgt-logo-wrap {
	text-align: center;
	padding: 80px 0 38px;
}

.bgt-logo-wrap img {
	width: 30%;
	margin: 0 auto;
}

.header-search {
	width: 40%;
	margin: 30px auto;
	float: none;
}

ul {
	text-decoration: none;
}
</style>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/json2.js"></script>
<title>信用查询————帝六人网，中国领先的一站式的企业全生命周期服务平台</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="header-search">
		<form id="pageForm" action="Portal/creditQuery.action" method="post">
			<!-- 隐藏域 每页条数 -->
			<input type="hidden" id="pageSizeInput" name="pageSize"
				value="${pageInfo.pageSize }">
			<!-- 隐藏域 当前页数 -->
			<input type="hidden" id="currentPageInput" name="pageNum"
				value="${pageInfo.pageNum}"> 
			<input id="input_search" type="search" name="title" value="${condition.title }" 
			placeholder="请输入要查询的服务商名称" required="">
			<button type="submit" class="btn btn-default" aria-label="Left Align">
				<i class="fa fa-search" aria-hidden="true"> </i>
			</button>
			<div id="search_suggest" style="text-align: left; padding-left: 20px;">
			</div>
		</form>
	</div>
	
	<!-- 没有数据 -->
	<c:choose>
		<c:when test="${pageInfo eq null }">
			<div class="bgt-logo-wrap">
				<img src="http://as.zbjimg.com/static/baoguangtai/widget/search-credit/search-credit-logo/img/searchlogo_660f4c1.png">
			</div>
		</c:when>
		<c:otherwise>
			<table class="layui-table">
				<thead>
					<tr>
						<th>序号</th>
						<!-- <th>用户名</th> -->
						<th>信用类型</th>
						<th>信用变动原因</th>
						<th>信用分</th>
				</thead>
				<tbody>
					<c:forEach items="${pageInfo.list}" var="credit" begin="0"
						varStatus="s">
						<tr>
							<td><c:out value="${s.index+1}"></c:out></td>
							<%-- <td><c:out value="${credit.userID}"></c:out></td> --%>
							<td><c:out value="${credit.creditType}"></c:out></td>
							<td><c:out value="${credit.creditWhy}"></c:out></td>
							<td><c:out value="${credit.creditPoints}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<%@ include file="/pagefoot.jsp"%>
		</c:otherwise>
	</c:choose>

	<script type="text/javascript">
		// 更改当前页
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

		$(function() {
			$("#input_search")
					.on(
							'input propertychange',
							function() {
								var searchKey = $.trim($(this).val());
								if (searchKey.length > 0) {
									$
											.ajax({
												url : $("base").attr("href")
														+ "Portal/creditQuerySuggest.action",
												type : "post",
												dataType : "text",
												contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
												data : JSON.stringify({
													"userName" : searchKey
												}),
												async : true,
												success : function(msg) {
													var userNameListArr = JSON
															.parse(msg);
													$("#search_suggest").append(
															"<ul></ul>");
													for (var i = 0; i < userNameListArr.length; ++i) {
														$("#search_suggest ul")
																.append(
																		"<li><a href='javascript:void(0)' onclick='submitSearch(this)'>"
																				+ userNameListArr[i]
																				+ "</a></li>");
													}
												}
											});
								} else {
									$("#search_suggest").html("");
								}
							});
		});

		function submitSearch(node) {
			var suggestKey = node.text;
			$("#input_search").val(suggestKey);
			$("#pageForm").submit();
		}
	</script>
</body>
</html>