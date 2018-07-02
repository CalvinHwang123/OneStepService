/**
 * 
 */
$(function() {
	// 作品上下架
	$(".Workoffshelf").click(
			function() {
				var workid = $(this).attr("name");
				var workstypeid;
				if ($(this).attr("title") == "已下架") {
					workstypeid = 1;
					layer.confirm('是否上架？', function(index) {
						$.ajax({
							url : $("base").attr("href")
									+ "BusiManage/Workoffshelf.action",
							type : "POST",
							data : {
								"workid" : workid,
								"workstypeid" : workstypeid
							},
							dataType : "text",
							async : true,
							success : function(msg) {
								if (msg == "success") {
									layer.msg('上架成功!', {
										icon : 1,
										time : 1000
									});
									window.location.reload();
								} else {
									layer.msg('上架失败!', {
										icon : 1,
										time : 1000
									});
								}
							}
						})
						layer.closeAll();
					})
				} else {
					if ($(this).attr("title") == "出售中") {
						workstypeid = 2;
						layer.confirm('是否下架？', function(index) {
							$.ajax({
								url : $("base").attr("href")
										+ "BusiManage/Workoffshelf.action",
								type : "POST",
								data : {
									"workid" : workid,
									"workstypeid" : workstypeid
								},
								dataType : "text",
								async : true,
								success : function(msg) {
									if (msg == "success") {
										layer.msg('下架成功!', {
											icon : 1,
											time : 1000
										});
										window.location.reload();
									} else {
										layer.msg('下架失败!', {
											icon : 1,
											time : 1000
										});
									}
								}
							})
							layer.closeAll();
						})
					}
				}

			})
	// 作品删除
	$(".myfoerdel").click(function() {
		var workid = $(this).attr("name");
		layer.confirm('是否删除？', function(index) {
			$.ajax({
				url : $("base").attr("href") + "BusiManage/Worksdel.action",
				type : "POST",
				data : {
					"workid" : workid
				},
				dataType : "text",
				async : true,
				success : function(msg) {
					if (msg == "success") {
						layer.msg('删除成功!', {
							icon : 1,
							time : 1000
						});
						window.location.reload();
					} else {
						layer.msg('删除失败!', {
							icon : 1,
							time : 1000
						});
					}
				}
			})
			layer.closeAll();
		})
	})
	// 作品修改
	$(".Workmodification").click(function() {
		var workid = $(this).attr("name");
		$.ajax({
			url : $("base").attr("href") + "BusiManage/Workmodification.action",
			type : "POST",
			data : { "workid" : workid },
			dataType : "text",
			async : true,
			success : function(msg) {
				var workinfo=JSON.parse(msg);
				if (workinfo!="") {
					for (var i = 0; i < workinfo.length; i++) {
						$("#worksId").attr("value",workinfo[i].worksId);
						$("#worksName").attr("value",workinfo[i].worksName);
						$("#worksContext").text(workinfo[i].workScontext);
						$("#worksPrice").attr("value",workinfo[i].worksPrice);
						$("#url").attr("value",workinfo[i].url);
						$("#second_classification3").append("<option selected='selected' value="+workinfo[i].classIficstionId+">"+workinfo[i].classificationName.classificationName+"</option>");
					}	
				}
			}
		})
	})
	//作品修改提交
	$(".btn-primary").click(function() {
		var classificationID=$("#second_classification3").val();
		var worksName=$("#worksName").val();
		var worksContext=$("#worksContext").val();
		var url=$("#url").attr("value");
		var worksPrice=$("#worksPrice").val();
		var workid = $("#worksId").attr("value");

		var revclassdate = {"classificationId":classificationID,"worksName":worksName,"worksContext":worksContext,"url":url,"worksPrice":worksPrice,"worksId":workid};
		layer.confirm('是否修改？', function(index) {
			$.ajax({
				url : $("base").attr("href") + "BusiManage/Modificationofwork.action",
				type : "POST",
				contentType : "application/json;charset=utf-8",
				data:JSON.stringify(revclassdate),
				dataType : "text",
				async : true,
				success : function(msg) {
					if (msg == "success") {
						layer.msg('修改成功!', {
							icon : 1,
							time : 1000
						});
						window.location.reload();
					} else {
						layer.msg('修改失败!', {
							icon : 1,
							time : 1000
						});
					}
				}
			})
			layer.closeAll();
		})
	})
})