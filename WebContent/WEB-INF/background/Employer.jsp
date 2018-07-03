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
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
<script type="text/javascript" src="./js/users.js"></script>
<script type="text/javascript" src="portal/js/md5.js"></script>
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
				action="BusiManage/UserList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${UserList.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${UserList.getPageNum() }"> <input type="text"
					name="title" value="${condition.title }" placeholder="请输入用户名"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>


		<span class="x-right" style="line-height: 40px">共有数据：${UserList.getTotal() }
			条</span>
		</xblock>
		<form id="form1" method="post" action="">
			<table class="layui-table">
				<thead>
					<tr>
						<!-- <th>
							<div class="layui-unselect header layui-form-checkbox"
								lay-skin="primary">
								<i class="layui-icon">&#xe605;</i>
							</div>
						</th> -->

						<th>雇主名称</th>
						<th>雇主账号</th>
						<th>余额</th>
						<th>信用分</th>
						<th>雇主状态</th>
						<th>操作</th>
				</thead>
				<tbody>
					<tr>


						<c:forEach var="user" items="${UserList.list}">

							<tr>

								<!-- <td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='2'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td> -->
								<td>${user.userName }</td>
								<td>${user.userAccount }</td>
								<td>${user.userBalance }</td>
								<td>${user.userCredit }</td>
								<td><c:if test="${user.userStatusID==1 }">
										<span
											class=" layui-btn-sm  layui-btn layui-btn-radius layui-btn-normal">启用</span>
									</c:if> <c:if test="${user.userStatusID==2 }">
										<span
											class="layui-btn-sm   layui-btn layui-btn-radius layui-btn-disabled">禁用</span>
									</c:if> <c:if test="${user.userStatusID==3 }">
										<span
											class="layui-btn-sm   layui-btn layui-btn-radius layui-btn-danger">黑名单</span>
									</c:if></td>
								<td><input onclick="Reset()" title="${user.userID }"
									value="重置"
									class=" Reset   layui-btn-sm layui-btn layui-btn-radius">
									<input type="hidden" name="userPwd" class="pwd"
									placeholder="userPwd" required="" value="123456"> <c:if
										test="${user.userStatusID==1 }">

										<input onclick="member_stop(this,'${user.userID}')"
											title="${user.userStatusID }" value="禁用"
											class=" Reset   layui-btn-sm layui-btn layui-btn-radius">
										<%-- <a onclick="member_stop(this,'${user.userID}')"
											href="javascript:;" title="${user.userStatusID }"> <i
											class="layui-icon">&#xe601;</i>
										</a> --%>
									</c:if> <c:if test="${user.userStatusID==2 }">
										<input onclick="member_stop(this,'${user.userID}')"
											title="${user.userStatusID }" value="启用"
											class=" Reset   layui-btn-sm layui-btn layui-btn-radius">
									</c:if> <c:if test="${user.userStatusID==3 }">
										<input onclick="cancelBlacklist()" title="${user.userID }"
											value="取消黑名单"
											class="cancelBlacklist  layui-btn-sm layui-btn layui-btn-radius">

									</c:if> <c:if test="${user.userStatusID==1 }">
										<input onclick="Blacklist()" title="${user.userID }"
											value="加入黑名单"
											class="Blacklist  layui-btn-sm layui-btn layui-btn-radius">

									</c:if> <c:if test="${user.userStatusID==2 }">
										<input onclick="Blacklist()" title="${user.userID }"
											value="加入黑名单"
											class="Blacklist  layui-btn-sm layui-btn layui-btn-radius">

									</c:if> <!-- <input type="hidden" name="userID" id="userID"> --></td>

							</tr>
						</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="page">
			<div>
				共${UserList.pages }页，每页 <select
					style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="3" ${UserList.getPageSize() == 3 ? "selected" : ""}>3</option>
					<option value="5" ${UserList.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${UserList.getPageSize() == 10 ? "selected" : ""}>10</option>
				</select> 条
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${UserList.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${UserList.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${UserList.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${UserList.getPageNum() - 2}')">${UserList.getPageNum() - 2}</a>
				</c:if>
				<c:if test="${UserList.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${UserList.getPageNum() - 1}')">${UserList.getPageNum() - 1}</a>
				</c:if>
				<!-- 当前页 -->
				<span class="current">${UserList.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if
						test="${UserList.getPageNum() + next le UserList.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${UserList.getPageNum() + next}')">${UserList.getPageNum() + next}</a>
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${UserList.getPageNum() < UserList.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${UserList.getNextPage() }')">下一页</a>
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