/**
 * 
 */
var violationsID;
// 华清修改：需求管理更改当前页
function changePage(pageNum) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	// 2 提交表单
	$("#pageForm").submit();
};
//华清修改：需求管理更改每页条数
function changePageSize(pageSize) {
	// 1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	// 2 提交表单
	$("#pageForm").submit();
};

//通过

		function examine() {
			layer.confirm('确认审核通过吗？', function(index) {
				var demandID = $(".examine").attr("title");
				alert(demandID);
				var newdemandID = {
					"demandID" : demandID
				};
				$.ajax({

					url : "BusiManage/examine.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newdemandID),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						layer.msg('审核通过!', {
							icon : 5,
							time : 3000
						});
						window.location.reload(); 
					}

				})
			})
		}
		
		//拒绝通过

		function Audited() {
			layer.confirm('确认拒绝通过吗？', function(index) {
				var demandID = $(".Audited").attr("title");
				alert(demandID);
				var newdemandID = {
					"demandID" : demandID
				};
				$.ajax({

					url : "BusiManage/Audited.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newdemandID),
					async : true,
					success : function(msg) {//
						layer.closeAll();
						layer.msg('已拒绝!', {
							icon : 5,
							time : 3000
						});
						window.location.reload(); 
					}

				})
			})
		}
		//需求管理查看
		function openUpdateViolations(id,demandTitle,demandContent,demandRequire,userID){
			demandID = id;
			// 自动填写原记录
			$("#updateViolationsTime").val(demandTitle);
			$("#updateViolationsWhy").val(demandContent);
			$("#updateViolationsResult").val(demandRequire);
			$("#updateUserID").val(userID);
			layer.open({
			      type: 1,
			      title:"需求详情",
			      area: ['600px', '410px'],
			      shadeClose: false, //点击遮罩关闭
			      content: $('#details')
			    });
		}
		
		
		
		//扣除信用分
		
		
		function deduction(id,time,why,result,userID){
			demandID = id;
			// 自动填写原记录
			
			$("#userID").val(userID);
			layer.open({
			      type: 1,
			      title:"扣除信用分",
			      area: ['800px', '450px'],
			      shadeClose: false, //点击遮罩关闭
			      content: $('#deducTion')
			    });
		}

		//扣除信用分
		function deducTion(){
			var creditWhy=$("#creditWhy").val();
			var creditPoints=$("#creditPoints").val();
			var creditType=$("#creditType").val();
			if (creditType.length == 0 ||creditWhy.length == 0 || creditPoints.length == 0) {
				layer.msg('请先填写完整!',{icon:1,time:1000});
				return;
			}
			  layer.confirm('确认要提交吗？',function(index){
				
				  var userID=$("#userID").val();
				  var updateViolations={"creditWhy":creditWhy,"creditType":creditType, "creditPoints":creditPoints, 
						   "userID":userID };
				  alert(creditWhy);
				  alert(creditPoints);
				  alert(userID);
				  alert(creditType);
				  $.ajax({
		     			url: $("base").attr("href") + "BusiManage/deducTion.action",
		     			type:"post",
		     			dataType:"text",
		     			contentType : "application/json;charset=utf-8",
		     			data:JSON.stringify(updateViolations),
		     			async:true,
		     			success:function(msg){
		     				layer.closeAll();
		     				layer.msg(msg,{icon:1,time:1000});
		     			  	window.location.reload();
		     			}
		     		})
			  })
		}
		