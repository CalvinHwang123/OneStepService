<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="./lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
<script type="text/javascript" src="./js/demands.js"></script>
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>门户管理员</cite></a> <a><cite>规则中心配置</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="pageForm" class="layui-form layui-col-md12 x-so"
				action="PortalManage/ruleCenterList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum() }"><input
					class="layui-input" placeholder="开始日" name="startDate" id="start"
					value="${condition.startDate }"> <input class="layui-input"
					placeholder="截止日" name="endDate" id="end"
					value="${condition.endDate }"> <input type="text"
					name="title" value="${condition.title }" placeholder="请输入规则标题"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="dellAll()">
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
					<th>规则标题</th>
					<th>规则发布日期</th>
					<th>操作</th>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="rulee" begin="0"
					varStatus="s">
					<tr>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${rulee.ruleID}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td><c:out value="${rulee.ruleID}"></c:out></td>
						<td><c:out value="${rulee.ruleTitle}"></c:out></td>

						<td><c:out value="${rulee.ruleTime}"></c:out></td>
						<td class="td-manage"><a title="编辑" class="updateA"
							ruleContext='${rulee.ruleContext}' ruleID="${rulee.ruleID}"
							href="javascript:;"> <i class="layui-icon">&#xe642;</i>
						</a> <a title="删除" onclick="member_del(this,${rulee.ruleID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page">
			<div>
				共${pageInfo.pages }页，每页 <select
					style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="3" ${pageInfo.getPageSize() == 3 ? "selected" : ""}>3</option>
					<option value="5" ${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${pageInfo.getPageSize() == 10 ? "selected" : ""}>10</option>
				</select> 条
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${pageInfo.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 2}')">${pageInfo.getPageNum() - 2}</a>
				</c:if>
				<c:if test="${pageInfo.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 1}')">${pageInfo.getPageNum() - 1}</a>
				</c:if>
				<!-- 当前页 -->
				<span class="current">${pageInfo.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if
						test="${pageInfo.getPageNum() + next le pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getPageNum() + next}')">${pageInfo.getPageNum() + next}</a>
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() < pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getNextPage() }')">下一页</a>
					</c:when>
					<%-- 下一页 可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div style="display: none;" id="storyLayer">
		<form class="layui-form" action="" id="storyForm">


			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="ruleTitle" required lay-verify="required"
						placeholder="请输入规则标题" autocomplete="off" class="layui-input"
						id="newRuleTitle">
				</div>
			</div>


			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">规则内容</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="ruleContext" id="newruleContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addRulee()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary"
						onclick="resetNewStory()">重置</button>
				</div>
			</div>
		</form>
	</div>

	<div style="display: none;" id="updataRuleeLayer">
		<form class="layui-form" action="" id="updateStoryForm">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-block">
					<input type="text" name="ruleTitle" required lay-verify="required"
						placeholder="请输入规则标题" autocomplete="off" class="layui-input"
						id="updateRuleTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">主文</label>
				<div class="layui-input-block">
					<%@ include file="/summernote.jsp"%>
					<input type="hidden" name="ruleContext" id="updateruleContext" />
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="updateRulee()">提交修改</button>
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
	//重置
	function resetNewStory(){
		$('.summernote').summernote('code',"");
	}
	
    function openAddStory(){
    		$('.summernote').eq(0).summernote('code',"");
    		layer.open({
    		      type: 1,
    		      title:"新增规则",
    		      area: ['800px', '500px'],
    		      shadeClose: false, //点击遮罩关闭
    		      content: $('#storyLayer')
    		    });
    }
    
    function addRulee(){//添加新规则
		  layer.confirm('确认要提交吗？',function(index){
			  
			  var ruleTitle=$("#newRuleTitle").val();
			  var ruleContext =$('.summernote').eq(0).summernote('code');
			 /*  var coverUrl=$("#newStoryImageURL").val(); */
			  var newStory={"ruleTitle":ruleTitle,"ruleContext":ruleContext};
			  console.log(newStory);
			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
			  $.ajax({
	       			url:"PortalManage/addRulee.action",
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
    
    	
    	$(function(){
    		$(".updateA").click(openUpdateStory);
    	})
    	
    	
    	var updateA;
    	function openUpdateStory(){
    		updateA=$(this);
    		$("#updateRuleTitle").val($(this).parent().parent().children().eq(2).text());
     		$("#updateruleContext").val($(this).attr("ruleContext"));
    		$('.summernote').eq(1).summernote('code',$(this).attr("ruleContext"));
    		layer.open({
  		      type: 1,
  		      title:"修改规则",
  		      area: ['800px', '500px'],
  		      shadeClose: false, //点击遮罩关闭
  		      content: $('#updataRuleeLayer')
  		    });
    	}
    	function updateRulee(){
    		layer.confirm('确认要提交修改吗？',function(index){
  			  var ruleTitle=$("#updateRuleTitle").val();
//   			  var ruleContext=$("#updateruleContext").val();
              var ruleContext= $('.summernote').eq(1).summernote('code');
  			  var ruleID=updateA.attr("ruleID");
  			 
  			  var updateStory={"ruleID":ruleID,"ruleTitle":ruleTitle,"ruleContext":ruleContext};
  			  console.log($('.summernote').eq(1).summernote('code'));
  			  var index = layer.load(2); //又换了种风格，并且设定最长等待10秒 
  			  $.ajax({
  	       			url:"PortalManage/updateRulee.action",
  	       			type:"post",
  	       			dataType:"text",
  	       			contentType : "application/json;charset=utf-8",
  	       			data:JSON.stringify(updateStory),
  	       			async:true,
  	       			success:function(msg){//
  	       				updateA.parent().parent().children().eq(2).text(ruleTitle);
  	       				updateA.attr("ruleContext",ruleContext);
  	       				layer.closeAll();
//   	       			window.location.reload();
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

      
   /*    /*规则-删除*/
      function member_del(obj,id){
    	  var deleteRulee=[];
    	  var data ={"ruleID":id};
    	  deleteRulee.push(data);
          layer.confirm('确认要删除吗？',function(index){
        	  $.ajax({
       			url:$("base").attr("href") +"PortalManage/deleteRulee.action",
       			type:"post",
       			dataType:"text",
       			contentType:"application/json;charset=utf-8",
       			data:JSON.stringify(deleteRulee),
       			async:true,
       			success:function(msg){//
                    layer.msg('已删除!',{icon:1,time:1000});
                    window.location.reload();
       			}
       		})
          });
      } 
   
   
    //批量删除规则
    function dellAll (argument) {
         var deleteIDs = tableCheck.getData();
        
         if (deleteIDs.length == 2) {
        	 layer.msg('请选择要删除的规则!',{icon:1,time:500});
        	 return;
		 }
        layer.confirm('确认要删除吗？',function(index){
    		var deleteStorys=[];
         for (var i = 0; i < deleteIDs.length-2; i++) {
 				var data =	{"ruleID":deleteIDs[i]};
 				deleteStorys.push(data);
 				
 		}
         $.ajax({
 			url:$("base").attr("href") +"PortalManage/deleteRulee.action",
 			type:"post",
 			dataType:"text",
 			contentType:"application/json;charset=utf-8",
 			data:JSON.stringify(deleteStorys),
 			async:true,
 			success:function(msg){//
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