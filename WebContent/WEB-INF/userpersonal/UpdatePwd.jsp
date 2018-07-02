<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />
<meta http-equiv="Cache-Control" content="no-transform " />
<title>雇主中心-修改密码</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link rel="shortcut icon" href="https://s.zbjimg.com/img/favicon.ico"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="https://t5.zbjimg.com/??output/css/g-026cf2fdbf934d7c.css,output/css/base-2a11ba700891ddb0.css,output/css/module/tips-ebdaa687babcd07c.css,output/css/tips-c-5549d503f76d7882.css,output/css/module/window-1e2fcb8aad3f9a5c.css,output/css/head-7ee4da22a5350ac9.css,output/css/footer-e277d8f276784b76.css">
<link rel="stylesheet" type="text/css"
	href="https://t5.zbjimg.com/??output/css/main-8374728da38bc1d8.css,output/css/pub-7d8a370756ce8481.css,output/css/edit-962abe3d3cec2b45.css">
<link rel="stylesheet" type="text/css"
	href="https://t5.zbjimg.com/v/webim/WebIM.css">
<link
	onerror="window.gMonitor && window.gMonitor.resourceError(this.href, 'css')"
	type="text/css" rel="stylesheet"
	href="https://t5.zbjimg.com/t5s/common/css/global4oldpage-35493847a9516d26.css" />
