<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>成功案例————帝六人网，中国领先的一站式的企业全生命周期服务平台</title>

</head>
<%@ include file="/head.jsp"%>

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