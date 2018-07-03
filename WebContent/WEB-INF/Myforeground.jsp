<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String basepath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src=<%=basepath + "/js/jquery.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/lib/layui/layui.js"%> charset="utf-8"></script>
<script type="text/javascript" src=<%=basepath + "/js/xadmin.js"%>></script>
<script type="text/javascript" src=<%=basepath + "/js/Myforeground.js"%>></script>
<title>我发布的作品</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="col-md-12 column">
		<div class="row clearfix">
			<div class="col-md-3 column">
				<br> <br>
				<div class="col-md-2 column"></div>
				<div class="col-md-8 column"
					style="box-shadow: 10px 10px 5px #888888;">
					<%@ include file="/facilitator-left.jsp"%>
				</div>
				<div class="col-md-2 column"></div>
			</div>
			<div class="col-md-9 column">
				<br> <br> <br>
				<c:forEach var="i" items="${pageInfo.list}">
					<div class="info-item" style="box-shadow: 10px 10px 5px #888888;">
						<h4 style="float: right;">
							<ul class="dropdown head-dpdn">
								<button
									style="border-radius: 0; margin: 3px 30px 0 0; color: white; background-color: #f44336; height: 30px; width: 100px; padding: 0; -moz-transition: 0.5s all;"
									class="dropdown-toggle" data-toggle="dropdown">
									更多操作&nbsp;&nbsp;<span class="caret"></span>
								</button>
								<c:if test="${i.parameterName.parameterName=='出售中'}">
									<ul class="dropdown-menu">
										<li class="Workoffshelf" title="${i.parameterName.parameterName}" name="${i.worksId}"><a>作品下架</a></li>
									</ul>
								</c:if>
								<c:if test="${i.parameterName.parameterName=='已下架'}">
									<ul class="dropdown-menu">
										<li class="Workoffshelf" title="${i.parameterName.parameterName}" name="${i.worksId}"><a>作品出售</a></li>
										<li href="#modal-container-17448" data-toggle="modal"
											class="Workmodification" name="${i.worksId}"><a>作品修改</a></li>
										<li class="myfoerdel" name="${i.worksId}"><a>作品删除</a></li>
									</ul>
								</c:if>

							</ul>
						</h4>
						<img class="info-img"
							style="background:url(<%=basePath%>/portal/images/detail.png)no-repeat 0px 0px; background-size: cover;">
						<div class="content-wrap" style="height: 100%">
							<h5 class="info-title text-overflow">
								<c:out value="${i.worksName}"></c:out>
							</h5>
							<br>
							<h6>
								分类: <label><c:out
										value="${i.classificationName.classificationName}"></c:out></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 价格: <label><c:out
										value="${i.worksPrice}"></c:out></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前状态:<label id="worktypename">
									<c:out value="${i.parameterName.parameterName}"></c:out>
								</label>
							</h6>
							<div class="info-content">${i.workScontext}</div>
						</div>
					</div>
				</c:forEach>
				<br>
				<!-- 分页 -->
				<form id="workslook" action="BusiManage/MyforegroundList.action"
					method="post">
					<!-- 隐藏域 每页条数 -->
					<input type="hidden" id="pageSizeInput" name="pageSize"
						value="${pageInfo.getPageSize()}" />
					<!-- 隐藏域 当前页数 -->
					<input type="hidden" id="currentPageInput" name="pageNum"
						value="${pageInfo.getPageNum()}" />
				</form>
			</div>
			<div class="page">
				<c:choose>
					<c:when test="${pageInfo.getPages() == 0}">
						<blockquote class="layui-elem-quote layui-quote-nm">尊敬的用户，当前列表没有数据~~~</blockquote>
					</c:when>
					<c:otherwise>
						<div>
							共${pageInfo.getPages()}页&nbsp;&nbsp;&nbsp;&nbsp;
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
					</c:otherwise>
				</c:choose>
				<!-- 分页 -->
				<script type="text/javascript">
//更改当前页
function changePage(pageNum) {
	//1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	//2 提交表单
	$("#workslook").submit();
};

// 更改每页条数
function changePageSize(pageSize) {
	//1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	//2 提交表单
	$("#pageForm").submit();
};

</script>
			</div>
			<!-- 修改我的作品modl -->
			<div class="modal fade" id="modal-container-17448" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">作品修改</h4>
						</div>
					 <form id="Modificationofwork" action="BusiManage/Modificationofwork.action">
						<div class="modal-body">
							<div class="form-inline">
								<label for="first_classification3">请选择行业：</label> &nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
									for="second_classification2">请选择服务类型：</label> <br> 
									<select
									name="first_classification3" id="first_classification3"
									class="form-control" style="width: 200px;">
									<option value="">请选择一级分类</option>
								</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select
									name="classificationID" id="second_classification3"
									class="form-control" style="width: 200px;">
									<option value="">请选择二级分类</option>
								</select>
							</div>
							<div class="form-group"
								style="width: 100%; margin-bottom: 1.3em;">
								<label for="worksName">作品标题：</label> <input type="text" id="worksName"
									name="worksName" class="form-control" placeholder="请输入作品标题"
									style="width: 80%;"><input type="hidden" id=worksId name="worksId">
							</div>
							<div class="form-group"
								style="width: 100%; margin-bottom: 1.3em;">
								<label for="worksContext">作品内容：</label>
								<textarea class="form-control" rows="3" style="width: 80%;"
								id="worksContext"  name="worksContext" placeholder="请输入作品内容"></textarea>
							</div>
							<div class="form-group"
								style="width: 100%; margin-bottom: 1.3em;">
								<label for="url">作品封面：</label>
								<div>
									<input type="file" id="url" name="url">
								</div>
							</div>
							<div class="form-group" style="width: 50%; margin-bottom: 1.3em;">
								<label for="worksPrice">作品价格：</label> <input type="text"
									id="worksPrice" name="worksPrice" class="form-control" placeholder="请输入作品价格"
									style="width: 80%;">
							</div>
						</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>

				</div>

			</div>
			<!-- 	行业和服务分类脚本 -->
			<script type="text/javascript">
        $(function(){
            //页面加载完毕后开始执行的事件
            var class_json = '${classJson}';
            var class_obj=eval('('+class_json+')');
            for (var key in class_obj)
            {
                $("#first_classification3").append("<option value="+key+">"+key+"</option>");
            }
            $("#first_classification3").change(function(){
                var now_province=$(this).val();
                $("#second_classification3").html('<option value="">请选择二级分类</option>');
                for(var k in class_obj[now_province])
                {
                    var now_city=class_obj[now_province][k];
                    
                    for (var m in now_city) {
                    	$("#second_classification3").append('<option value='+m+'>'+now_city[m]+'</option>');
                    }
                }
            });
        });
    </script>
			<!-- //行业和服务分类脚本 -->
</body>
</html>