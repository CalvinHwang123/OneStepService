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
 <script type="text/javascript" src="./js/demands.js"></script>
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
				action="BusiManage/demandList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${demandList.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${demandList.getPageNum() }"><input
					class="layui-input" placeholder="开始日" name="startDate" id="start"
					value="${condition.startDate }"> <input class="layui-input"
					placeholder="截止日" name="endDate" id="end"
					value="${condition.endDate }"> 
					 <input type="text"
					name="title" value="${condition.title }" placeholder="请输入需求ID"
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
			onclick="x_admin_show('添加用户','./admin-add.html')">
			<i class="layui-icon"></i>添加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${demandList.getTotal() }
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

						<th>需求ID</th>
						
						<th>发布日期</th>
						<th>截标时间</th>
						<th>需求状态</th>
						<th>操作</th>
				</thead>
				<tbody>
					<tr>


						<c:forEach var="demand" items="${demandList.list}">

							<tr>

								<td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='2'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td>
								<td>${demand.userID }</td>
								
								<td>${demand.releaseTime }</td>
								<td>${demand.asoftTime }</td>
							
								<td>
								 <c:if test="${demand.demandstatusid==1 }">
									<span
										class="  layui-btn layui-btn-normal layui-btn-mini">未审核</span>
								</c:if>
								<c:if test="${demand.demandstatusid==2 }">
									<span
										class="  layui-btn layui-btn-normal layui-btn-mini">审核通过</span>
								</c:if> 
								
								<c:if test="${demand.demandstatusid==3 }">
									<span
										class="  layui-btn layui-btn-normal layui-btn-mini">已拒绝</span>
								</c:if> 
								
						            </td>
								<td>
								<c:if test="${demand.demandstatusid==1 }">
								<input onclick="examine()" title="${demand.demandID }"
									style="height: 30px; width: 65px;" value="通过"
									class="examine  layui-btn layui-btn-primary">
								
								</c:if>
								 <c:if test="${demand.demandstatusid==2 }">
								<input  title="${demand.demandID }"
									style="height: 30px; width: 100px;" value="已审核"
									class="  layui-btn layui-btn-primary">
								
								</c:if>
								
							
								 <c:if test="${demand.demandstatusid==1 }">
								<input onclick="Audited()" title="${demand.demandID }"
									style="height: 30px; width: 65px;" value="拒绝通过"
									class="Audited  layui-btn layui-btn-primary">
								</c:if>	
								
								 <c:if test="${demand.demandstatusid==3 }">
								<input title="${demand.demandID }"
									style="height: 30px; width: 125px;" value="已拒绝通过"
									class="Audited  layui-btn layui-btn-primary">
								</c:if>	
									
								<input onclick="openUpdateViolations('${demand.demandID}','${demand.demandTitle}','${demand.demandContent}',
               			 '${demand.demandRequire}','${demand.userID}')" 
									style="height: 30px; width: 65px;" value="查看"
									class="See  layui-btn layui-btn-primary">
									
								<input onclick="deduction('${demand.demandID}','${demand.demandTitle}','${demand.demandContent}',
               			 '${demand.demandRequire}','${demand.userID}')" 
									style="height: 30px; width: 125px;" value="扣除信用分"
									class="Blacklist  layui-btn layui-btn-primary">
								
								 <!-- <input type="hidden" name="userID" id="userID"> --></td>

							</tr>
						</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="page">
			<div>
				共${demandList.pages }页，每页 <select
					style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="3" ${demandList.getPageSize() == 3 ? "selected" : ""}>3</option>
					<option value="5" ${demandList.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${demandList.getPageSize() == 10 ? "selected" : ""}>10</option>
				</select> 条
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${demandList.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${demandList.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${demandList.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${demandList.getPageNum() - 2}')">${demandList.getPageNum() - 2}</a>
				</c:if>
				<c:if test="${demandList.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${demandList.getPageNum() - 1}')">${demandList.getPageNum() - 1}</a>
				</c:if>
				<!-- 当前页 -->
				<span class="current">${demandList.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if
						test="${demandList.getPageNum() + next le demandList.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${demandList.getPageNum() + next}')">${demandList.getPageNum() + next}</a>
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${demandList.getPageNum() < demandList.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${demandList.getNextPage() }')">下一页</a>
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
	
	<!-- 查看详情 -->
	<div style="display: none;" id="details">
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">用户ID</label>
				<div class="layui-input-block">
					<input type="text" name="userID" lay-verify="required"
						autocomplete="off" class="layui-input" disabled="disabled"
						id="updateUserID">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="violationsTime" lay-verify="required"
						autocomplete="off" class="layui-input" disabled="disabled"
						id="updateViolationsTime">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">发布内容</label>
				<div class="layui-input-block">
					<input type="text" name="violationsWhy" class="layui-textarea" lay-verify="required"
						required autocomplete="off" class="layui-input"
						id="updateViolationsWhy">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">具体要求</label>
				<div class="layui-input-block">
					<input type="text" name="violationsWhy" class="layui-textarea" lay-verify="required"
						required autocomplete="off" class="layui-input"
						id="updateViolationsResult">
				</div>
			</div>
			
			
			
		</form>
	</div>
	
	<!-- 扣除信用分 -->
	<div style="display: none;" id="deducTion">
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">用户ID</label>
				<div class="layui-input-block">
					<input type="text" name="userID" lay-verify="required"
						autocomplete="off" class="layui-input" disabled="disabled"
						id="userID">
				</div>
			</div>
			<br>
			<select style="height: 30px;width: 50px"  id="creditType">
		
			<option value="2">违约</option>
			</select>
			<br>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">违规原因</label>
				<div class="layui-input-block">
					<input type="text" name="violationsWhy" class="layui-textarea" lay-verify="required"
						required autocomplete="off" class="layui-input"
						id="creditWhy">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label">扣除分数</label>
				<div class="layui-input-block">
					<input type="text" name="violationsResult" lay-verify="required"
						required autocomplete="off" class="layui-input"
						id="creditPoints">
				</div>
				
				<div class="layui-form-item">
				<br>
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="deducTion()">立即提交扣除</button>
					
				</div>
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