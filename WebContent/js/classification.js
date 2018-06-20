$(function(){
//模态框一级分类唯一性验证
	$("#oneclassadd").blur(function() {
		var oneclass=$("#oneclassadd").val();
		if (oneclass!="") {
			$.ajax({
				url :$("base").attr("href") + "SystemManage/classUniquequery.action",
				type : "post",
				data : {"oneclassname" : oneclass},
				datatype : "text",
				success : show
			})
		}
		else {
			alert("请先输入一级分类名称");
		}
	})

});

function show(msg) {
	if(msg=="success"){
		layer.msg('一级分类名称可用!', {
			icon : 1,
			time : 1000
		});
		$("#addoneprimary").attr("disabled",false);
	}else {
		layer.msg('一级分类已存在!', {
			icon : 1,
			time : 1000
		});
	}
}

$(function() {
//分类列表数据删除
	$(".member_del").click(function() {
		var classid= $(this).attr("id");
		var classtype= $(this).attr("name");
		if(window.confirm('是否删除？')){
			//发异步删除数据
			$.ajax({
				url : $("base").attr("href") + "SystemManage/delclasslistdata.action",
				type : "POST",
				data : {"classificationId":classid,"classtype":classtype},
				dataType : "text",
				async : true,
				success : function(msg) {
					//发异步删除数据
					if (msg == "success") {
						layer.msg('已删除!', {
							icon : 1,
							time : 1000
						});
						window.location.reload();
					}else {
						layer.msg('删除失败!', {
							icon : 1,
							time : 1000
						});
					}
				}
			})
         }
		})
//模态框input赋值
	$(".member_rev").click(function() {
		$("#revcontrller").find("option:selected").text("所属类型:"+$(this).parent().parent().children(".classificationPid").text());
		$("#revtwoclass").val($(this).parent().parent().children(".classificationName").text());
		$("#revprimary").attr("name",$(this).attr("id"));
		//服务商类型
		$("#serrevprimary").attr("name",$(this).attr("id"));
		$("#serrevoneclass").val($(this).parent().parent().children(".classificationName").text());
	})
//模态框分类列表数据修改	
	$("#revprimary").click(function() {
		var classificationId=$("#revprimary").attr("name");
		var classificationPid=$("#revcontrller").find("option:selected").attr("value");
		var classificationName=$("#revtwoclass").val();
		var revclassdate = {"classificationId":classificationId,"classificationPid":classificationPid,"classificationName":classificationName};
			$.ajax({
				url : $("base").attr("href") + "SystemManage/reviseClasslistData.action",
				type : "POST",
				contentType : "application/json;charset=utf-8",
				data:JSON.stringify(revclassdate),
				dataType : "text",
				async : true,
				success : function(msg) {
					if (msg=="success") {
						layer.msg('修改成功!', {
							icon : 1,
							time : 1000
						});
						window.location.reload();
					}else {
						layer.msg('修改失败!', {
							icon : 1,
							time : 1000
						});
					}
				}
			})
	})
	
	
//服务商类型配置信息修改
	$("#serrevprimary").click(function() {
		var classificationId=$("#serrevprimary").attr("name");
		var classificationPid=0;
		var classificationName=$("#serrevoneclass").val();
		var serrevclassdate = {"classificationId":classificationId,"classificationPid":classificationPid,"classificationName":classificationName};
		$.ajax({
			url : $("base").attr("href") + "SystemManage/reviseClasslistData.action",
			type : "POST",
			contentType : "application/json;charset=utf-8",
			data:JSON.stringify(serrevclassdate),
			dataType : "text",
			async : true,
			success : function(msg) {
				if (msg=="success") {
					layer.msg('修改成功!', {
						icon : 1,
						time : 1000
					});
					window.location.reload();
				}else {
					layer.msg('修改失败!', {
						icon : 1,
						time : 1000
					});
				}
			}
		})
		
	})
	
//批量删除
$(".layui-btn-danger").click(function() {
	 var data = tableCheck.getData();
	 if (data.length == 0) {
    	 layer.msg('未选择!',{icon:1,time:500});
    	 return;
	 }
	 var deleteStorys=[];
     for (var i = 0; i < data.length; i++) {
				var batchdata =	{"classificationId":data[i]};
				deleteStorys.push(batchdata);
		}
		if(window.confirm('是否删除？')){
			//发异步删除数据
			$.ajax({
				url : $("base").attr("href") + "SystemManage/delbatchclass.action",
				type : "POST",
				dataType : "text",
				contentType:"application/json",
	 			data:JSON.stringify(deleteStorys),
	 			async:true,
				success : function(msg) {
					//发异步删除数据
					if (msg == "success") {
						layer.msg('已删除!', {
							icon : 1,
							time : 1000
						});
						window.location.reload();
					}else {
						layer.msg('删除失败!', {
							icon : 1,
							time : 1000
						});
					}
				}
			})
         }
})
	
	
//分类列表数据增加	
	$("#addoneprimary").click(function() {
		var classificationPid=0;
		if ($("#oneclassadd").val()!="") {
			var classificationName = $("#oneclassadd").val();
			var classdate = {"classificationPid":classificationPid,"classificationName":classificationName};
			var classificationName=$("#oneclassadd").val();
				$.ajax({
					url : $("base").attr("href") + "SystemManage/addClasslistData.action",
					type : "POST",
					contentType : "application/json;charset=utf-8",
					data:JSON.stringify(classdate),
					dataType : "text",
					async : true,
					success : function(msg) {
						if (msg=="success") {
							layer.msg('修改成功!', {
								icon : 1,
								time : 1000
							});
							window.location.reload();
						}else {
							layer.msg('修改失败!', {
								icon : 1,
								time : 1000
							});
						}
					}
				})
		}else {
			var classificationPid=$("#addoneclass").find("option:selected").attr("value")
			var classificationName=$("#addtwoclass").val();
			var classdate =  {"classificationPid":classificationPid,"classificationName":classificationName};
			if (classificationPid!=""&&classificationName!="") {
				$.ajax({
					url : $("base").attr("href") + "SystemManage/addClasslistData.action",
					type : "POST",
					contentType : "application/json;charset=utf-8",
	       			data:JSON.stringify(classdate),
					dataType : "text",
					async : true,
					success : function(msg) {
						if (msg=="success") {
							alert("添加成功")
							window.location.reload();
						}else {
							alert("添加失败")
						}
					}
				})
			} else {
				if(classificationPid==""){
					layer.msg('请选择所属的一级分类!', {
						icon : 1,
						time : 1000
					});
				}else {
					layer.msg('二级名称不能为空!', {
						icon : 1,
						time : 1000
					});
				}
			}
		}
	})
})