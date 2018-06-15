// 曝光台脚本 by hlq 21:53

// 更改当前页
function changePage(pageNum) {
	//1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	//2 提交表单
	$("#pageForm").submit();
};

// 更改每页条数
function changePageSize(pageSize) {
	//1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	//2 提交表单
	$("#pageForm").submit();
};

// 单个删除违规记录
function violationDelete(obj, id) {
	layer.confirm('确认要删除吗？',function(index){
	var deleteViolation=[];
  	var data ={"violationsID":id};
  	deleteViolation.push(data);
  	  $.ajax({
  			url: $("base").attr("href") + "PortalManage/violationsDelete.action",
  			type:"post",
  			dataType:"text",
  			contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
  			data:JSON.stringify(deleteViolation),
  			async:true,
  			success:function(msg){
  				layer.msg('已删除!',{icon:1,time:1000});
  				window.location.reload();
  			}
  		})
    });
}

//批量删除违规记录
function delAll (argument) {

    var vioId = tableCheck.getData();
    if (vioId.length == 0) {
    	layer.msg('请先选择!',{icon:1,time:1000});
    	return;
    }
    var vioIdArr = [];
    for (var i = 0; i < vioId.length; ++i) {
    	vioIdArr.push({"violationsID": parseInt(vioId[i])});
    }
    
    layer.confirm('确认要批量删除吗？',function(index){
    	
    	$.ajax({
  			url: $("base").attr("href") + "PortalManage/violationsDelete.action",
  			type:"post",
  			dataType:"text",
  			contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
  			data:JSON.stringify(vioIdArr),
  			async:true,
  			success:function(msg){
  				layer.msg('已删除!',{icon:1,time:1000});
  				window.location.reload();
  			}
  		})
    });
}

// 打开新增违规记录弹出层
function openAddViolations(){
	layer.open({
	      type: 1,
	      title:"新增违规记录",
	      area: ['600px', '360px'],
	      shadeClose: false, //点击遮罩关闭
	      content: $('#violationsLayer')
	    });
}

// 新增违规记录
function addViolations(){
	  layer.confirm('确认要提交吗？',function(index){
		  var violationsWhy=$("#newViolationsWhy").val();
		  var violationsResult=$("#newViolationsResult").val();
		  var userID=$("#newUserID").val();
		  var newViolations={"violationsWhy":violationsWhy, "violationsResult":violationsResult,"userID":userID};
		  $.ajax({
     			url:"PortalManage/violationsInsert.action",
     			type:"post",
     			dataType:"text",
     			contentType : "application/json;charset=utf-8",
     			data:JSON.stringify(newViolations),
     			async:true,
     			success:function(msg){
     				layer.closeAll();
     			  	window.location.reload();
     			}
     		})
	  })
}