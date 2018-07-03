/**
 * 
 */
$(function() {
	$(".btn-primary").click(function() {
		var orderStatusId = $(this).attr("id");
		var orderId = $(this).attr("title");
		var revclassdate;
		if (orderStatusId==1&&orderStatusId!=3) {
			revclassdate = {"orderStatusId":2,"orderId":orderId};
			layer.confirm('是否发送作品?', function(index) {
				$.ajax({
					url : $("base").attr("href") + "Portal/sendreceiveorderWorkst.action",
					type : "POST",
					contentType : "application/json;charset=utf-8",
					data:JSON.stringify(revclassdate),
					dataType : "text",
					async : true,
					success : function(msg) {
						if (msg == "success") {
							layer.msg('发送成功!', {
								icon : 1,
								time : 1000
							});
							window.location.reload();
						} else {
							layer.msg('发送失败!', {
								icon : 1,
								time : 1000
							});
						}
					}
				})
				layer.closeAll();
			})
		}else if (orderStatusId==2&&orderStatusId!=3) {
			revclassdate = {"orderStatusId":3,"orderId":orderId};
			layer.confirm('是否接收?', function(index) {
				$.ajax({
					url : $("base").attr("href") + "Portal/sendreceiveorderWorkst.action",
					type : "POST",
					contentType : "application/json;charset=utf-8",
					data:JSON.stringify(revclassdate),
					dataType : "text",
					async : true,
					success : function(msg) {
						if (msg == "success") {
							layer.msg('接收成功!', {
								icon : 1,
								time : 1000
							});
							window.location.reload();
						} else {
							layer.msg('接收失败!', {
								icon : 1,
								time : 1000
							});
						}
					}
				})
				layer.closeAll();
			})
		}
	})
})