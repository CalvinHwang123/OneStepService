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
			<form class="layui-form layui-col-md12 x-so">

				<input type="text" name="username" placeholder="请输入用户名"
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

						<th>雇主名称</th>
						<th>雇主账号</th>
						<th>余额</th>
						<th>信用分</th>
						<th>雇主状态</th>
						<th>操作</th>
				</thead>
				<tbody>
					<tr>


						<c:forEach var="user" items="${Userlist.list}">

							<tr>

								<td>
									<div class="layui-unselect layui-form-checkbox"
										lay-skin="primary" data-id='2'>
										<i class="layui-icon">&#xe605;</i>
									</div>
								</td>
								<td>${user.userName }</td>
								<td>${user.userAccount }</td>
								<td>${user.userBalance }</td>
								<td>${user.userCredit }</td>
								<c:if test="${user.userStatusID==1 }">
									<td><span
										class="layui-btn layui-btn-normal layui-btn-mini">启用</span></td>
								</c:if>
								<c:if test="${user.userStatusID==2 }">
									<td><span
										class="layui-btn layui-btn-normal layui-btn-mini">禁用</span></td>
								</c:if>
								<c:if test="${user.userStatusID==3 }">
									<td><span
										class="layui-btn layui-btn-normal layui-btn-mini">黑名单</span></td>
								</c:if>

								<td><input onclick="Reset()" title="${user.userID }"
									style="height: 30px; width: 125px;" value="重置"
									class=" Reset   layui-btn layui-btn-primary"> <a
									onclick="member_stop(this,'${user.userID}')"
									href="javascript:;" title="${user.userStatusID }"> <i
										class="layui-icon">&#xe601;</i>
								</a>
								<c:if test="${user.userStatusID==3 }">
								<input onclick="cancelBlacklist()" title="${user.userID }"
									style="height: 30px; width: 125px;" value="取消黑名单"
									class="Blacklist  layui-btn layui-btn-primary">
								
								</c:if>
								 <c:if test="${user.userStatusID==1 }">
								<input onclick="Blacklist()" title="${user.userID }"
									style="height: 30px; width: 125px;" value="加入黑名单"
									class="Blacklist  layui-btn layui-btn-primary">
								
								</c:if>
								<c:if test="${user.userStatusID==2 }">
								<input onclick="Blacklist()" title="${user.userID }"
									style="height: 30px; width: 125px;" value="加入黑名单"
									class="Blacklist  layui-btn layui-btn-primary">
								
								</c:if> <!-- <input type="hidden" name="userID" id="userID"> --></td>

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
		//加入黑名单

		function Blacklist() {
			layer.confirm('确认要加入黑名单吗？', function(index) {
				var userID = $(".Blacklist").attr("title");
				var newBlacklist = {
					"userID" : userID
				};
				$.ajax({

					url : "BusiManage/Blacklist.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newBlacklist),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						window.location.reload(); 
						layer.msg('已加入黑名单!', {
							icon : 5,
							time : 3000
						});
					}

				})
			})
		}
		
		
		//取消黑名单

		function cancelBlacklist() {
			layer.confirm('确认要取消黑名单吗？', function(index) {
				var userID = $(".Blacklist").attr("title");
				var newBlacklist = {
					"userID" : userID	
				};
				$.ajax({

					url : "BusiManage/cancelBlacklist.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newBlacklist),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						layer.msg('取消成功，账号为启用状态!', {
							icon : 5,
							time : 3000
						});
						window.location.reload();
					}

				})
			})
		}
		//重置密码

		function Reset() {
			layer.confirm('确认要重置吗？', function(index) {
				var userID = $(".Reset").attr("title");

				var newStory = {
					"userID" : userID

				};
				$.ajax({
					url : "BusiManage/updatepow.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newStory),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						layer.msg('重置密码成功!', {
							icon : 5,
							time : 3000
						});
						window.location.reload();
					}
				})
			})

		}

		/*用户-停用*/
		//1是启用 2是禁用 3是黑名单
		function member_stop(obj, id) {
			layer.confirm('确认要停用吗？', function(index) {
				if ($(obj).attr('title') == '1') {

					var newStory = {
						"userID" : id
					};

					$
							.ajax({
								url : "BusiManage/Disable.action",
								type : "post",
								dataType : "text",
								contentType : "application/json;charset=utf-8",
								data : JSON.stringify(newStory),
								async : true,
								success : function(msg) {//
									layer.closeAll();
									$(obj).find('i').html('&#xe62f;');

									window.location.reload();
									$(obj).parents("tr").find(".td-status")
											.find('span').addClass(
													'layui-btn-disabled').html(
													'已停用');
									layer.msg('已停用!', {
										icon : 5,
										time : 3000
									});
								}
							})

					//发异步把用户状态进行更改

				}

				if ($(obj).attr('title') == '2') {

					var newStory = {
						"userID" : id
					};

					$
							.ajax({
								url : "BusiManage/enable.action",
								type : "post",
								dataType : "text",
								contentType : "application/json;charset=utf-8",
								data : JSON.stringify(newStory),
								async : true,
								success : function(msg) {//
									layer.closeAll();

									window.location.reload();

									$(obj).find('i').html('&#xe62f;');

									$(obj).parents("tr").find(".td-status")
											.find('span').addClass(
													'layui-btn-disabled').html(
													'已启用');
									layer.msg('已启用!', {
										icon : 5,
										time : 3000
									});
								}
							})
					//发异步把用户状态进行更改

				}

				if ($(obj).attr('title') == '3') {

					$(obj).parents("tr").find(".td-status").find('span')
							.removeClass('layui-btn-disabled').html(
									'当前账号为黑名单状态');
					layer.msg('当前账号为黑名单状态!', {
						icon : 5,
						time : 3000
					});

				}

			});

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