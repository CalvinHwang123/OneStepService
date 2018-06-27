<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>雇主中心-交易明细</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@ include file="/WEB-INF/includeLeft.jsp"%>
	<div class="col-md-10 column">
		<div class='order-wrap'>
			<form id="pageForm" action="BusiManage/tradingList.action">
				<div class='top-nav-wrap order-top-nav J-state' data-state='0'
					id='utopia_widget_6'>
					<!-- 隐藏域 每页条数 -->
					<input type="hidden" id="pageSizeInput" name="pageSize"
						value="${pageInfo.getPageSize()}">
					<!-- 隐藏域 当前页数 -->
					<input type="hidden" id="currentPageInput" name="pageNum"
						value="${pageInfo.getPageNum()}"> <input type="hidden"
						id="currentPageInput" name="pageNum"
						value="${pageInfo.getPageNum()}">

					<div class="form-group" style="width: 20%;">
						<label class="sr-only" for="name">开始时间</label> <input type="date"
							class="form-control" id="name" placeholder="请输入名称" name="startDate" value="${condition.startDate}">
					</div>

					<div class="form-group" style="width: 20%;">
						<label class="sr-only" for="name">-截止时间</label> <input type="date"
							class="form-control" id="name" placeholder="请输入名称" name="endDate" value="${condition.endDate}">
					</div>
				</div>
				<div class='order-top-banner' id='utopia_widget_7'>
					<div class='top-banner-tips'></div>
					<div class='top-banner-cont'></div>
				</div>
				<div class='order-bg'>
					<div class='options'>
						<div class="table-responsive">

							<table class="table table-hover">
								<caption>我的交易明细</caption>
								<thead>
									<tr>
										<th>序列</th>
										<th>交易金额</th>
										<th>交易类型</th>
										<th>需求</th>
										<th>时间</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${pageInfo.list}" begin="0"
										varStatus="status">
										<tr>
											<td><c:out value="${status.index+1}"></c:out></td>
											<td><c:out value="${i.amount}"></c:out></td>
											<td><c:out value="${i.amountType}"></c:out></td>
											<td><c:out value="${i.demandId}"></c:out></td>
											<td><c:out value="${i.tradingTime}"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
			</form>
		</div>
		<div class="page">
		<form id="pageForm" class="layui-form layui-col-md12 x-so"
		action="BusiManage/tradingList.action">
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
	</div>
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
</body>
</html>