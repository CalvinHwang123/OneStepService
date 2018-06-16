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
					class="layui-input" placeholder="开始日" name="startDate" id="start" value="${condition.startDate}">
				<input class="layui-input" placeholder="截止日" name="endDate" id="end" value="${condition.endDate}">
				<input type="text" name="title" placeholder="请输入故事标题"
					autocomplete="off" class="layui-input"  value="${condition.title}">
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
					<th>雇主ID</th>
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
						<td><c:out value="${story.userID}"></c:out></td>
						<td class="td-manage"><a title="编辑" class="updateA"
							 storyContext="${story.storyContext}" storyID="${story.storyID}"
							href="javascript:;"> <i class="layui-icon">&#xe642;</i>
						</a><a title="删除" onclick="member_del(this,${story.storyID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page">
			<div>
				共${pageInfo.getPages() }页，每页 <select
					style="width: 6%; height: 30px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="5" ${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10" ${pageInfo.getPageSize() == 10 ? "selected" : ""}>10</option>
					<option value="20" ${pageInfo.getPageSize() == 20 ? "selected" : ""}>20</option>
				</select> 条
				<c:choose>
					<c:when test="${!pageInfo.hasPreviousPage}">
						<span class="prev">上一页</span>
					</c:when>
					<c:otherwise>
						<a class="prev" href="javascript:void(0);"
							onclick="changePage(${pageInfo.getPrePage()})">上一页</a>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when test="${pageInfo.pageNum <= 2}">
						<c:if test="${pageInfo.pageNum != 1}">
							<a class="num" href="javascript:void(0);"
							onclick="changePage(${pageInfo.pageNum-1})"><c:out
									value="${pageInfo.pageNum-1}"></c:out> </a>
						</c:if>
						<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
						<c:forEach begin="1" step="1" end="4" var="num">
							<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
								<a class="num" href="javascript:void(0);"
									onclick="changePage(${pageInfo.pageNum+num})"><c:out
										value="${pageInfo.pageNum+num}"></c:out> </a>
							</c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
					  <a class="num" href="javascript:void(0);"
							onclick="changePage(${pageInfo.pageNum-1})"><c:out
									value="${pageInfo.pageNum-1}"></c:out> </a>
									
					 <span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
					 <c:forEach begin="1" step="1" end="4" var="num">
							<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
								<a class="num" href="javascript:void(0);"
									onclick="changePage(${pageInfo.pageNum+num})"><c:out
										value="${pageInfo.pageNum+num}"></c:out> </a>
							</c:if>
					 </c:forEach>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${!pageInfo.hasNextPage}">
						<span class="next">下一页</span>
					</c:when>
					<c:otherwise>
						<a class="next" href="javascript:void(0);"
							onclick="changePage(${pageInfo.getNextPage()})">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div style="display: none;" id="storyLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action" id="storyForm">
			<div class="layui-form-item">
				<label class="layui-form-label">故事标题</label>
				<div class="layui-input-block">
					<input type="text" name="storyTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newStoryTitle">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">雇主ID</label>
				<div class="layui-input-block">
					<input type="text" name="userID" required lay-verify="required"
						placeholder="请输入雇主ID" autocomplete="off" class="layui-input"
						id="newUserID">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">故事主文</label>
				<div class="layui-input-block">
					<textarea name="storyContext" placeholder="请输入内容"
						class="layui-textarea" id="newStoryContext"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addStory()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
	
	<div style="display: none;" id="updataStoryLayer">
		<form class="layui-form" action="PortalManage/userStoryList.action" id="updateStoryForm">
			<div class="layui-form-item">
				<label class="layui-form-label">故事标题</label>
				<div class="layui-input-block">
					<input type="text" name="storyTitle" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="updateStoryTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">故事主文</label>
				<div class="layui-input-block">
					<textarea name="storyContext" placeholder="请输入内容"
						class="layui-textarea" id="updateStoryContext"></textarea>
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
	
	
    	function openAddStory(){
    		document.getElementByID("storyForm").reset();
    		layer.open({
    		      type: 1,
    		      title:"新增雇主故事",
    		      area: ['600px', '360px'],
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
    		layer.open({
  		      type: 1,
  		      title:"新增雇主故事",
  		      area: ['600px', '360px'],
  		      shadeClose: false, //点击遮罩关闭
  		      content: $('#updataStoryLayer')
  		    });
    	}
    	function updateStory(){
    		layer.confirm('确认要提交修改吗？',function(index){
  			  var storyTitle=$("#updateStoryTitle").val();
  			  var storyContext=$("#updateStoryContext").val();
  			  var storyID=updateA.attr("storyID");
  			  var updateStory={"storyID":storyID,"storyTitle":storyTitle,"storyContext":storyContext};
  			  alert(storyID);
  			  alert(storyTitle);
  			  alert(storyContext);
  			  
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
    			  var storyContext=$("#newStoryContext").val();
    			  var newStory={"storyTitle":storyTitle, "userID":userID,"storyContext":storyContext};
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
//     	       				layer.close(index);
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
       				alert(msg);
                    layer.msg('已删除!',{icon:1,time:1000});
                    window.location.reload();
       			}
       		})
          });
      }

      function delAll (argument) {
         var deleteIDs = tableCheck.getData();
         if (deleteIDs.length == 0) {
        	 layer.msg('请选择要删除的雇主故事!',{icon:1,time:500});
        	 return;
		 }
        layer.confirm('确认要删除吗？',function(index){
    		var deleteStorys=[];
         for (var i = 0; i < deleteIDs.length; i++) {
 				var data =	{"storyID":deleteIDs[i]};
 				deleteStorys.push(data);
 				alert(deleteStorys);
 		}
         $.ajax({
 			url:"PortalManage/deleteStory.action",
 			type:"post",
 			dataType:"text",
 			contentType:"application/json",
 			data:JSON.stringify(deleteStorys),
 			async:true,
 			success:function(msg){//
 				alert(msg);
              layer.msg('已删除!',{icon:1,time:1000});
              window.location.reload();
 			}
 		})
        });
      }
    </script>
	<script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
</body>
</html>