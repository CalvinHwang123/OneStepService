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
<link rel="stylesheet" href="/static/build/layui.css" media="all">
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">演示</a>
			<a> <cite>导航元素88</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so layui-form-pane"
				id="pageForm" action="PortalManage/listDyna.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}"> <input type="hidden"
					id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}"> <input
					class="layui-input" placeholder="开始日" name="startDate" id="start" value="${condition.startDate}">
				<input class="layui-input" placeholder="截止日" name="endDate" id="end" value="${condition.endDate}">
				<input type="text" name="title" placeholder="请输入动态标题"
					autocomplete="off" class="layui-input"  value="${condition.title}">
				<div class="layui-input-inline">
					<select name="classPid">
						<option value="0"></option>
						<c:forEach var="i" items="${classlist}">
							<option value="${i.classificationId}"><c:out
									value="${i.classificationName}">
								</c:out></option>
						</c:forEach>
					</select>
				</div>
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>

			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn" onclick="openAddDyna()">
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
						<th>动态标题</th>
						<th>动态内容</th>
						<th>动态时间</th>
						<th>分类名称</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${pageInfo.list}" begin="0"
						varStatus="status">
						<tr>
							<td>
								<div class="layui-unselect layui-form-checkbox"
									lay-skin="primary" data-id='${i.dynamicId}'>
									<i class="layui-icon">&#xe605;</i>
								</div>
							</td>
							<td><c:out value="${status.index+1}"></c:out></td>
							<td><c:out value="${i.dynamicTitle}"></c:out></td>
							<td><c:out value="${i.dynamicContext}"></c:out></td>
							<td><c:out value="${i.dynamicTime}"></c:out></td>
							<td><c:out value="${i.checkClass.classificationName}"></c:out></td>
							<td class="td-manage"><a title="编辑"
								onclick="openUpdateDyna(this,'${i.dynamicId}','${i.dynamicTitle}','${i.dynamicContext}','${i.dynamicTime}')"
								href="javascript:;"> <i class="layui-icon">&#xe642;</i>
							</a> <a title="删除" onclick="member_del(this,'${i.dynamicId}')"
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
				<label class="layui-form-label">动态标题</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newDynaTitle">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">动态内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"
						id="newDynaCon"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">动态時間</label>
				<div class="layui-input-block">
					<input type="datetime" name="linksname" placeholder="请输入時間"
						class="layui-input" id="test1">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">分类名称</label>
				<div class="layui-input-inline">
					<select name="classificationId" id="updateclass">
						<option value="0"></option>
						<c:forEach var="i" items="${classlist}">
							<option value="${i.classificationId}"><c:out
									value="${i.classificationName}">
								</c:out></option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="UpdateDyna()">修改</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
	<!-- 增加动态 -->
	<div id="addDyna" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">动态标题</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required lay-verify="required"
						placeholder="请输入标题" autocomplete="off" class="layui-input"
						id="newDynaTitle1">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">动态内容</label>
				<div class="layui-input-block">
					<textarea name="desc" placeholder="请输入内容" class="layui-textarea"
						id="newDynaCon1"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">动态時間</label>
				<div class="layui-input-block">
					<input type="datetime" name="linksname" placeholder="请输入時間"
						class="layui-input" id="test2">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">分类名称</label>
				<div class="layui-input-inline">
					<select name="action" id="addclass">
						<option value="0"></option>
						<c:forEach var="i" items="${classlist}">
							<option value="${i.classificationId}"><c:out
									value="${i.classificationName}">
								</c:out></option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="AddDyna()">确定</button>
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
	
	
		var dynamicId;
		function openUpdateDyna(obj, id,title,con,time) {
			dynamicId = id;
	     $("#newDynaTitle").val(title);
		 $("#newDynaCon").val(con);
		 $("#test1").val(time);
			layer.open({
				type : 1,
				area : [ '500px', '300px' ],
				content : $('#update')
			});
		}
		
		function openAddDyna() {
			layer.open({
				type : 1,
				area : [ '500px', '300px' ],
				content : $('#addDyna')
			});
		}
		
      // 修改
		function UpdateDyna() {//修改链接
			layer.confirm('确认要提交吗？', function(index) {
				var DynaTitle = $("#newDynaTitle").val();
				var DynaCon = $("#newDynaCon").val();
				var DynaTime = $("#test1").val();
				var classificationId=$("#updateclass").val();
				var newDyna = {
					"dynamicTitle" : DynaTitle,
					"dynamicContext" : DynaCon,
					"dynamicTime" : DynaTime,
					"dynamicId" : dynamicId,
					"classificationId":classificationId
				};
				$.ajax({
					url : "PortalManage/updateDynaById.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newDyna),
					async : true,
					success : function(msg) {
						layer.closeAll();
						window.location.reload();
					}
				})
			})
		}
		//增加动态
		function AddDyna() {
			layer.confirm('确认要提交吗？', function(index) {

				var DynaTitle = $("#newDynaTitle1").val();
				var DynaCon = $("#newDynaCon1").val();
				var DynaTime = $("#test2").val();
				var classificationId=$("#addclass").val();
				var newDyna = {
					"dynamicTitle" : DynaTitle,
					"dynamicContext" : DynaCon,
					"dynamicTime" : DynaTime,
					"dynamicId" : dynamicId,
					"classificationId":classificationId
				};
				$.ajax({
					url : "PortalManage/addDyna.action",
					type : "post",
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					data : JSON.stringify(newDyna),
					async : true,
					success : function(msg) {
						layer.closeAll();
						window.location.reload();
					}
				})
			})
		}
		
		

		
	</script>

	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test1' //指定元素
					 ,type: 'datetime'
			});
		});
	</script>

	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test2' //指定元素
					 ,type: 'datetime'
			});
		});
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
				$.ajax({
					url : "PortalManage/deleteDynaById.action",
					type : "POST",
					data : "dynamicId=" + id,
					dataType : "text",
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
		        	 layer.msg('请选择要删除的动态!',{icon:1,time:500});
		        	 return;
				 }
		         layer.confirm('确认要删除吗？',function(index){
			     		var deleteDyna=[];
			          for (var i = 0; i < deleteIDs.length; i++) {
			  				var data =	{"dynamicId":deleteIDs[i]};
			  				deleteDyna.push(data);
			  		}
			          $.ajax({
			  			url:"PortalManage/deleteDynaById.action",
			  			type:"post",
			  			dataType:"text",
			  			contentType:"application/json",
			  			data:JSON.stringify(deleteDyna),
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