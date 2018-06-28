<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
<script src="js/summernote.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>门户管理员</cite></a> <a><cite>成功案例配置</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="pageForm" class="layui-form layui-col-md12 x-so"
				action="PortalManage/successCaseList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}"> <input
					class="layui-input" placeholder="开始日" name="startDate" id="start"
					value="${condition.startDate}"> <input class="layui-input"
					placeholder="截止日" name="endDate" id="end"
					value="${condition.endDate}"> <input type="text"
					name="title" placeholder="请输入案例标题" autocomplete="off"
					class="layui-input" value="${condition.title}">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn" onclick="openaddCase()">
			<i class="layui-icon"></i>添加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：<c:out
				value="${pageInfo.total}"></c:out> 条
		</span> </xblock>
		<table class="layui-table">
			<thead>
				<tr>
					<th>
						<div class="layui-unselect header layui-form-checkbox"
							lay-skin="primary">
							<i class="layui-icon">&#xe605;</i>
						</div>
					</th>
					<th>序号</th>
					<th>案例标题</th>
					<th>案例日期</th>
					<th>操作</th>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="successCase" begin="0"
					varStatus="c">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${successCase.successCaseID}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td><c:out value="${c.index+1}"></c:out></td>
						<td><c:out value="${successCase.successCaseTitle}"></c:out></td>
						<td><c:out value="${successCase.successCaseTime}"></c:out></td>
						<td class="td-manage"><a title="编辑" class="updateA"
							successCaseContext='${successCase.successCaseContext}' successCaseID="${successCase.successCaseID}"
							href="javascript:;"> <i class="layui-icon">&#xe642;</i>
						</a><a title="删除" onclick="member_del(this,${successCase.successCaseID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 		分頁页脚 -->
	<%@ include file="/pagefoot.jsp" %>
	</div>
	<div style="display: none;" id="newCaseLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action"
			id="caseForm">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="successCaseTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newCaseTitle">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">封面</label>
				<div class="layui-input-block">
					<button type="button" class="layui-btn" id="cover">
						<i class="layui-icon">&#xe67c;</i>选择封面
					</button>
					<input type="hidden" name="imageURL" id="newCaseImageURL" value=""/>
					<label  id="coverLabel" >请选择成功案例的封面图片...</label>
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">主文</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="successCaseContext" id="newCaseContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addCase()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary"
						onclick="resetNewCase()">重置</button>
				</div>
			</div>
		</form>
	</div>

	<div style="display: none;" id="updataCaseLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action"
			id="updateCaseForm">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="successCaseTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="updateSuccessCaseTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">主文</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="successCaseContext" id="updateSuccessCaseContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="updateCase()">提交修改</button>
				</div>
			</div>
		</form>
	</div>

	<script>

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
	
	function resetNewCase(){
		$('.summernote').summernote('code',"");
	}
	
    function openaddCase(){
    		$('.summernote').eq(0).summernote('code',"");
    		layer.open({
    		      type: 1,
    		      title:"新增成功案例",
    		      area: ['800px', '500px'],
    		      shadeClose: false, //点击遮罩关闭
    		      content: $('#newCaseLayer')
    		    });
    }
    
    	
    	$(function(){
    		$(".updateA").click(openupdateCase);
    	})
    	
    	
    	var updateA;
    	function openupdateCase(){
    		updateA=$(this);
    		$("#updateSuccessCaseTitle").val($(this).parent().parent().children().eq(2).text());
    		$("#updateSuccessCaseContext").val($(this).attr("successCaseContext"));
    		$('.summernote').eq(1).summernote('code',$(this).attr("successCaseContext"));
    		layer.open({
  		      type: 1,
  		      title:"新增成功案例",
  		      area: ['800px', '500px'],
  		      shadeClose: false, //点击遮罩关闭
  		      content: $('#updataCaseLayer')
  		    });
    	}
    	function updateCase(){
    		layer.confirm('确认要提交修改吗？',function(index){
  			  var successCaseTitle=$("#updateSuccessCaseTitle").val();
//   			  var successCaseContext=$("#updateSuccessCaseContext").val();
  		      var successCaseContext=$('.summernote').eq(1).summernote('code');
  			  var successCaseID=updateA.attr("successCaseID");
  			  var updateCase={"successCaseID":successCaseID,"successCaseTitle":successCaseTitle,"successCaseContext":successCaseContext};
  			  console.log($('.summernote').eq(1).summernote('code'));
  			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
  			  $.ajax({
  	       			url:"PortalManage/updateSuccessCase.action",
  	       			type:"post",
  	       			dataType:"text",
  	       			contentType : "application/json;charset=utf-8",
  	       			data:JSON.stringify(updateCase),
  	       			async:true,
  	       			success:function(msg){//
  	       				updateA.parent().parent().children().eq(2).text(successCaseTitle);
  	       				updateA.attr("successCaseContext",successCaseContext);
  	       				layer.closeAll();
  	       			}
  	       		})
  		  })
    	}
    	
    	
    	
    	function addCase(){//添加成功案例
    		  layer.confirm('确认要提交吗？',function(index){
    			  if ($("#newCaseImageURL").val() == "") {
    				  layer.msg('请选择封面进行上传!',{icon:1,time:1000});
    				  return ;
				  }
    			  var successCaseTitle=$("#newCaseTitle").val();
    			  var successCaseContext =$('.summernote').eq(0).summernote('code');
    			  var coverUrl=$("#newCaseImageURL").val();
    			  var newCase={"successCaseTitle":successCaseTitle,"successCaseContext":successCaseContext
    					        ,"imageURL":coverUrl};
    			  console.log(newCase);
    			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
    			  $.ajax({
    	       			url:"PortalManage/addSuccessCase.action",
    	       			type:"post",
    	       			dataType:"text",
    	       			contentType : "application/json;charset=utf-8",
    	       			data:JSON.stringify(newCase),
    	       			async:true,
    	       			success:function(msg){//
    	       				layer.closeAll();
    	       			  	window.location.reload();
    	       			}
    	       		})
    		  })
    	}
    
    
      layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });

      
      /*用户-删除*/
      function member_del(obj,id){
    	  var deleteCases=[];
    	  var data ={"successCaseID":id};
    	  deleteCases.push(data);
          layer.confirm('确认要删除吗？',function(index){
        	  $.ajax({
       			url:"PortalManage/deleteStory.action",
       			type:"post",
       			dataType:"text",
       			contentType:"application/json",
       			data:JSON.stringify(deleteCases),
       			async:true,
       			success:function(msg){//
                    layer.msg('已删除!',{icon:1,time:1000});
                    window.location.reload();
       			}
       		})
          });
      }

      function delAll (argument) {
         var deleteIDs = tableCheck.getData();
         alert(deleteIDs.length);
         if (deleteIDs.length == 2) {
        	 layer.msg('请选择要删除的成功案例!',{icon:2,time:1000});
        	 return;
		 }
        layer.confirm('确认要删除吗？',function(index){
    		var deleteCases=[];
         for (var i = 0; i < deleteIDs.length; i++) {
 				var data =	{"successCaseID":deleteIDs[i]};
 				deleteCases.push(data);
 				alert(deleteCases);
 		}
         $.ajax({
 			url:"PortalManage/deleteStory.action",
 			type:"post",
 			dataType:"text",
 			contentType:"application/json",
 			data:JSON.stringify(deleteCases),
 			async:true,
 			success:function(msg){//
              layer.msg('已删除!',{icon:1,time:1000});
              window.location.reload();
 			}
 		})
        });
      }
      
      //封面上傳 by  hsp  6-19 20：46
      //设定文件大小限制
      
      layui.use('upload',function(){
    	  var $ = layui.jquery
    	  ,upload = layui.upload;
    	  var uploadInst = 	upload.render({
   				 elem: '#cover'
    			,url: 'File/upload.action'
  			    ,size: 60 //限制文件大小，单位 KB
   			    ,done: function(data){
                 console.log("上传封面成功");
   			     //1  把封面路径传给hidden等待表单提交   
   			     $("#newCaseImageURL").val(data.path);
   			     //2 更改label
   			     $("#coverLabel").text(data.name);
    		}
  			})
      }
      );
      
      
    </script>
	<script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
</body>
</html>