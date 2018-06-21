/**
 * 
 */

var violationsID;
// 华清修改：雇主服务商管理更改当前页
function changePage(pageNum) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	// 2 提交表单
	$("#pageForm").submit();
};

// 华清修改：雇主服务商管理更改每页条数
function changePageSize(pageSize) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	// 2 提交表单
	$("#pageForm").submit();
};
// 华清修改：雇主服务商管理加入黑名单

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
				layer.msg('已加入黑名单!', {
					icon : 5,
					time : 3000
				});
				window.location.reload();
			}

		})
	})
}

//华清修改：雇主服务商管理 取消黑名单

function cancelBlacklist() {
	layer.confirm('确认要取消黑名单吗？', function(index) {
		var userID = $(".cancelBlacklist").attr("title");
		var newcancelBlacklist = {
			"userID" : userID
		};
		$.ajax({

			url : "BusiManage/cancelBlacklist.action",
			type : "post",
			dataType : "text",
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(newcancelBlacklist),
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
// 华清修改：雇主服务商管理重置密码

function Reset() {
	layer.confirm('确认要重置吗？', function(index) {
		var userID = $(".Reset").attr("title");

		var newStory = {
			"userID" : userID

		};
		$.ajax({
			url : "BusiManage/updatePow.action",
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


/* 用户-停用 */
//华清修改：雇主服务商管理
//1是启用 2是禁用 3是黑名单
function member_stop(obj, id){
	if($(obj).attr('title')=='1'){
		layer.confirm('确认要停用吗？',function(index){
			//发异步把用户状态进行更改
			var newStory = {
					"userID" : id
				};

				$.ajax({
					url : "BusiManage/Disable.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newStory),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						$(obj).find('i').html('&#xe62f;');

						$(obj).parents("tr").find(".td-status").find('span')
								.addClass('layui-btn-disabled').html('已停用');
						layer.msg('已停用!', {
							icon : 5,
							time : 3000
						});
						window.location.reload();
					}
				})
        });
    }
	if($(obj).attr('title')=='2'){
		layer.confirm('确认要启用吗？',function(index){
			//发异步把用户状态进行更改
			var newStory = {
					"userID" : id
				};

				$.ajax({
					url : "BusiManage/enable.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newStory),
					async : true,
					success : function(msg) {//
						layer.closeAll();


						$(obj).find('i').html('&#xe62f;');

						$(obj).parents("tr").find(".td-status").find('span')
								.addClass('layui-btn-disabled').html('已启用');
						layer.msg('已启用!', {
							icon : 5,
							time : 3000
						});
						window.location.reload();
					}
				})
        });
    }
	
	if($(obj).attr('title')=='3'){
		layer.msg('当前账号为黑名单状态!', {
			icon : 5,
			time : 3000
		});
		
    }
}
/* 用户-删除 */
function member_del(obj, id) {
	layer.confirm('确认要删除吗？', function(index) {
		// 发异步删除数据
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
		// 捉到所有被选中的，发异步进行删除
		layer.msg('删除成功', {
			icon : 1
		});
		$(".layui-form-checked").not('.header').parents('tr').remove();
	});
}