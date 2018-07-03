/**
 * 
 */

var violationsID;
//更改当前页
function changePage(pageNum) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	// 2 提交表单
	$("#pageForm").submit();
};

//更改每页条数
function changePageSize(pageSize) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	// 2 提交表单
	$("#pageForm").submit();
};


//重新渲染表单
//function renderForm(){
//  layui.use('form', function(){
//   var form = layui.form;//高版本建议把括号去掉，有的低版本，需要加()
//   form.render();
//  });
// }



function openAddEmp(){
//	$("#role_select").find("option").remove();
//	$.ajax({
//		url : "SystemManage/ajaxRole.action",
//		type : "post",
//		dateType:"application/json",
//		async : true,
//		success : function(msg) {
//
//			var roleList=msg;
//			for (var i = 0; i < roleList.length; i++) {
//				alert(roleList[i].roleName);
//				$("#role_select").append('<option  value="'+roleList[i].roleID+'">'+roleList[i].roleName+'</option>');
//			}
//
//		}
//	})
	
	layer.open({
			      type: 1,
			      title:"新增员工",
			      area: ['800px', '500px'],
			      shadeClose: false, //点击遮罩关闭
			      content: $('#addNewEmp')
			    });
}

//修改信息之得到员工信息 
function getEmpInfo(roleID){
//	ajax
	$.ajax({
		url :  "SystemManage/empInfo.action",
		data:JSON.stringify(roleID),
		type : "POST",
		contentType : "application/json;charset=utf-8",
		dateType:"application/json",
		success : function(emp) {
			$('#editempAccount').val(emp.empAccount);
			$('#editempPwd').val(emp.empPwd);
			$('#editempName').val(emp.empName);
			$('#editempPhone').val(emp.empPhone);
			$('#editempIdentity').val(emp.empIdentity);
			$('#editempEmail').val(emp.empEmail);
			$('#editempAddress').val(emp.empAddress);
			
		}
	});
	$('#update').attr('title',roleID)
	
	layer.open({
	      type: 1,
	      title:"修改信息",
	      area: ['800px', '500px'],
	      shadeClose: false, //点击遮罩关闭
	      content: $('#updateEmp')
	    })
}

//更新员工信息
function updateEmp(){
	
	  layer.confirm('确认要提交吗？',function(index){

		  var empID=$("#update").attr("title");
		  var empAccount=$("#editempAccount").val();
		  var empPwd=$("#editempPwd").val();
		  var empName =$("#editempName").val();
		  var empPhone=$("#editempPhone").val();
		  var empIdentity=$("#editempIdentity").val();
		  var empEmail=$("#editempEmail").val();
		  var empAddress=$("#editempAddress").val();
		  var roleID=$("#editrole_select").val();
		  var empStatusID=1;
		  var updateEmp={"empID":empID,"empAccount":empAccount, "empPwd":empPwd,"empName":empName
				        ,"empPhone":empPhone,"empIdentity":empIdentity,"empEmail":empEmail,
				        "empAddress":empAddress,"empStatusID":empStatusID};

		  var allInfo={"roleID":roleID,"updateEmp":updateEmp}
		  alert("转换数据为===="+JSON.stringify(allInfo)); 
		  $.ajax({
   			url:"SystemManage/updateEmp.action",
   			type:"post",
   			dataType:"text",
   			contentType : "application/json;charset=utf-8",
   			data:JSON.stringify(allInfo),
   			async:true,
   			success:function(msg){//
   				layer.closeAll();
   				layer.msg('修改成功!', {
					icon : 5,
					time : 3000
				});
   			  	window.location.reload();
   			}
   		})
	  })
}





//添加员工
function addEmp(){
	
	  layer.confirm('确认要提交吗？',function(index){

		  var empAccount=$("#newempAccount").val();
		  var empPwd=$("#newempPwd").val();
		  var empName =$("#newempName").val();
		  var empPhone=$("#newempPhone").val();
		  var empIdentity=$("#newempIdentity").val();
		  var empEmail=$("#newempEmail").val();
		  var empAddress=$("#newempAddress").val();
		  var roleID=$("#role_select").val();
		  var empStatusID=1;
		  var newEmp={"empAccount":empAccount, "empPwd":empPwd,"empName":empName
				        ,"empPhone":empPhone,"empIdentity":empIdentity,"empEmail":empEmail,
				        "empAddress":empAddress,"empStatusID":empStatusID};

		  var allInfo={"roleID":roleID,"newEmp":newEmp}
		  alert("转换数据为===="+JSON.stringify(allInfo)); 
		  $.ajax({
   			url:"SystemManage/addNewEmp.action",
   			type:"post",
   			dataType:"text",
   			contentType : "application/json;charset=utf-8",
   			data:JSON.stringify(allInfo),
   			async:true,
   			success:function(msg){//
   				layer.closeAll();
   				layer.msg('添加成功!', {
					icon : 5,
					time : 3000
				});
   			  	window.location.reload();
   			}
   		})
	  })
}




