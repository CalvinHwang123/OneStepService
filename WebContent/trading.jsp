<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工管理</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
<script type="text/javascript" src="./js/empManage.js"></script>
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> </span> <a
			class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="pageForm" class="layui-form layui-col-md12 x-so"
				action="SystemManage/trading.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum() }"> 
					<input
					class="layui-input" placeholder="开始日" name="startDate" id="start"
					value="${condition.startDate }"> <input class="layui-input"
					placeholder="截止日" name="endDate" id="end"
					value="${condition.endDate }"> 
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>

		<button class="layui-btn layui-btn-danger" >
			财务对账
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${pageInfo.getTotal() }
			条</span>
		</xblock>
		<form id="form1" method="post" action="">
			<table class="layui-table">
				<thead>
					<tr>
						<th>
							<div class="layui-unselect header layui-form-checkbox"
								lay-skin="primary">
								<i class="layui-icon">&#xe605;</i>
							</div>
						</th>

					<th>序号</th>
					<th>雇主</th>
					<th>服务商</th>
					<th>交易金额</th>
					<th>资金类型</th>
					<th>需求标题</th>
					<th>时间</th>
				</thead>
				<tbody>
					<tr>


						<c:forEach var="i" items="${pageInfo.list}" begin="0"
										varStatus="status">

							<tr>

								<td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='2'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td>
								<td><c:out value="${status.index+1}"></c:out></td>
											<td><c:out value="${i.userId}"></c:out></td>
											<td><c:out value="${i.userId}"></c:out></td>
											<td><c:out value="${i.amount}"></c:out></td>
											<td><c:out value="${i.amountType}"></c:out></td>
											<td><c:out value="${i.demandId}"></c:out></td>
											<td><c:out value="${i.tradingTime}"></c:out></td>

							</tr>
						</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="page">
			<div>
				共${pageInfo.pages }页，每页 <select
					style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="3" ${pageInfo.getPageSize() == 3 ? "selected" : ""}>3</option>
					<option value="5" ${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${pageInfo.getPageSize() == 10 ? "selected" : ""}>10</option>
				</select> 条
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${pageInfo.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 2}')">${pageInfo.getPageNum() - 2}</a>
				</c:if>
				<c:if test="${pageInfo.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 1}')">${pageInfo.getPageNum() - 1}</a>
				</c:if>
				<!-- 当前页 -->
				<span class="current">${pageInfo.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if
						test="${pageInfo.getPageNum() + next le pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getPageNum() + next}')">${pageInfo.getPageNum() + next}</a>
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() < pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getNextPage() }')">下一页</a>
					</c:when>
					<%-- 下一页 可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#start' //指定元素
			});

			//执行一个laydate实例
			laydate.render({
				elem : '#end' //指定元素
			});
		});
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	
</body>

</html>