<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 分頁頁脚 -->
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="UTF-8">
<title>PageFoot</title>
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
		<div class="page">
			<div>
  				共${pageInfo.getPages()}页，每页 <select  
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
<!-- 							<a class="num" href="javascript:void(0);" -->
  								<a onclick="changePage(${pageInfo.pageNum-1})"><c:out  
  									value="${pageInfo.pageNum-1}"></c:out> </a>  
  						</c:if>  
  						<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>  
  						<c:forEach begin="1" step="1" end="4" var="num">  
  							<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">  
<!-- 								<a class="num" href="javascript:void(0);" -->
  									<a onclick="changePage(${pageInfo.pageNum+num})"><c:out  
  										value="${pageInfo.pageNum+num}"></c:out> </a>  
  							</c:if>  
  						</c:forEach>  
  					</c:when>  
  					<c:otherwise>  
<!-- 						<a class="num" href="javascript:void(0);" -->
  							<a onclick="changePage(${pageInfo.pageNum-1})"><c:out  
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
		
		
</body>
</html>