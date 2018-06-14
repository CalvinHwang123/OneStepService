/**
 * 
 */
$(function() {
	$("#btn3").on("click", function() {
		$("#myModal").modal("show");
	})

	$("#btn4")
			.on(
					"click",
					function() {
						var name = $("#t1").val();
						var pwd = $("#t2").val();
						var repwd = $("#t3").val();
						var ph = $("#t4").val();
						var em = $("#t5").val();
						var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
						var pattern1 = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
						if (name == "" || name == null) {
							$("#span1").text("输入的账号不能为空");
							$("#span1").css("color", "red");
						} else if (pwd == "" || pwd == null) {
							$("#span2").text("输入的密码不能为空");
							$("#span2").css("color", "red");
						} else if (repwd == "" || repwd == null) {
							$("#span3").text("输入的密码不能为空");
							$("#span3").css("color", "red");
						} else if (ph == "" || ph == null) {
							$("#span4").text("输入的手机号不能为空");
							$("#span4").css("color", "red");
						} else {
							if (pattern1.test(ph) == false) {
								$("#span4").text("请输入11位的手机号");
								$("#span4").css("color", "red");
							}
							if (pattern.test(em) == false) {
								$("#span5").text("输入的邮箱格式不正确");
								$("#span5").css("color", "red");
							} else {
								$("#span5").text("输入的邮箱格式正确");
								$("#span5").css("color", "lime");
								$("#span4").text("输入手机号码正确");
								$("#span4").css("color", "lime");
								$("#f3").submit();
							}
						}
					})
	$("#t1").blur(function() {
		var params = $("#t1").val();
		$.ajax({
			url : "/WordDemo1/user1/jsonAction!SelectName.action",
			// 数据发送方式
			type : "post",
			// 接受数据格式
			dataType : "text",
			// 要传递的数据
			data : {"users.username":params},
			// 回调函数，接受服务器端返回给客户端的值，即result值
			success : show
		});
	})
});

function show(result) {
	if(result=="success"){
		$("#span1").text("账号可以使用");
		$("#span1").css("color", "lime");
	}else{
		$("#span1").text("账户已存在");
		$("#span1").css("color", "red");
	}
}