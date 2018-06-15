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
<link rel="stylesheet" href="/static/build/layui.css" media="all">
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">演示</a>
			<a> <cite>导航元素88</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so layui-form-pane">
				<div class="layui-input-inline">
					<select name="cateid">
						<option>规则分类</option>
						<option>文章</option>
						<option>会员</option>
						<option>权限</option>
					</select>
				</div>
				<div class="layui-input-inline">
					<select name="contrller">
						<option>请控制器</option>
						<option>Index</option>
						<option>Goods</option>
						<option>Cate</option>
					</select>
				</div>
				<div class="layui-input-inline">
					<select name="action">
						<option>请方法</option>
						<option>add</option>
						<option>login</option>
						<option>checklogin</option>
					</select>
				</div>
				<input class="layui-input" placeholder="权限名" name="cate_name">

			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn"
			onclick="openAddDyna()">
			<i class="layui-icon"></i>增加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：88 条</span> </xblock>
		<form action="" id="app1" method="post">
			<table class="layui-table">
				<thead>
					<tr>
						<th>
							<div class="layui-unselect header layui-form-checkbox"
								lay-skin="primary">
								<i class="layui-icon">&#xe605;</i>
							</div>
						</th>
						<th>动态标题</th>
						<th>动态内容</th>
						<th>动态时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${ListDyna}" begin="0" varStatus="status">
						<tr>
							<td><c:out value="${status.index+1}"></c:out></td>
							<td><c:out value="${i.getDynamicTitle()}"></c:out></td>
							<td><c:out value="${i.getDynamicContext()}"></c:out></td>
							<td><c:out value="${i.getDynamicTime()}"></c:out></td>
							<td class="td-manage"><a title="编辑"
								onclick="openUpdateDyna(this,'${i.getDynamicId()}')"
								href="javascript:;"> <i class="layui-icon">&#xe642;</i>
							</a> <a title="删除" onclick="member_del(this,'${i.getDynamicId()}')"
								href="javascript:;"> <i class="layui-icon">&#xe640;</i>
							</a></td>
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
	<div id="update" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">动态标题</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newDynaTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">动态内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"
						id="newDynaCon"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">动态時間</label>
				<div class="layui-input-block">
					<input type="datetime" name="linksname" placeholder="请输入時間"
						class="layui-input" id="test1">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="UpdateDyna()">修改</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
<!-- 增加动态 -->
<div id="addDyna" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">动态标题</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newDynaTitle1">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">动态内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"
						id="newDynaCon1"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">动态時間</label>
				<div class="layui-input-block">
					<input type="datetime" name="linksname" placeholder="请输入時間"
						class="layui-input" id="test2">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="AddDyna()">确定</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>


	<script type="text/javascript">
		var dynamicId;
		function openUpdateDyna(obj, id) {
			dynamicId = id;
			layer.open({
				type : 1,
				area : [ '500px', '300px' ],
				content : $('#update')
			});
		}
		
		function openAddDyna() {
			layer.open({
				type : 1,
				area : [ '500px', '300px' ],
				content : $('#addDyna')
			});
		}
		
      // 修改
		function UpdateDyna() {//修改链接
			layer.confirm('确认要提交吗？', function(index) {

				var DynaTitle = $("#newDynaTitle").val();
				var DynaCon = $("#newDynaCon").val();
				var DynaTime = $("#test1").val();
				var newDyna = {
					"dynamicTitle" : DynaTitle,
					"dynamicContext" : DynaCon,
					"dynamicTime" : DynaTime,
					"dynamicId" : dynamicId
				};
				$.ajax({
					url : "PortalManage/updateDynaById.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newDyna),
					async : true,
					success : function(msg) {
						layer.closeAll();
						window.location.reload();
					}
				})
			})
		}
		//增加动态
		function AddDyna() {
			layer.confirm('确认要提交吗？', function(index) {

				var DynaTitle = $("#newDynaTitle1").val();
				var DynaCon = $("#newDynaCon1").val();
				var DynaTime = $("#test2").val();
				var newDyna = {
					"dynamicTitle" : DynaTitle,
					"dynamicContext" : DynaCon,
					"dynamicTime" : DynaTime,
					"dynamicId" : dynamicId
				};
				$.ajax({
					url : "PortalManage/addDyna.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newDyna),
					async : true,
					success : function(msg) {
						layer.closeAll();
						window.location.reload();
					}
				})
			})
		}
		
	</script>

	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test1' //指定元素
			});
		});
	</script>
	
		<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test2' //指定元素
			});
		});
	</script>

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

		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					url : "PortalManage/deleteDynaById.action",
					type : "POST",
					data : "dynamicId=" + id,
					dataType : "text",
					async : true,
					success : function(msg) {
						//发异步删除数据
						if (msg == "success") {
							layer.msg('已删除!', {
								icon : 1,
								time : 1000
							});
							window.location.reload();
						}
					}
				})
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