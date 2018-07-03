<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String basepath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的作品订单</title>
<script type="text/javascript" src=<%=basepath + "/js/jquery.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/lib/layui/layui.js"%> charset="utf-8"></script>
<script type="text/javascript" src=<%=basepath + "/js/xadmin.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/js/facilitatorOrderWorks.js"%>></script>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="col-md-12 column">
		<div class="row clearfix">
			<div class="col-md-3 column">
				<br> <br>
				<div class="col-md-2 column"></div>
				<div class="col-md-8 column " style="box-shadow: 10px 10px 5px #888888;">
					<%@ include file="/facilitator-left.jsp"%>
				</div>
				<div class="col-md-2 column"></div>
			</div>
		<div class="col-md-9 column">
			<div class='order-wrap'>
			<form id="pageForm" action="Portal/facilitatororderWorksList.action?classPid=${sessionScope.forelogin.userID}">
				<div class='top-nav-wrap order-top-nav J-state' data-state='0'
					id='utopia_widget_6'>
					<!-- 隐藏域 每页条数 -->
					<input type="hidden" id="pageSizeInput" name="pageSize"
						value="${pageInfo.getPageSize()}">
					<!-- 隐藏域 当前页数 -->
					<input type="hidden" id="currentPageInput" name="pageNum"
						value="${pageInfo.getPageNum()}"> 
					<input type="hidden" name="classPid"
						value="${condition.classPid }">

						<div class="form-inline" >
						<font size="3" face="sans serif">开始时间:</font><input style="width: 20%;" type="date" class="form-control" id="name" placeholder="请输入开始时间" name="startDate" value="${condition.startDate}">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<font size="3" face="sans serif">结束时间:</font><input style="width: 20%;" type="date" class="form-control" id="name" placeholder="请输入截止时间" name="endDate" value="${condition.endDate}">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 <button type="submit" class="btn btn-default">查询</button>
					</div>
				</div>
				<div class='order-top-banner' id='utopia_widget_7'>
					<div class='top-banner-tips'>1</div>
					<div class='top-banner-cont'>2</div>
				</div>
				<div class='order-bg'>
					<div class='options'>
						<div class="table-responsive">

							<table class="table table-hover">
								<caption>我购买的作品</caption>
								<thead>
									<tr>
										<th>序号</th>
										<th>作品名称</th>
										<th>订单状态</th>
										<th>订单时间</th>
										<th>雇主</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="order" items="${pageInfo.list}" begin="0"
										varStatus="status">
										<tr>
											<td><c:out value="${status.index+1}"></c:out></td>
											<td><c:out value="${order.works.worksName}"></c:out></td>
											<c:if test="${order.orderStatusId==1}">
											<td><c:out value="等待作品发送.."></c:out></td>
											</c:if>
											<c:if test="${order.orderStatusId==2}">
											<td><c:out value="作品已发送.."></c:out></td>
											</c:if>
											<c:if test="${order.orderStatusId==3}">
											<td><c:out value="作品交易完成"></c:out></td>
											</c:if>
											<td><c:out value="${order.orderTime}"></c:out></td>
											<td><c:out value="${order.users.userName}"></c:out></td>
											<td>
											<c:if test="${order.orderStatusId==1}">
											<a class="btn btn-primary" title="${order.orderId}" id="${order.orderStatusId}">确定发送</a>
											</c:if>
											<c:if test="${order.orderStatusId==2}">
											<button class="btn btn-primary" disabled="disabled">等待雇主接收</button>
											</c:if>
											<c:if test="${order.orderStatusId==3}">
											<a class="btn btn-primary" onclick="openShowWorks('${order.works.worksName}', '${order.works.worksContext}', '${order.works.worksPrice}')">查看</a>
											</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>
			</form>
		</div>
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
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>

	<!-- 查看作品modal -->
	<div class="modal fade" id="worksShowModal" tabindex="-1">
		<div class="modal-dialog" style="display: inline-block; width: auto;">
			<div class="modal-content">
				<div class="modal-header"
					style="background: url(portal/images/bg.png) #08bce4 no-repeat; background-size: cover; border-radius: 6px 6px 0px 0px;">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">查看作品</h4>
				</div>
				<form action="Facilitator/publishWorks.action" method="post"
					class="form-inline" id="formPublishWorks">
					<input type="hidden" value="${sessionScope.forelogin.userID}"
						name="userId" />
					<div class="modal-body" style="width: 900px; height: 420px;">
						<div style="width: 100%; height: 88%; background-color: #f7f7f7;">
							<div class="login-body" style="width: 100%; height: 100%;">
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="worksName">作品标题：</label> <input type="text"
										id="worksName" name="worksName" class="form-control" disabled="disabled"
										style="width: 80%;">
								</div>
								<br>
								<div class="form-group"
									style="width: 100%; margin-bottom: 1.3em;">
									<label for="worksContext">作品内容：</label>
									<textarea class="form-control" rows="3" style="width: 80%;" disabled="disabled"
										id="worksContext" name="worksContext"></textarea>
								</div>
								<br>
								<div class="form-group"
									style="width: 50%; margin-bottom: 1.3em;">
									<label for="worksPrice">作品价格：</label> <input type="text" disabled="disabled"
										id="worksPrice" name="worksPrice" class="form-control"
										style="width: 80%;">
								</div>

							</div>
						</div>
					</div>
					<div class="modal-footer" style="text-align: center;">
						<button type="button" class="btn btn-default" data-dismiss="modal">关
							闭</button>
					</div>
				</form>
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

function openShowWorks(worksName, worksContext, worksPrice) {
	$("#worksName").val(worksName);
	$("#worksContext").val(worksContext);
	$("#worksPrice").val(worksPrice);
	$("#worksShowModal").modal("show");
};

</script>
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
		</div>
	</div>
</body>
</html>