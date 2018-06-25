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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限配置</title>
<link href=<%=path + "/power/plugins/bootstrap/bootstrap.min.css"%> rel="stylesheet" />
<link
	href=<%=path + "/power/plugins/tree-multiselect/jquery.tree-multiselect.min.css"%>
	rel="stylesheet" />
<link href=<%=path + "/css/style.min.css"%> rel="stylesheet" />
<style>
.rightSize {
	margin-right: 5px;
}

body {
	padding: 20px;
}

#treeSelectTable {
	width: 80%;
}

#treeSelectTable tr th, #treeSelectTable tr td {
	text-align: center;
}
</style>

</head>
<body class="gray-bg2">
	<div class="wrapper wrapper-content" id="statisipDataArea">
		<div id="statisipArea" class="">
			<h3>权限配置</h3>
			<table id="treeSelectTable"
				class="table table-striped table-bordered">
				<thead>
					<tr>
						<td>序号</td>
						<td>角色名称</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody id="treeSelectBody">
					<c:forEach items="${roleList}" var="role" begin="0">
						<tr>
						<td><c:out value="${role.roleID}"></c:out></td>
						<td><c:out value="${role.roleName}"></c:out></td>
						<td> 
                <button class="btn btn-info btn-sm  modifyRoleBtn rightSize" type="button" data-id="${role.roleID}" ><i class="fa fa-paste"></i> 修改</button>
                <button class="btn btn-primary btn-sm grantAuthorityBtn rightSize" type="button" data-id="${role.roleID}" ><i class="fa fa-external-link"></i> 授权</button>
            </td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>


	</div>

	<!--给用户分配角色modal-->
	<div class="modal inmodal fade" id="grantAuthorityModal" tabindex="-1"
		role="dialog" aria-hidden="true" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog">
			<div class="modal-content animated fadeIn">
				<div class="modal-header btn-primary">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title" id="AuthorityTitle"></h4>
				</div>
				<div class="modal-body" id="authorityBody">
				<select id="authorifyselect" multiple="multiple">
				<c:forEach items="${allOneMenu}" var="menu1" begin="0">
				<c:forEach items="${allTwoMenu}" var="menu2" begin="0">
				<c:if test="${menu1.menuID==menu2.menuPID}">
<%-- 				<c:forEach items="${twoMenuList}" var="twoMenu" begin="0"> --%>
<%-- 				<c:if test="${menu2.menuID==twoMenu.menuID}"> --%>
<%-- 				<option  value="interface_test" data-section="${menu1.menuName}" selected>${menu2.menuName}</option> --%>
<%-- 				</c:if> --%>
<%-- 				</c:forEach> --%>
				<option  value="interface_test" data-section="${menu1.menuName}">${menu2.menuName}</option>
				</c:if>
				</c:forEach>
				</c:forEach>
				</select>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="authoritysubmit">提交</button>
				</div>
			</div>
		</div>
	</div>

<!-- 	<script id="treeSelect-template" type="text/x-dot-template"> -->
<!--          <tr> -->
<%--             <td><%= it.i %></td> --%>
<%--             <td><%= it.rolename %></td> --%>
<%--             <td><%= it.createTime %></td> --%>
<%--             <td><%= it.roleDescription %></td> --%>
<!--             <td>  -->
<%--                 <button class="btn btn-info btn-sm  modifyRoleBtn rightSize" type="button" data-id=<%= it.i %> ><i class="fa fa-paste"></i> 修改</button> --%>
<%--                 <button class="btn btn-primary btn-sm grantAuthorityBtn rightSize" type="button" data-id=<%= it.i %> ><i class="fa fa-external-link"></i> 授权</button> --%>
<!--             </td> -->
<!--         </tr> -->
<!--     </script> -->

	<script src=<%=path + "/power/plugins/jquery/jquery.min.js"%>></script>
	<script src=<%=path+"/power/plugins/jquery/jquery-ui.min.js"%>></script>
	<script src=<%=path+"/power/plugins/bootstrap/bootstrap.min.js"%>></script>
	<script
		src=<%=path+"/power/plugins/tree-multiselect/jquery.tree-multiselect.min.js"%>></script>
	<script src=<%=path+"/power/plugins/doT/doT.js"%>></script>
	<!--bootstrap-table-->
	<!--<script src="~/Content/js/plugins/bootstrap-table/bootstrap-table.js"></script>
    <script src="~/Content/js/plugins/bootstrap-table/bootstrap-table-zh-CN.js"></script>
    $1$layer#1#
    <script src="~/Content/js/plugins/layer/layer.min.js"></script>
    $1$封装的ajax数据接口#1#
    <script src="~/Content/js/plugins/doT/doT.js"></script>
    <script src="~/Content/js/commonjs.js"></script>
    <script src="~/Content/js/config.router.js"></script>-->  
	<script src=<%=path+"/js/power.js"%>></script>
</body>
</html>