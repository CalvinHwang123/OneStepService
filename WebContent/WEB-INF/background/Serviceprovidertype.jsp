<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String basepath = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ basepath + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>服务商类型配置</title>
<link rel="stylesheet" href=<%=basepath + "/css/font.css"%>>
<link rel="stylesheet" href=<%=basepath + "/css/xadmin.css"%>>
<link rel="stylesheet" type="text/css"
	href=<%=basepath + "/css/bootstrap.css"%>>
<script type="text/javascript" src=<%=basepath + "/js/jquery.min.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/lib/layui/layui.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/js/xadmin.js"%>></script>
<script type="text/javascript"
	src=<%=basepath + "/js/bootstrap.min.js"%>></script>
<script type="text/javascript"
	src=<%=basepath + "/js/classification.js"%>></script>
</head>
<body>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so" id="pageForm" action=<%=basepath+"/SystemManage/serseekServicelist.action"%>>
				
				<!-- 分页代码 -->
			<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}">
			<!-- 分页代码 -->
				
				<div id="oneclasscontrller" class="layui-input-inline" title=<%=basepath %>>
					<select  name="classPid" value="${condition.endDate}">
					<option value=171120>服务商类型名称</option>
				<c:forEach var="i" items="${oneclassmenulist}">
						<option value="${i.classificationId}"><c:out value="${i.classificationName}"></c:out></option>
				</c:forEach>
					</select>
				</div>
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<!-- <button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button> -->
		<button href="#modal-container-538212" data-toggle="modal"
			class="layui-btn">
			<i class="layui-icon"></i>添加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据:${listsize} 条</span> </xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th>
						<div class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>全选
					</th>
					<!-- <th>序号</th> -->
					<th>类型</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${pageInfo.list}">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"lay-skin="primary" data-id='2'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
					<%-- 	<td><c:out value="${i.getClassificationid()}"></c:out></td> --%>
						<td class="classificationName"><c:out value="${i.classificationName}"></c:out></td> 
						<td class="td-manage">
						<a title="修改" class="member_rev" id="${i.classificationId}" href="#modal-container-538213" data-toggle="modal"><i class="layui-icon">&#xe63c;</i>修改</a> 
						<a title="删除" class="member_del" id="${i.classificationId}" href="javascript:;" name="服务商"> <i class="layui-icon">&#xe640;</i>删除 </a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 分页 -->
	<%@ include file="/pagefoot.jsp"%>
<!-- 分页 -->
	</div>
	<!-- addmodal -->
	<div class="modal fade" id="modal-container-538212" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">服务商类型添加</h4>
				</div>
					<div class="modal-body">
					<h5>服务商类型:</h5>
					<input type="text" placeholder="一级分类名称" autocomplete="off"
						class="layui-input" id="oneclassadd" name="oneclassadd"
						title=<%=basepath%>><br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button"  id="addoneprimary" class="btn btn-primary">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- addmodal -->
	
	<!-- revisemodal -->
	<div class="modal fade" id="modal-container-538213" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">服务商类型配置修改</h4>
				</div>
				<div class="modal-body">
					<h5>服务商类型:</h5>
					<input type="text"  class="layui-input" id="serrevoneclass" name="serrevoneclass">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="serrevprimary" class="btn btn-primary" name="">保存</button>
				</div>
			</div>
		</div>
	</div>
	<!-- revisemodal -->
	
<script type="text/javascript">
// 更改当前页
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