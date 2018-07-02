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
	
});