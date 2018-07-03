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
		<span class="layui-breadcrumb"><a href="">业务管理员</a> <a href="">作品管理</a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form class="layui-form layui-col-md12 x-so layui-form-pane"
				id="pageForm" action="BusiManage/listWorks.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize()}">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum()}"> <input type="text"
					name="startDate" placeholder="作品名称" autocomplete="off"
					class="layui-input" value="${condition.startDate}"> <input
					type="text" name="endDate" placeholder="服务商" autocomplete="off"
					class="layui-input" value="${condition.endDate}">
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
		<xblock> <span class="x-right" style="line-height: 40px">共有数据：<c:out
				value="${pageInfo.total}"></c:out>条
		</span> </xblock>
		<form action="" id="app1" method="post">
			<table class="layui-table">
				<thead>
					<tr>
						<th>序列</th>
						<th>作品名称</th>
						<th>分类名称</th>
						<th>服务商</th>
						<th>作品价格</th>
						<th>成交量</th>
						<th>作品状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="i" items="${pageInfo.list}" begin="0"
						varStatus="status">
						<tr>
							<td><c:out value="${status.index+1}"></c:out></td>
							<td><c:out value="${i.worksName}"></c:out></td>
							<td><c:out value="${i.checkClass.classificationName}"></c:out></td>
							<td><c:out value="${i.checkUser.userName}"></c:out></td>
							<td><c:out value="${i.worksPrice}"></c:out></td>
							<td><c:out value="${i.worksNum}"></c:out></td>
							<%-- 							<td><c:out value="${i.worksStatusId}"></c:out></td> --%>
							<c:choose>
								<c:when test="${i.worksStatusId== 1}">
									<td class="td-status"><span
										class="layui-btn layui-btn-normal layui-btn-mini"><c:out
												value="待审核"></c:out></span></td>
								</c:when>
								<c:when test="${i.worksStatusId== 2}">
									<td class="td-status"><span
										class="layui-btn layui-btn-normal layui-btn-mini"><c:out
												value="已审核"></c:out></span></td>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${i.worksStatusId== 1}">
									<td class="td-manage"><a
										onclick="member_stop(this,${i.worksId},${i.worksStatusId})"
										title="审核" href="javascript:;"><i class="layui-icon">&#xe601;</i></a>
										<a title="查看"
										onclick="openSelectWorks(this,'${i.checkUser.userName}','${i.worksStatusId}')"
										href="javascript:;"> <i class="layui-icon">&#xe63c;</i>
									</a></td>
								</c:when>
								<c:when test="${i.worksStatusId == 2}">
									<td><a title="查看"
										onclick="openSelectWorks(this,'${i.checkUser.userName}','${i.worksStatusId}')"
										href="javascript:;"> <i class="layui-icon">&#xe63c;</i>
									</a></td>
								</c:when>

							</c:choose>
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

	<!-- 查看作品 -->
	<div id="selectWorks" style="display: none">
		<form class="layui-form" action="">
			<div class="layui-form-item">
				<label class="layui-form-label">服务商</label>
				<div class="layui-input-block">
					<input type="text" name="linksname" required
						lay-verify="linksname1" placeholder="请输入地址" autocomplete="off"
						class="layui-input" id="newWorksName">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">作品状态</label>
				<div class="layui-input-block">
					<input type="text" name="linksurl" required lay-verify="linkurl1"
						placeholder="请输入路径" autocomplete="off" class="layui-input"
						id="newWorksType">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" type="button" onclick="closeWorks()">关闭</button>

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
	
		
	function openSelectWorks(obj,name,type){
		 $("#newWorksName").val(name);
		 $("#newWorksType").val(type);
		layer.open({
		  type: 1,
		  area: ['500px', '300px'],
		  content: $('#selectWorks') 
		});
	}
	
	//关闭查看
	function closeWorks() {
		layer.closeAll();
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

		  /*用户-停用*/
	      function member_stop(obj,id,type){
	         var type1=type;
			  layer.confirm('确认要审核吗？',function(index){
	        		if(type==1){
	        			type1=2;
	        		}else{
	        			type1=1;
	        		}
	        		var newWorks = {
	    					"worksId" : id,
	    					"worksStatusId" : type1
	    				};
					$.ajax({
						url:"BusiManage/updateWorksById.action",
						type:"POST",
						data:JSON.stringify(newWorks),
						dataType:"text",
						contentType : "application/json;charset=utf-8",
						async:true,
						success:function(msg){
							
								//发异步把用户状态进行更改
// 								$(obj).attr('title', '停用')
// 								$(obj).find('i').html('&#xe62f;');
// 								$(obj).parents("tr").find(".td-status").find('span')
// 										.addClass('layui-btn-disabled').html('已停用');
								layer.msg('已审核!', {
									icon : 5,
									time : 1000
								})
								window.location.reload();
			}
					});
	          });
	      }
		
		
		 //自定义验证规则
        form.verify({
        	linksname1: function(value){
            if(value.length < 0){
              return '输入不能为空';
            }
          }
          ,linkurl1: [/[^s]+/, '输入地址错误']
//           ,repass: function(value){
//               if($('#L_pass').val()!=$('#L_repass').val()){
//                   return '两次密码不一致';
//               }
//           }
        });
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