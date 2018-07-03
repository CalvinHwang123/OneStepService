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
<title>财务对账</title>
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
				action="SystemManage/empManage.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${emplist.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${emplist.getPageNum() }"> <input type="text"
					name="title" value="${condition.title }" placeholder="请输入员工名字"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>

		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn"
			onclick="openAddEmp()">
			<i class="layui-icon"></i>添加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${emplist.getTotal() }
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

						<th>ID</th>
						<th>姓名</th>
						<th>手机</th>
						<th>邮箱</th>
						<th>角色</th>
						<th>账号状态</th>
						<th>操作</th>
				</thead>
				<tbody>
					<tr>


						<c:forEach var="emp" items="${emplist.list}">

							<tr>

								<td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='${emp.empID }'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td>
								<td>${emp.empID }</td>
								<td>${emp.empName }</td>
								<td>${emp.empPhone }</td>
								<td>${emp.empEmail }</td>
								<td>
								<c:forEach var="empRole" items="${empRoleList}">
								<c:if test="${emp.empID==empRole.empID}">
								<c:forEach var="role" items="${roleList}">
								<c:if test="${empRole.roleID==role.roleID}">
								<c:out value="${role.roleName}">${role.roleName}</c:out>
								</c:if>
								</c:forEach>
								</c:if>
								
								
								</c:forEach>
								
								
								</td>
								<td><c:if test="${emp.empStatusID==1 }">
										<span class="layui-btn layui-btn-normal layui-btn-mini">启用</span>
									</c:if> <c:if test="${emp.empStatusID==2 }">
										<span class="layui-btn layui-btn-normal layui-btn-mini">禁用</span>
									</c:if> 
									</td>
								<td>
								<input onclick="changeStatus(this,'${emp.empID}','${emp.empStatusID}')" title="${emp.empStatusID}"
									style="height: 30px; width: 125px;" value="更改状态"
									class=" Reset   layui-btn layui-btn-primary"> 
									<input onclick="getEmpInfo('${emp.empID}')" title="${emp.empID }"
									style="height: 30px; width: 125px;" value="修改信息"
									class=" Reset   layui-btn layui-btn-primary">
									<a title="删除" onclick="member_del(this,${emp.empID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a>
									</td>

							</tr>
						</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="page">
			<div>
				共${emplist.pages }页，每页 <select
					style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="3" ${emplist.getPageSize() == 3 ? "selected" : ""}>3</option>
					<option value="5" ${emplist.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${emplist.getPageSize() == 10 ? "selected" : ""}>10</option>
				</select> 条
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${emplist.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${emplist.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${emplist.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${emplist.getPageNum() - 2}')">${emplist.getPageNum() - 2}</a>
				</c:if>
				<c:if test="${emplist.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${emplist.getPageNum() - 1}')">${emplist.getPageNum() - 1}</a>
				</c:if>
				<!-- 当前页 -->
				<span class="current">${emplist.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if
						test="${emplist.getPageNum() + next le emplist.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${emplist.getPageNum() + next}')">${emplist.getPageNum() + next}</a>
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${emplist.getPageNum() < emplist.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${emplist.getNextPage() }')">下一页</a>
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
	
	<div style="display: none;" id="addNewEmp">
		<form class="layui-form" action="SystemManage/addNewEmp.action"
			id="newEmpForm">
			<div class="layui-form-item">
				<label class="layui-form-label">账号</label>
				<div class="layui-input-block">
					<input type="text" name="empAccount" required lay-verify="required"
						placeholder="请输入账号" autocomplete="off" class="layui-input"
						id="newempAccount">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入密码</label>
				<div class="layui-input-block">
					<input type="text" name="empPwd" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="newempPwd">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">确认密码</label>
				<div class="layui-input-block">
					<input type="text" name="reempPwd" required lay-verify="required"
						placeholder="请重新输入密码" autocomplete="off" class="layui-input"
						id="newreempPwd">
					<text class="msg_text" style="display:none;"></text>
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" name="empName" required lay-verify="required"
						placeholder="请输入姓名" autocomplete="off" class="layui-input"
						id="newempName">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">手机</label>
				<div class="layui-input-block">
					<input type="text" name="empPhone" required lay-verify="required"
						placeholder="请输入手机号码" autocomplete="off" class="layui-input"
						id="newempPhone">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">身份证</label>
				<div class="layui-input-block">
					<input type="text" name="empIdentity" required lay-verify="required"
						placeholder="请输入身份证号码" autocomplete="off" class="layui-input"
						id="newempIdentity">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">电子邮箱</label>
				<div class="layui-input-block">
					<input type="text" name="empEmail" required lay-verify="required"
						placeholder="请输入电子邮箱" autocomplete="off" class="layui-input"
						id="newempEmail">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-block">
					<input type="text" name="empAddress" required lay-verify="required"
						placeholder="请输入地址" autocomplete="off" class="layui-input"
						id="newempAddress">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">角色</label>
				<div class="layui-input-block">
					<select name="role_select" id="role_select" >
					<c:forEach var="role" items="${roleList}" >
					<option value="${role.roleID}">${role.roleName }</option>
					</c:forEach>
					</select>
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addEmp()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary"
						>重置</button>
				</div>
			</div>
		</form>
	</div>
	
	<div style="display: none;" id="updateEmp">
		<form class="layui-form" action=""
			id="editEmpForm">
			<div class="layui-form-item">
				<label class="layui-form-label">账号</label>
				<div class="layui-input-block">
					<input type="text" name="editstoryTitle" required lay-verify="required"
						placeholder="请输入账号" autocomplete="off" class="layui-input"
						id="editempAccount">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入密码</label>
				<div class="layui-input-block">
					<input type="text" name="editempPwd" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempPwd">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">确认密码</label>
				<div class="layui-input-block">
					<input type="text" name="edituserID" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editreempPwd">
						<text class="editmsg_text" style="display:none;"></text>
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" name="editempName" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempName">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">电话</label>
				<div class="layui-input-block">
					<input type="text" name="editempPhone" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempPhone">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">身份证</label>
				<div class="layui-input-block">
					<input type="text" name="editempIdentity" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempIdentity">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">电子邮箱</label>
				<div class="layui-input-block">
					<input type="text" name="editempEmail" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempEmail">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">地址</label>
				<div class="layui-input-block">
					<input type="text" name="editempAddress" required lay-verify="required"
						placeholder="请输入密码" autocomplete="off" class="layui-input"
						id="editempAddress">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">角色</label>
				<div class="layui-input-block">
					<select name="editrole_select" id="editrole_select" >
					<c:forEach var="role" items="${roleList}" >
					<option value="${role.roleID}">${role.roleName }</option>
					</c:forEach>
					</select>
					
				</div>
			</div>
			
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button id="update" type="button" class="layui-btn" onclick="updateEmp()" title="">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary"
						>重置</button>
				</div>
			</div>
		</form>
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