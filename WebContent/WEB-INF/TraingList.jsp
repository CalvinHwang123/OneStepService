<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/includeHeadLeft.jsp"%>
	<div class="col-md-9 column">
		<form id="pageForm" action="PortalManage/traingList.action">
			<!-- 隐藏域 每页条数 -->
			<input type="hidden" id="pageSizeInput" name="pageSize"
				value="${pageInfo.getPageSize()}">
			<!-- 隐藏域 当前页数 -->
			<input type="hidden" id="currentPageInput" name="pageNum"
				value="${pageInfo.getPageNum()}"> <input type="hidden"
				id="currentPageInput" name="pageNum"
				value="${pageInfo.getPageNum()}">

			<div class="form-group" style="width: 15%;">
				<label class="sr-only" for="name">名称</label> <input type="date"
					class="form-control" id="name" placeholder="请输入名称">
			</div>


			<div class="table-responsive">

				<table class="table table-hover">
					<caption>我的交易明细</caption>
					<thead>
						<tr>
							<th>名称</th>
							<th>城市</th>
							<th>邮编</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Tanmay</td>
							<td>Bangalore</td>
							<td>560001</td>
						</tr>
						<tr>
							<td>Sachin</td>
							<td>Mumbai</td>
							<td>400003</td>
						</tr>
						<tr>
							<td>Uma</td>
							<td>Pune</td>
							<td>411027</td>
						</tr>
					</tbody>
				</table>

			</div>
		</form>
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
	
	</div>
	</div>
	</div>
	</div>
	<%@include file="/end.jsp"%>


</body>
</html>