<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
<script type="text/javascript" src="./js/person.js"></script>
</head>
<body>
	<div class="x-body layui-anim layui-anim-up">
		<form class="layui-form" action="PortalManage/updateById.action"
			method="post" id="adduser">
			<div class="layui-form-item">
				<label for="L_linksname" class="layui-form-label"> <span
					class="x-red">*</span>地址名称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_linksname" name="linksname" required=""
						lay-verify="nikename" autocomplete="off" class="layui-input"
						value="${i.getLinksname()}">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="L_linksurl" class="layui-form-label"> <span
					class="x-red">*</span>地址路径
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_linksurl" name="linksurl" required=""
						lay-verify="nikename" autocomplete="off" class="layui-input"
						value="${i.getLinksurl()}">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					修改</button>
			</div>
		</form>
	</div>
	<script>
		layui.use([ 'form', 'layer' ], function() {
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;

			//自定义验证规则
			// 			form.verify({
			// 				nikename : function(value) {
			// 					if (value.length < 5) {
			// 						return '昵称至少得5个字符啊';
			// 					}
			// 				},
			// 				pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
			// 				repass : function(value) {
			// 					if ($('#L_pass').val() != $('#L_repass').val()) {
			// 						return '两次密码不一致';
			// 					}
			// 				}
			// 			});

			// 			//监听提交
			// 			form.on('submit(add)', function(data) {
			// 				console.log(data);
			// 				//发异步，把数据提交给php
			// 				layer.alert("增加成功", {
			// 					icon : 6
			// 				}, function() {
			// 					// 获得frame索引
			// 					var index = parent.layer.getFrameIndex(window.name);
			// 					//关闭当前frame
			// 					parent.layer.close(index);
			// 				});
			// 				return false;
			// 			});

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