/* 员工-停用 启用，更改状态*/
//1是启用 2是禁用 
function changeStatus(obj,id,sid){
	if($(obj).attr('title')=='1'){
		layer.confirm('确认要停用此账号吗？',function(index){
			//发异步把用户状态进行更改
			var emp = {
					"empID" : id,
					"empStatusID" : sid
				};

				$.ajax({
					url : "SystemManage/changeStatus.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(emp),
					async : true,
					success : function(msg) {//
						layer.closeAll();
//						$(obj).find('i').html('&#xe62f;');

						$(obj).parents("tr").find(".td-status").find('span')
								.addClass('layui-btn-disabled').html('已禁用');
						layer.msg('已禁用!', {
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
			var emp = {
					"empID" : id,
					"empStatusID" : sid
				};

				$.ajax({
					url : "SystemManage/changeStatus.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(emp),
					async : true,
					success : function(msg) {//
						layer.closeAll();


//						$(obj).find('i').html('&#xe62f;');

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
	
}
/* 用户-删除 */
function member_del(obj, id) {
	layer.confirm('确认要删除吗？', function(index) {
		// 发异步删除数据
		 $.ajax({
    			url:"SystemManage/delateEmp.action",
    			type:"post",
    			dataType:"text",
    			contentType:"application/json",
    			data:JSON.stringify(id),
    			async:true,
    			success:function(msg){//
    				alert(msg+"删除成功");
                 layer.msg('已删除!',{icon:1,time:1000});
                 window.location.reload();
    			}
    		})	
//		$(obj).parents("tr").remove();
//		layer.msg('已删除!', {
//			icon : 1,
//			time : 1000
//		});
	});
}

function delAll(argument) {

	 var deleteIDs = tableCheck.getData();
//	 alert(deleteIDs);
     if (deleteIDs.length == 0) {
    	 layer.msg('请选择要删除的员工!',{icon:2,time:1000});
    	 return;
	 }
    layer.confirm('确认要删除吗？',function(index){
		var deleteEmps=[];
     for (var i = 0; i < deleteIDs.length; i++) {
    	 alert("单个"+deleteIDs[i]);
				var data =	{"storyID":deleteIDs[i]};
				deleteEmps.push(data);
		}
     alert("所有ID为"+deleteEmps);
     $.ajax({
			url:"SystemManage/deleteEmps.action",
			type:"post",
			dataType:"text",
			contentType:"application/json",
			data:JSON.stringify(deleteEmps),
			async:true,
			success:function(msg){//
				alert(msg);
          layer.msg('已删除!',{icon:1,time:1000});
          window.location.reload();
			}
		})
    });
		
//		layer.msg('删除成功', {
//			icon : 1
//		});
//		$(".layui-form-checked").not('.header').parents('tr').remove();
//	});
}

$(document).on('blur','#editreempPwd,#editempPwd',function(){
	
	if($('#editreempPwd').val() != '' && $('#editreempPwd').val() != $('#editempPwd').val()){
		$('.editmsg_text').show().text('未匹配').css('color','red')
	}else if($('#editreempPwd').val() != '' && $('#editreempPwd').val() == $('#editempPwd').val()){
		$('.editmsg_text').show().text('已匹配').css('color','green')
	}
	if($('#editreempPwd').val() == '' || $('#editempPwd').val() == ''){
		$('.editmsg_text').hide()
	}
})

$(document).on('blur','#newreempPwd,#newempPwd',function(){
	
	if($('#newreempPwd').val() != '' && $('#newreempPwd').val() != $('#newempPwd').val()){
		$('.msg_text').show().text('未匹配').css('color','red')
	}else if($('#newreempPwd').val() != '' && $('#newreempPwd').val() == $('#newempPwd').val()){
		$('.msg_text').show().text('已匹配').css('color','green')
	}
	if($('#newreempPwd').val() == '' || $('#newempPwd').val() == ''){
		$('.msg_text').hide()
	}
})