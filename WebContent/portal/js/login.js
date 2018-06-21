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
			url : "BusiManage/selectName.action",
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
		if (useracc == null ||useracc == "") {
			$("#span1").text("请输入账号");
			$("#span1").css("color", "red");
		} else if (pwd == null || pwd == "") {
			$("#span2").text("请输入密码");
			$("#span2").css("color", "red");
		} else if(useracc!=null||useracc != ""||pwd != null||pwd != ""){
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
		}
	})

	$("#login").on("click", function() {
		var useracc = $(".user").val();
		var pwd = $(".pwd").val();
		var pwd1 = $.md5(pwd);
		var newName = {
			"userAccount" : useracc,
			"userPwd" : pwd1
		};
		if (useracc == null || useracc == "") {
			$("#span1").text("请输入账号");
			$("#span1").css("color", "red");
		} else if (pwd == null || pwd == "") {
			$("#span2").text("请输入密码");
			$("#span2").css("color", "red");
		} else if(useracc!=null||useracc != ""||pwd != null||pwd != ""){
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
		}
	})

});

function show(result) {
	if (result == "success") {
		$("#span1").text("账号可以使用");
		$("#span1").css("color", "lime");
	} else {
		$("#span1").text("账户已存在");
		$("#span1").css("color", "red");
	}
}

function regist(result) {
	if (result == "success") {
		alert("注册成功");
		$("#ForeSign").submit();
	} else {
		alert("注册失败");
	}
}

function login(result) {
	if (result == "success") {
		$("#Login").submit();
	} else if (result == "fail") {
		toastr.error("账号失效");
		alert("账号失效");
	} else {
		toastr.error("登入失败");
		 alert("登入失败");	 
		$("#Login").attr("action", "ForeLogin.jsp")
		$("#Login").submit();
	}
}