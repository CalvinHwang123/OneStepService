/**
 * 
 */
$(function() {
	$(".user").blur(function() {
		var params = $(this).val();
		var newName = {
			"userAccount" : params
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
			success : show
		});
	})

	$("#sign").on("click", function() {
		var useracc = $(".user").val();
		var pwd = $(".pwd").val();
		var userType = $(".optionsRadios:checked").val();
		var pwd1 = $.md5(pwd);
		var newName = {
			"userAccount" : useracc,
			"userPwd" : pwd1,
			"userType" : userType
		};
		if (useracc == "") {
			layer.msg('账号不能为空!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		if (pwd == "") {
			layer.msg('密码不能为空!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		if (pwd.length < 6) {
			layer.msg('密码最小为6位!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		$.ajax({
			url : "BusiManage/addUsers.action",
			// 数据发送方式
			type : "post",
			// 接受数据格式
			dataType : "text",
			contentType : "application/json;charset=utf-8",
			// 要传递的数据
			data : JSON.stringify(newName),
			async : true,
			// 回调函数，接受服务器端返回给客户端的值，即result值
			success : regist
		});
	})

	$("#login").on("click", function() {
		var useracc = $(".user").val();
		var pwd = $(".pwd").val();
		var pwd1 = $.md5(pwd);
		var newName = {
			"userAccount" : useracc,
			"userPwd" : pwd1
		};
		if (useracc == "") {
			layer.msg('账号不能为空!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		if (pwd == "") {
			layer.msg('密码不能为空!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		if (pwd.length < 6) {
			layer.msg('密码最小为6位!', {
				icon : 2,
				time : 1000
			});
			return;
		}
		$.ajax({
			url : "BusiManage/foreLogin.action",
			// 数据发送方式
			type : "post",
			// 接受数据格式
			dataType : "text",
			contentType : "application/json;charset=utf-8",
			// 要传递的数据
			data : JSON.stringify(newName),
			async : true,
			// 回调函数，接受服务器端返回给客户端的值，即result值
			success : login
		});
	})

});

function show(result) {
	if (result == "success") {
//		$("#span1").text("账号可以使用");
//		$("#span1").css("color", "lime");
		layer.msg('账号可以使用!', {
			icon : 1,
			time : 1000
		});
	} else {
//		$("#span1").text("账户已存在");
//		$("#span1").css("color", "red");
		layer.msg('账户已存在!', {
			icon : 2,
			time : 1000
		});
	}
}

function regist(result) {
	if (result == "success") {
		layer.msg('注册成功!', {
			icon : 1,
			time : 1000
		});
		$("#ForeSign").submit();
	} else {
		layer.msg('注册失败!', {
			icon : 2,
			time : 1000
		});
	}
}

function login(result) {
	if (result == "success") {
		$("#Login").submit();
	} else if (result == "fail") {
		layer.msg('账号失效!', {
			icon : 2,
			time : 1000
		});
	} else {
		layer.msg('账号密码错误!', {
			icon : 2,
			time : 1000
		});
		setTimeout("mooy()", 1000);
	}
}
function mooy() {
	$("#Login").attr("action", "ForeLogin.jsp")
	$("#Login").submit();
}