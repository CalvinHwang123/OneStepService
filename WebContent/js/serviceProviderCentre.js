/**
 * 
 */
$(function() {
	$(".layui-btn").on("click", function() {
		layer.alert("增加成功", {
			icon : 6
		}, function() {
			// 获得frame索引
			var index = parent.layer.getFrameIndex(window.name);
			//关闭当前frame
			parent.layer.close(index);
		});
		$("#adduser").sumbit();
		return false;
	})
})