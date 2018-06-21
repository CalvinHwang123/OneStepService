<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); 
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
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" src="./js/violationsList.js"></script>
    <style>
		.layui-input-block {
			margin-top: 10px;
			margin-right: 10px;
		}
	</style>
<title>Insert title here</title>
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb"> <a><cite>门户管理员</cite></a> <a><cite>曝光台配置</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<div class="layui-row">
			<form id="pageForm" class="layui-form layui-col-md12 x-so"
				action="PortalManage/violationsList.action">
				<!-- 隐藏域 每页条数 -->
				<input type="hidden" id="pageSizeInput" name="pageSize"
					value="${pageInfo.getPageSize() }">
				<!-- 隐藏域 当前页数 -->
				<input type="hidden" id="currentPageInput" name="pageNum"
					value="${pageInfo.getPageNum() }"> <input
					class="layui-input" placeholder="开始日" name="startDate" id="start"
					value="${condition.startDate }"> <input class="layui-input"
					placeholder="截止日" name="endDate" id="end"
					value="${condition.endDate }"> <input type="text"
					name="title" value="${condition.title }" placeholder="请输入用户名"
					autocomplete="off" class="layui-input">
				<button class="layui-btn" lay-submit="" lay-filter="sreach">
					<i class="layui-icon">&#xe615;</i>
				</button>
			</form>
		</div>
		<xblock>
		<button class="layui-btn layui-btn-danger" onclick="delAll()">
			<i class="layui-icon"></i>批量删除
		</button>
		<button class="layui-btn" onclick="openAddViolations()">
			<i class="layui-icon"></i>新发布
		</button>
		<span class="x-right" style="line-height: 40px">共有数据：${pageInfo.getTotal() }
			条</span> </xblock>
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
					<th>违规时间</th>
					<th>违规原因</th>
					<th>违规结果</th>
					<th>用户ID</th>
					<th>操作</th>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="violation" begin="0"
					varStatus="s">
					<c:choose>
						<c:when test="${violation.stickTime eq '1970-01-01 00:00:00'  }">
					<tr>
						</c:when>
						<c:otherwise>
							<tr style="background-color: #f2f2f2;">	
						</c:otherwise>
					</c:choose>
						<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${violation.violationsID}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
						<td><c:out value="${s.index+1}"></c:out></td>
						<td><c:out value="${violation.violationsTime}"></c:out></td>
						<td><c:out value="${violation.violationsWhy}"></c:out></td>
						<td><c:out value="${violation.violationsResult}"></c:out></td>
						<td><c:out value="${violation.userID}"></c:out></td>
						<td class="td-manage">
							<!-- 置顶与取消置顶 --> <c:choose>
								<c:when test="${violation.stickTime eq '1970-01-01 00:00:00' }">
									<a onclick="s78tickViolations(this,${violation.violationsID})"
										href="javascript:;" title="置顶"> <i class="layui-icon">&#xe62f;</i>
									</a>
								</c:when>
								<c:otherwise>
									<a onclick="stickViolations(this,${violation.violationsID})"
										href="javascript:;" title="取消置顶"> <i class="layui-icon">&#xe601;</i>
									</a>
								</c:otherwise>
							</c:choose> <a title="修改"
							onclick="openUpdateViolations('${violation.violationsID}','${violation.violationsTime}','${violation.violationsWhy}',
               			 '${violation.violationsResult}','${violation.userID}')"
							href="javascript:;"> <i class="layui-icon">&#xe642;</i>
						</a> <a title="删除"
							onclick="violationDelete(this,${violation.violationsID})"
							href="javascript:;"> <i class="layui-icon">&#xe640;</i>
						</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page">
			<div>
				共${pageInfo.getPages() }页，每页 <select
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

	<!-- 新发布曝光 -->
	<div style="display: none;" id="violationsLayer">
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">用户ID</label>
				<div class="layui-input-block">
					<input type="text" name="userID" required lay-verify="required"
						placeholder="请输入用户ID" autocomplete="off" class="layui-input"
						id="newUserID">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">违规原因</label>
				<div class="layui-input-block">
					<textarea name="violationsWhy" placeholder="请输入违规原因"
						class="layui-textarea" id="newViolationsWhy"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">违规结果</label>
				<div class="layui-input-block">
					<input type="text" name="violationsResult" required
						lay-verify="required" placeholder="请输入违规结果" autocomplete="off"
						class="layui-input" id="newViolationsResult">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn" onclick="addViolations()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>

	<!-- 修改曝光 -->
	<div style="display: none;" id="violationsUpdateLayer">
		<form class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label">用户ID</label>
				<div class="layui-input-block">
					<input type="text" name="userID" lay-verify="required"
						autocomplete="off" class="layui-input" disabled="disabled"
						id="updateUserID">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">违规时间</label>
				<div class="layui-input-block">
					<input type="text" name="violationsTime" lay-verify="required"
						autocomplete="off" class="layui-input" disabled="disabled"
						id="updateViolationsTime">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">违规原因</label>
				<div class="layui-input-block">
					<textarea name="violationsWhy" class="layui-textarea" required
						id="updateViolationsWhy"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">违规结果</label>
				<div class="layui-input-block">
					<input type="text" name="violationsResult" lay-verify="required"
						required autocomplete="off" class="layui-input"
						id="updateViolationsResult">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button type="button" class="layui-btn"
						onclick="updateViolations()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>

	<script>
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

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }
              
          });
      }
     </script>
</body>
</html>