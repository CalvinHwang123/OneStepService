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
		<span class="layui-breadcrumb"> <a><cite>业务管理员</cite></a> <a><cite>雇主故事配置</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="pageForm" class="layui-form layui-col-md12 x-so"
				action="PortalManage/userStoryList.action">
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
					name="title" placeholder="请输入故事标题" autocomplete="off"
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
		<button class="layui-btn" onclick="openAddStory()">
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
					<th>故事标题</th>
					<th>故事日期</th>
<!-- 					<th>雇主ID</th> -->
					<th>操作</th>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="story" begin="0"
					varStatus="s">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${story.storyID}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td><c:out value="${s.index+1}"></c:out></td>
						<td><c:out value="${story.storyTitle}"></c:out></td>
						<td><c:out value="${story.storyTime}"></c:out></td>
<%-- 						<td><c:out value="${story.userID}"></c:out></td> --%>
						<td class="td-manage"><a title="编辑" class="updateA"
							storyContext='${story.storyContext}' storyID="${story.storyID}"
							href="javascript:;"> <i class="layui-icon">&#xe642;</i>
						</a><a title="删除" onclick="member_del(this,${story.storyID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<!-- 		分頁页脚 -->
	<%@ include file="/pagefoot.jsp" %>
	</div>
	<div style="display: none;" id="storyLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action"
			id="storyForm">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="storyTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newStoryTitle">
				</div>
			</div>
<!-- 			<div class="layui-form-item"> -->
<!-- 				<label class="layui-form-label">雇主ID</label> -->
<!-- 				<div class="layui-input-block"> -->
<!-- 					<input type="text" name="userID" required lay-verify="required" -->
<!-- 						placeholder="请输入雇主ID" autocomplete="off" class="layui-input" -->
<!-- 						id="newUserID"> -->
<!-- 				</div> -->
<!-- 			</div> -->
			<div class="layui-form-item">
				<label class="layui-form-label">封面</label>
				<div class="layui-input-block">
					<button type="button" class="layui-btn" id="cover">
						<i class="layui-icon">&#xe67c;</i>选择封面
					</button>
					<input type="hidden" name="imageURL" id="newStoryImageURL" value=""/>
					<label  id="coverLabel" >请选择图片作为故事封面</label>
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">主文</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="storyContext" id="newStoryContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addStory()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary"
						onclick="resetNewStory()">重置</button>
				</div>
			</div>
		</form>
	</div>

	<div style="display: none;" id="updataStoryLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action"
			id="updateStoryForm">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="storyTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="updateStoryTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">主文</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="storyContext" id="updateStoryContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="updateStory()">提交修改</button>
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
	
	function resetNewStory(){
		$('.summernote').summernote('code',"");
	}
	
    function openAddStory(){
    		$('.summernote').eq(0).summernote('code',"");
    		layer.open({
    		      type: 1,
    		      title:"新增雇主故事",
    		      area: ['800px', '500px'],
    		      shadeClose: false, //点击遮罩关闭
    		      content: $('#storyLayer')
    		    });
    }
    
    	
    	$(function(){
    		$(".updateA").click(openUpdateStory);
    	})
    	
    	
    	var updateA;
    	function openUpdateStory(){
    		updateA=$(this);
    		$("#updateStoryTitle").val($(this).parent().parent().children().eq(2).text());
    		$("#updateStoryContext").val($(this).attr("storyContext"));
    		$('.summernote').eq(1).summernote('code',$(this).attr("storyContext"));
    		layer.open({
  		      type: 1,
  		      title:"新增雇主故事",
  		      area: ['800px', '500px'],
  		      shadeClose: false, //点击遮罩关闭
  		      content: $('#updataStoryLayer')
  		    });
    	}
    	function updateStory(){
    		layer.confirm('确认要提交修改吗？',function(index){
  			  var storyTitle=$("#updateStoryTitle").val();
//   			  var storyContext=$("#updateStoryContext").val();
  			  var storyContext=$('.summernote').eq(1).summernote('code');
  			  var storyID=updateA.attr("storyID");
  			 if (storyTitle == "") {
				  layer.msg('标题不能为空!',{icon:2,time:1000});
				  return ;
		       } if (storyTitle.length>20) {
				  layer.msg('标题不能超过20!',{icon:2,time:1000});
				  return ;
		       }
			  if (storyContext == "") {
				  layer.msg('内容不能为空!',{icon:2,time:1000});
				  return ;
		       }
  			  var updateStory={"storyID":storyID,"storyTitle":storyTitle,"storyContext":storyContext};
  			  console.log($('.summernote').eq(1).summernote('code'));
  			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
  			  $.ajax({
  	       			url:"PortalManage/updateStory.action",
  	       			type:"post",
  	       			dataType:"text",
  	       			contentType : "application/json;charset=utf-8",
  	       			data:JSON.stringify(updateStory),
  	       			async:true,
  	       			success:function(msg){//
  	       				updateA.parent().parent().children().eq(2).text(storyTitle);
  	       				updateA.attr("storyContext",storyContext);
  	       				layer.closeAll();
  	       			}
  	       		})
  		  })
    	}
    	
    	
    	
    	function addStory(){//添加新雇主故事
    		  layer.confirm('确认要提交吗？',function(index){
    			  var storyTitle=$("#newStoryTitle").val();
    			  var userID=$("#newUserID").val();
    			  var storyContext =$('.summernote').eq(0).summernote('code');
    			  var coverUrl=$("#newStoryImageURL").val();
    			  if (storyTitle == "") {
    				  layer.msg('标题不能为空!',{icon:2,time:1000});
    				  return ;
    		       } if (storyTitle.length>20) {
    				  layer.msg('标题不能超过20!',{icon:2,time:1000});
    				  return ;
    		       } if (userID == "") {
    				  layer.msg('雇主ID不能为空!',{icon:2,time:1000});
    				  return ;
    		       }
    			  if (storyContext == "") {
    				  layer.msg('内容不能为空!',{icon:2,time:1000});
    				  return ;
    		       }  if ($("#newStoryImageURL").val() == "") {
    				  layer.msg('请选择封面进行上传!',{icon:1,time:1000});
    				  return ;
				  }
    			  var newStory={"storyTitle":storyTitle, "userID":userID,"storyContext":storyContext
    					        ,"imageURL":coverUrl};
    			  console.log(newStory);
    			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
    			  $.ajax({
    	       			url:"PortalManage/addStory.action",
    	       			type:"post",
    	       			dataType:"text",
    	       			contentType : "application/json;charset=utf-8",
    	       			data:JSON.stringify(newStory),
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
    	  var deleteStorys=[];
    	  var data ={"storyID":id};
    	  deleteStorys.push(data);
          layer.confirm('确认要删除吗？',function(index){
        	  $.ajax({
       			url:"PortalManage/deleteStory.action",
       			type:"post",
       			dataType:"text",
       			contentType:"application/json",
       			data:JSON.stringify(deleteStorys),
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
         if (deleteIDs.length == 2) {
        	 layer.msg('请选择要删除的雇主故事!',{icon:2,time:1000});
        	 return;
		 }
        layer.confirm('确认要删除吗？',function(index){
    		var deleteStorys=[];
         for (var i = 0; i < deleteIDs.length; i++) {
 				var data =	{"storyID":deleteIDs[i]};
 				deleteStorys.push(data);
 		}
         $.ajax({
 			url:"PortalManage/deleteStory.action",
 			type:"post",
 			dataType:"text",
 			contentType:"application/json",
 			data:JSON.stringify(deleteStorys),
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
   			     $("#newStoryImageURL").val(data.path);
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