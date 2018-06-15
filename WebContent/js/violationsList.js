// 曝光台脚本 by hlq 21:53
// 全局选中的条目id
var violationsID;
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
	var violationsWhy=$("#newViolationsWhy").val();
	var violationsResult=$("#newViolationsResult").val();
	var userID=$("#newUserID").val();
	if (violationsWhy.length == 0 || violationsResult.length == 0 || userID.length == 0) {
		layer.msg('请先填写完整!',{icon:1,time:1000});
		return;
	}
	  layer.confirm('确认要提交吗？',function(index){
		  var newViolations={"violationsWhy":violationsWhy, "violationsResult":violationsResult,"userID":userID};
		  $.ajax({
     			url: $("base").attr("href") + "PortalManage/violationsInsert.action",
     			type:"post",
     			dataType:"text",
     			contentType : "application/json;charset=utf-8",
     			data:JSON.stringify(newViolations),
     			async:true,
     			success:function(msg){
     				layer.closeAll();
     				layer.msg('已增加!',{icon:1,time:1000});
     			  	window.location.reload();
     			}
     		})
	  })
}

//打开修改违规记录弹出层
function openUpdateViolations(id,time,why,result,userid){
	violationsID = id;
	// 自动填写原记录
	$("#updateViolationsTime").val(time);
	$("#updateViolationsWhy").val(why);
	$("#updateViolationsResult").val(result);
	$("#updateUserID").val(userid);
	layer.open({
	      type: 1,
	      title:"修改违规记录",
	      area: ['600px', '410px'],
	      shadeClose: false, //点击遮罩关闭
	      content: $('#violationsUpdateLayer')
	    });
}

//修改违规记录
function updateViolations(){
	var violationsWhy=$("#updateViolationsWhy").val();
	var violationsResult=$("#updateViolationsResult").val();
	if (violationsWhy.length == 0 || violationsResult.length == 0) {
		layer.msg('请先填写完整!',{icon:1,time:1000});
		return;
	}
	  layer.confirm('确认要提交吗？',function(index){
		  var violationsTime=$("#updateViolationsTime").val();
		  var userID=$("#updateUserID").val();
		  var updateViolations={"violationsWhy":violationsWhy, "violationsResult":violationsResult, 
				  "violationsID":violationsID, "userID":userID, "violationsTime":violationsTime};
		  $.ajax({
     			url: $("base").attr("href") + "PortalManage/violationsUpdate.action",
     			type:"post",
     			dataType:"text",
     			contentType : "application/json;charset=utf-8",
     			data:JSON.stringify(updateViolations),
     			async:true,
     			success:function(msg){
     				layer.closeAll();
     				layer.msg('已修改!',{icon:1,time:1000});
     			  	window.location.reload();
     			}
     		})
	  })
}