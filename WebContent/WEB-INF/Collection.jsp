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
						class="form-control" id="name" placeholder="请输入" name="startDate"
						value="${condition.startDate}">
				</div>
				<div class="glyphicon glyphicon-search">
					<input type="submit">
				</div>
			</div>
			<div class='order-top-banner' id='utopia_widget_7'>
				<div class='top-banner-tips'>1</div>
				<div class='top-banner-cont'>2</div>
			</div>
			<div class='order-bg'>
				<div class='options'>
					<div class="table-responsive">
						<div class="add-products">
							<div class="container">
								<h3 class="w3ls-title"></h3>
								<div class="add-products-row">
									<c:forEach items="${pageInfo.list}" var="i" begin="0"
										varStatus="s">
										<c:if test="${i.checkUsers.imageUrl == null}">
											<div class="w3ls-add-grids"
												style="background:url(<%=basePath%>/portal/images/noface.gif)no-repeat 0px 0px;
						background-size: cover;">
												<a
													href="Portal/successCase.action?successCaseID=${i.checkUsers.userAccount}">
													<h5>
														<c:out value="${i.checkUsers.userName}"></c:out>
														<i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
													</h5>
												</a>
											</div>
											<div class="successText">
												<a
													href="Portal/successCase.action?successCaseID=${i.checkUsers.userAccount}">
													<h6>
														<c:out value="${i.checkUsers.userName}"></c:out>
													</h6>
												</a>
												<HR
													style="FILTER: alpha(opacity = 100, finishopacity = 0, style = 3)"
													width="80%" color=#987cb9 SIZE=3>
											</div>
											<br></br>
										</c:if>
										<c:if test="${i.checkUsers.imageUrl != null}">
											<div class="info-item">
												<img
													src="${i.checkUsers.imageUrl};a.c=220x160&amp;a.g=Center"
													class="info-img" alt="从贫困村到“中国最美休闲乡村”逆袭，这三个村子有话说">

												<div class="content-wrap">
													<h4 class="info-title text-overflow">
														<a class="link-hover"
															href="Portal/successCase.action?successCaseID=${i.checkUsers.userAccount}">
															<c:out value="${i.checkUsers.userName}"></c:out>
														</a>
													</h4>
													<div class="info-content">近几年，乡村旅游发展得如火如荼，尤其是随着乡村振兴战略的深入推动，发挥着“引擎”作用的乡村旅游也更“火”了起来，乡村旅游迎来了自发展以来最好的时期。</div>
												</div>
											</div>
											<br></br>
										</c:if>
									</c:forEach>

								</div>
							</div>
		</form>

	</div>

	<form id="pageForm" action="BusiManage/facilitatorCreditList.action">
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
							<option value="5"
								${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>
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
	</form>
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
	<%@include file="/end.jsp"%>

</body>
</html>