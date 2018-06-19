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
<script src="js/users.js"></script>
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
			<form class="layui-form layui-col-md12 x-so"  id="searchform" method="post" action="BusiManage/searchUser.action">

				<input type="text" name="demandID" id="demandID" placeholder="请输入需求ID"
					autocomplete="off" class="layui-input">
			
				<button class="layui-btn" type="submit" lay-filter="sreach">
				
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
		<span class="x-right" style="line-height: 40px">共有数据：88 条</span>
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

						<th>需求发布方</th>
						<th>发布日期</th>
						<th>截标时间</th>
						<th>中标者</th>
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
								<td>${demand.tenderID }</td>
								
								 <c:if test="${demand.demandstatusid==1 }">
									<td><span
										class="  layui-btn layui-btn-normal layui-btn-mini">未审核</span></td>
								</c:if>
								<c:if test="${demand.demandstatusid==2 }">
									<td><span
										class="  layui-btn layui-btn-normal layui-btn-mini">审核通过</span></td>
								</c:if> 
								
								<c:if test="${demand.demandstatusid==3 }">
									<td><span
										class="  layui-btn layui-btn-normal layui-btn-mini">已拒绝</span></td>
								</c:if> 
								
						
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
									
								<input  id="See" title="${demand.demandID}"
									style="height: 30px; width: 65px;" value="查看"
									class="See  layui-btn layui-btn-primary">
									
								<input onclick="Blacklist()" title="${demand.demandID}"
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
				<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a> <span
					class="current">2</span> <a class="num" href="">3</a> <a
					class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a>
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
	
		//通过

		function examine() {
			layer.confirm('确认审核通过吗？', function(index) {
				var demandID = $(".examine").attr("title");
				alert(demandID);
				var newdemandID = {
					"demandID" : demandID
				};
				$.ajax({

					url : "BusiManage/examine.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newdemandID),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						window.location.reload(); 
						layer.msg('审核通过!', {
							icon : 5,
							time : 3000
						});
					}

				})
			})
		}
		
		//拒绝通过

		function Audited() {
			layer.confirm('确认拒绝通过吗？', function(index) {
				var demandID = $(".Audited").attr("title");
				alert(demandID);
				var newdemandID = {
					"demandID" : demandID
				};
				$.ajax({

					url : "BusiManage/Audited.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newdemandID),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						window.location.reload(); 
						layer.msg('已拒绝!', {
							icon : 5,
							time : 3000
						});
					}

				})
			})
		}
		
		
		
       //搜索 
       function search() {
			
    	      var userAccount=$("#userAccount").val();
               alert(userAccount);
				var newuserAccount = {
					"userAccount" : userAccount

				};
				$.ajax({
					url : "BusiManage/searchUser.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newuserAccount),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						layer.msg('正在搜索中!', {
							icon : 5,
							time : 3000
						});
						window.location.reload();
					}
				})
			

		}
		
		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				//发异步删除数据
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}

		function delAll(argument) {

			var data = tableCheck.getData();

			layer.confirm('确认要删除吗？' + data, function(index) {
				//捉到所有被选中的，发异步进行删除
				layer.msg('删除成功', {
					icon : 1
				});
				$(".layui-form-checked").not('.header').parents('tr').remove();
			});
		}
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