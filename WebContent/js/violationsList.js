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
  	  $.ajax({
  			url: $("base").attr("href") + "PortalManage/violationsDelete.action",
  			type:"post",
  			dataType:"text",
  			contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
  			data:JSON.stringify({"violationsID":id}),
  			async:true,
  			success:function(msg){
  				layer.msg('已删除!',{icon:1,time:1000});
  				window.location.reload();
  			}
  		})
  	  
        //发异步删除数据
//         $(obj).parents("tr").remove();

    });
}

//批量删除违规记录
function delAll (argument) {

    var data = tableCheck.getData();

    layer.confirm('确认要删除吗？'+data,function(index){
        //捉到所有被选中的，发异步进行删除
        layer.msg('删除成功', {icon: 1});
        $(".layui-form-checked").not('.header').parents('tr').remove();
    });
}