<link
	onerror="window.gMonitor && window.gMonitor.resourceError(this.href, 'css')"
	type="text/css" rel="stylesheet"
	href="https://t6.zbjimg.com/output/global/basestyle-2ab46855cde4dacb.css" />
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@include file="/WEB-INF/includeLeft.jsp"%>
	<div class="col-md-12 column">
		<div class='order-wrap'>
			<div class='top-nav-wrap order-top-nav J-state' data-state='0'
				id='utopia_widget_6'></div>
			<div class='order-top-banner' id='utopia_widget_7'>
				<div class='top-banner-tips'></div>
				<div class='top-banner-cont'></div>
			</div>
			<div class='order-bg'>
				<div class='options'></div>
				<div class="container">
					<div class="cont over-hidden">
						<div class="clearfix bind-sche">
							<h5 class="bind-tit">修改登录密码</h5>
						</div>
						<form class="up-acpwd" id="work-form" action="ForeLogin.jsp">
							<div class="alert">
								<div class="alert-img">
									<em></em> 安全提醒：请妥善保管密码！帝六人网工作人员不会以任何理由向您索取密码。
								</div>
							</div>
							<div class="control-group clearfix phone-yzm mt15">
								<label class="control-label" for="inputWarning">当前密码：</label>
								<div class="controls ui-form-item" placeholder="" min="6"
									max="20" data-index="0">
									<p class="fl">
										<input name="opwd" id="Warning" maxlength="20" tabindex="1"
											type="password"><span class="help-inline">请输入当前密码，支持中文、英文</span>
									</p>
								</div>
							</div>
							<div class="control-group clearfix phone-yzm">
								<label class="control-label" for="inputWarning">设置新密码：</label>
								<div class="controls ui-form-item error" required=""
									placeholder="" min="6" max="20" data-index="1">
									<p class="fl">
										<input name="nped" id="inputWarn" tabindex="2" class="error"
											type="password"> <span class="reat">该字段为必选项！</span>
									</p>
								</div>
							</div>
							<div class="control-group clearfix phone-yzm">
								<label class="control-label" for="inputWarning">确认新密码：</label>
								<div class="controls ui-form-item error" required=""
									placeholder="" min="6" max="20" data-index="2">
									<p class="fl">
										<input name="rpwd" id="inputWarning" tabindex="3"
											class="error" type="password"> <span
											class="help-inline1" data-title="请再次输入您的新密码">该字段为必选项！</span>
									</p>
								</div>
							</div>
							<input name="strong" id="strong" type="hidden">
							<p class="submit">
								<input class="butn butn-orange" id="save" disabled="disabled"
									value="确认" type="button">

							</p>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<script type="text/javascript" src="./lib/layui/layui.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="./js/xadmin.js"></script>
	<script type="text/javascript" src="portal/js/md5.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#Warning").blur(function() {
				var params = $(this).val();
				var pwd1 = $.md5(params);
				var newName = {
					"userPwd" : pwd1
				};
				if (params == "" || params == null) {
					layer.msg('请输入密码!', {
						icon : 2,
						time : 1000
					});
				} else if (params != "" || params != null) {
					$.ajax({
						url : "BusiManage/SelectpwdByAcc.action",
						// 数据发送方式
						type : "post",
						// 接受数据格式
						dataType : "text",
						contentType : "application/json;charset=utf-8",
						// 要传递的数据
						data : JSON.stringify(newName),
						async : true,
						// 回调函数，接受服务器端返回给客户端的值，即result值
						success : show
					});
				}
			})

			$("#inputWarning").blur(
					function() {
						var newpwd = $("#inputWarn").val();
						var pwd2 = $.md5(newpwd);
						var params = $(this).val();
						var pwd1 = $.md5(params);
						var newName = {
							"startDate" : pwd2,
							"endDate" : pwd1
						};
						if (newpwd == "" || newpwd == null) {
							layer.msg('请输入密码!', {
								icon : 2,
								time : 1000
							});
						}else if(params == "" || params == null){
							layer.msg('请输入密码!', {
								icon : 2,
								time : 1000
							});
						}else if(newpwd != "" || newpwd != null||params != "" || params != null){			
							$.ajax({
								url : "BusiManage/confirmPwd.action",
								// 数据发送方式
								type : "post",
								// 接受数据格式
								dataType : "text",
								contentType : "application/json;charset=utf-8",
								// 要传递的数据
								data : JSON.stringify(newName),
								async : true,
								// 回调函数，接受服务器端返回给客户端的值，即result值
								success : ConfirmPwd
							});
						}
					})

			//修改密码
			$("#save").on("click", function() {
				var params = $("#inputWarning").val();
				var pwd1 = $.md5(params);
				var newpwd = $("#inputWarn").val();
				var pwd2 = $.md5(newpwd);
				var newName = {
					"userPwd" : pwd1
				};
				$.ajax({
					url : "BusiManage/updateUsersPwdById.action",
					// 数据发送方式
					type : "post",
					// 接受数据格式
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					// 要传递的数据
					data : JSON.stringify(newName),
					async : true,
					// 回调函数，接受服务器端返回给客户端的值，即result值
					success : updateUsersPwdById
				});
			})

		});

		function show(result) {
			if (result == "success") {
				layer.msg('密码正确!', {
					icon : 1,
					time : 1000
				});
				$(".help-inline").text("密码正确");
				$(".help-inline").css("color", "lime");
				$("#login").attr("disabled", true)
			} else {
				layer.msg('密码不正确!', {
					icon : 2,
					time : 1000
				});
				$(".help-inline").text("密码不正确");
				$(".help-inline").css("color", "red");
				$("#login").attr("disabled", true)
			}
		}

		function ConfirmPwd(result) {
			if (result == "success") {
				layer.msg('密码一致!', {
					icon : 1,
					time : 1000
				});
				$(".help-inline1").text("密码一致");
				$(".help-inline1").css("color", "lime");
				$("#save").attr("disabled", false)
			} else {
				layer.msg('密码不一致!', {
					icon : 2,
					time : 1000
				});
				$(".help-inline1").text("密码不一致");
				$(".help-inline1").css("color", "red");
				$("#save").attr("disabled", true)
			}
		}

		function updateUsersPwdById(result) {
			if (result == "success") {
				// 				toastr.success("修改成功");
				layer.msg('修改成功!', {
					icon : 1,
					time : 1000
				});
				setTimeout("mooy()", 1000);
			}
		}
		function mooy() {
			$("#work-form").submit();
		}
	</script>

</body>
</html>


