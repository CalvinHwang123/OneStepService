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
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">门户管理员</a> <a href="">友情链接</a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so layui-form-pane"
				id="pageForm" action="PortalManage/linksList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}"> <input type="text"
					name="title" placeholder="请输入链接地址" autocomplete="off"
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
		<button class="layui-btn" onclick="openAddLinks()">
			<i class="layui-icon"></i>增加
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：<c:out
				value="${pageInfo.total}"></c:out>条
		</span> </xblock>
		<form action="" id="app1" method="post">
			<table class="layui-table">
				<thead>
					<tr>
						<th>
							<div class="layui-unselect header layui-form-checkbox"
								lay-skin="primary">
								<i class="layui-icon">&#xe605;</i>
							</div>
						</th>
						<th>序列</th>
						<th>地址名称</th>
						<th>路径</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${pageInfo.list}" begin="0"
						varStatus="status">
						<tr>
							<td>
								<div class="layui-unselect layui-form-checkbox"
									lay-skin="primary" data-id='${i.linksid}'>
									<i class="layui-icon">&#xe605;</i>
								</div>
							</td>
							<td><c:out value="${status.index+1}"></c:out></td>
							<td><c:out value="${i.getLinksname()}"></c:out></td>
							<td><c:out value="${i.getLinksurl()}"></c:out></td>
							<td class="td-manage"><a class="updtae"
								onclick="openUpdateLinks(this,'${i.getLinksid()}','${i.getLinksname()}','${i.getLinksurl()}')"
								title="${i.getLinksid()}"> <i class="layui-icon">&#xe642;</i>
							</a> <a title="删除" onclick="member_del(this,'${i.getLinksid()}')"
								href="javascript:;"> <i class="layui-icon">&#xe640;</i>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>

		<div class="page">
			<div>
				共${pageInfo.getPages() }页，每页 <select
					style="width: 6%; height: 30px;" name="pageSize"
					onchange="changePageSize($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<option value="5" ${pageInfo.getPageSize() == 5 ? "selected" : ""}>5</option>
					<option value="10"
						${pageInfo.getPageSize() == 10 ? "selected" : ""}>10</option>
					<option value="20"
						${pageInfo.getPageSize() == 20 ? "selected" : ""}>20</option>
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
							<c:if test="${pageInfo.pages - pageInfo.pageNum - num> 0}">
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
	<div id="update" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">地址名称</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required lay-verify="linksname"
						placeholder="请输入地址" autocomplete="off" class="layui-input"
						id="newLinksName">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">地址路径</label>
				<div class="layui-input-block">
					<input type="text" name="linksurl" required lay-verify="linkurl"
						placeholder="请输入路径" autocomplete="off" class="layui-input"
						id="newLinksUrl">
				</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="UpdateLinks()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
	<!-- 增加链接 -->
	<div id="addLinks" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">地址名称</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required
						lay-verify="linksname1" placeholder="请输入地址" autocomplete="off"
						class="layui-input" id="newLinksName1">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">地址路径</label>
				<div class="layui-input-block">
					<input type="text" name="linksurl" required lay-verify="linkurl1"
						placeholder="请输入路径" autocomplete="off" class="layui-input"
						id="newLinksUrl1">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="AddLinks()">确定</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
	

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
	
	
	
	var linksid;
	function openUpdateLinks(obj,id,name,url){
		 linksid=id;
		 $("#newLinksName").val(name);
		 var LinksUrl=$("#newLinksUrl").val(url);
	layer.open({
		  type: 1,
		  area: ['500px', '300px'],
		  content: $('#update') 
		});
	}
	
	function openAddLinks(){
	layer.open({
		  type: 1,
		  area: ['500px', '300px'],
		  content: $('#addLinks') 
		});
	}
	
	
	function UpdateLinks(){//修改链接
		  layer.confirm('确认要提交吗？',function(index){
			  
			  var LinksName=$("#newLinksName").val();
			  var LinksUrl=$("#newLinksUrl").val();
			  var newLinks={"linksname":LinksName, "linksurl":LinksUrl,"linksid":linksid};
			  if(LinksName== null||InfoTitle==""){
					layer.msg('名称不能为空',{icon:2,time:1000});
				}else if(LinksUrl==null||InfoCon==""){
					layer.msg('地址不能为空',{icon:2,time:1000});
				}else if(LinksName.length>15){
					layer.msg('标题长度超过50',{icon:2,time:1000});
				}
				else if(InfoCon.length>255){
					layer.msg('地址长度超过255',{icon:2,time:1000});
				}
				else if(LinksName!= null||LinksName!=""||LinksUrl!=null||LinksUrl!=""){
			  $.ajax({
	       			url:"PortalManage/updateById.action",
	       			type:"post",
	       			dataType:"text",
	       			contentType : "application/json;charset=utf-8",
	       			data:JSON.stringify(newLinks),
	       			async:true,
	       			success:function(msg){
	       				layer.closeAll();
	       			  	window.location.reload();
	       			}
	       		})
				}
		  })
	}
	
	//增加链接
	function AddLinks() {
		layer.confirm('确认要提交吗？', function(index) {

			var LinksName = $("#newLinksName1").val();
			var LinksUrl = $("#newLinksUrl1").val();
			var newLinks = {
					"linksname":LinksName, "linksurl":LinksUrl,"linksid":linksid
			};
			 if(LinksName== null||InfoTitle==""){
					layer.msg('名称不能为空',{icon:2,time:1000});
				}else if(LinksUrl==null||InfoCon==""){
					layer.msg('地址不能为空',{icon:2,time:1000});
				}else if(LinksName.length>15){
					layer.msg('标题长度超过50',{icon:2,time:1000});
				}
				else if(InfoCon.length>255){
					layer.msg('地址长度超过255',{icon:2,time:1000});
				}
				else if(LinksName!= null||LinksName!=""||LinksUrl!=null||LinksUrl!=""){
			$.ajax({
				url : "PortalManage/addlinks.action",
				type : "post",
				dataType : "text",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(newLinks),
				async : true,
				success : function(msg) {
					layer.closeAll();
					window.location.reload();
				}
			})
				}
		})
	}
	
	</script>


	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#start' //指定元素
			});

			//执行一个laydate实例
			laydate.render({
				elem : '#end' //指定元素
			});
		});

		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				var deleteLinks=[];
				var data =	{"linksid":id};
				deleteLinks.push(data);
				$.ajax({
					url : "PortalManage/deleteById.action",
					type : "POST",
					dataType : "text",
					contentType:"application/json",
					data : JSON.stringify(deleteLinks),
					async : true,
					success : function(msg) {
						//发异步删除数据
						if (msg == "success") {
							layer.msg('已删除!', {
								icon : 1,
								time : 1000
							});
							window.location.reload();

						}
					}
				})
			});
		}

		function delAll(argument) {
			var deleteIDs = tableCheck.getData();
			if (deleteIDs.length == 0) {
	        	 layer.msg('请选择要删除的链接!',{icon:1,time:500});
	        	 return;
			 }
			layer.confirm('确认要删除吗？', function(index) {
				var deleteLinks=[];
				 for (var i = 0; i < deleteIDs.length; i++) {
		 				var data =	{"linksid":deleteIDs[i]};
		 				deleteLinks.push(data);
		 		}
		         $.ajax({
		 			url:"PortalManage/deleteById.action",
		 			type:"post",
		 			dataType:"text",
		 			contentType:"application/json",
		 			data:JSON.stringify(deleteLinks),
		 			async:true,
		 			success:function(msg){//
		              layer.msg('已删除!',{icon:1,time:1000});
		              window.location.reload();
		 			}
		 		})
			});
		}
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

</body>
</html>