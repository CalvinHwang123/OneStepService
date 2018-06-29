<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset='utf-8' />
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<meta name='renderer' content='webkit' />
<meta http-equiv='Cache-Control' content='no-transform ' />
<title>我投过的标</title>
<meta name="referrer" content="always">
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="row clearfix">
		<div class="col-md-3 column">
			<br> <br>
			<div class="col-md-2 column"></div>
			<div class="col-md-8 column "
				style="box-shadow: 10px 10px 5px #888888;">
				<%@ include file="/facilitator-left.jsp"%>
			</div>
			<div class="col-md-2 column"></div>
		</div>
		<div class="col-md-9 column">
			<br> <br>
			<div class="col-md-11 column"
				style="box-shadow: 10px 10px 5px #888888;">

				<div class="myorder">
					<div class="myoptions">
						<ul>
							<li class="ordertitle">需求名称</li>
							<li class="orderprice">雇主预算</li>
							<li class="ordertime">发布时间</li>
							<li class="orderstate">需求状态</li>
							<li class="orderoptions">订单操作</li>
						</ul>
					</div>
				</div>


				<div class="order-details-div order-item J-order-item">
					<c:forEach var="dem" items="${pageInfo.list}" varStatus="s">
						<div class = "myorder-div">
						<div class="myorder">
							<div>需求编号：${dem.demandID}</div>
							<div class="myoptions">
								<ul>
									<li class="ordertitle"><a class="list-task-title"
										title="${dem.demandTitle}"
										href="Portal/demandDetailsList.action?demandID=${dem.demandID}"
										target="_blank">${dem.demandTitle }</a></li>
									<li class="orderprice">￥：${dem.demandPrice}</li>
									<li class="ordertime">${dem.releaseTime}</li>
									<li class="orderstate">
											<c:choose>
													<c:when test="${dem.demandstatusid == 2}">
														投标进行中<br>
														截止时间为：${dem.asoftTime}
													</c:when>
													<c:when test="${dem.demandstatusid == 3}">等待中标结果</c:when>
											</c:choose>
									</li>
									<li class="orderoptions">
											<a class="btn btn-info btn-sm" target="_blank"
																href="Portal/demandDetailsList.action?demandID=${dem.demandID}">查看</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="J-order-details">
							<div class="order-proccess J-proccess">
								<div class="proccess-line" style="width: 70.2%;">
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										aria-valuemin="0" aria-valuemax="100"
										style="width: 50%; height: 1px;">
										<span class="sr-only">40% 完成</span>
									</div>
								</div>
								<div class="proccess-details">
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">发布需求</div>
										<div class="content-time">${dem.releaseTime}</div>
									</div>
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">服务商参与</div>
										<div class="content-time">2018-06-08</div>
									</div>
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">交易关闭</div>
										<div class="content-time">2018-06-08</div>
									</div>
								</div>
							</div>
						</div>
						</div>
					</c:forEach>
				</div>
				
				<div class="page">
				<div>
					共${pageInfo.getPages()}页,有${pageInfo.total}条投标数
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
			<!-- 									<table class="table table-striped table-hover"> -->
			<!-- 										<thead> -->
			<!-- 											<tr> -->
			<!-- 												<th>需求名称</th> -->
			<!-- 												<th>雇主预算</th> -->
			<!-- 												<th>发布时间</th> -->
			<!-- 												<th>需求状态</th> -->
			<!-- 												<th>操作</th> -->
			<!-- 											</tr> -->
			<!-- 										</thead> -->

			<!-- 										<tbody> -->
			<%-- 											<c:forEach var="dem" items="${pageInfo.list}" varStatus="s"> --%>
			<%-- 												<c:choose> --%>
			<%-- 													<c:when test="${s.index % 2 == 0}"> --%>
			<!-- 														<tr class="info" style="height: 80px;"> -->
			<%-- 													</c:when> --%>
			<%-- 													<c:otherwise> --%>
			<!-- 														<tr style="height: 80px;"> -->
			<%-- 													</c:otherwise> --%>
			<%-- 												</c:choose> --%>
			<%-- 												<td><a class="list-task-title" title="${dem.demandTitle}" --%>
			<%-- 													href="Portal/demandDetailsList.action?demandID=${dem.demandID}" --%>
			<%-- 													target="_blank">${dem.demandTitle }</a></td> --%>
			<%-- 												<td>${dem.demandPrice}</td> --%>
			<%-- 												<td>${dem.releaseTime}</td> --%>
			<!-- 												<td> -->
			<%-- 												<c:choose> --%>
			<%-- 													<c:when test="${dem.demandstatusid == 2}"> --%>
			<!-- 													投标进行中<br> -->
			<%-- 													截止时间为：${dem.asoftTime } --%>
			<%-- 													</c:when> --%>
			<%-- 													<c:when test="${dem.demandstatusid == 3}">等待中标结果</c:when> --%>
			<%-- 												</c:choose> --%>
			<!-- 												</td> -->
			<!-- 												<td> -->
			<!-- 													<a class="btn btn-info btn-sm" target="_blank" -->
			<%-- 													href="Portal/demandDetailsList.action?demandID=${dem.demandID}">查看</a> --%>
			<%-- 													<c:choose> --%>

			<%-- 													<c:when test="${dem.demandstatusid == 2}"> --%>
			<!-- 													<button type="button" class="btn btn-info btn-sm">按钮</button> -->
			<%-- 													</c:when> --%>

			<%-- 													</c:choose> --%>
			<!-- 												</td> -->
			<!-- 												</tr> -->
			<%-- 											</c:forEach> --%>
			<!-- 										</tbody> -->
			<!-- 									</table> -->
		</div>
	</div>
	</div>
	</div>
</body>
</html>