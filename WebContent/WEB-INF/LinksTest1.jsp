<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=<%=path + "/js/jquery.min.js"%>></script>
<script type="text/javascript" src=<%=path + "/js/Links.js"%>></script>
</head>
<body>
	<form action="" id="app1" method="post">
		<table class="table">
			<thead>
				<tr>
					<th>序号</th>
					<th>地址名称</th>
					<th>路径</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${linksList}" begin="0" varStatus="status">
					<tr>
						<td><c:out value="${status.index+1}"></c:out></td>
						<td><c:out value="${i.getLinksname()}"></c:out></td>
						<td><c:out value="${i.getLinksurl()}"></c:out></td>

						<td><a href="<%=path%>/PortalManage/addlinks.action">增加</a> <input
							type="button" value="删除" class="deletebyid"
							title="${i.getLinksid()}">
								<a href="<%=path%>/PortalManage/updateById.action">修改</a>
							 </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</body>
</html>