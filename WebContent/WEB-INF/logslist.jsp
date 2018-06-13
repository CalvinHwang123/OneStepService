<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="">
	<table border="1px" >
		<tr>
			<th>故事ID</th>
			<th>故事Title</th>
			<th>故事Context</th>
			<th>故事Time</th>
			<th>雇主ID</th>
			<th>操作</th>
		</tr>
	 	<c:forEach items="${pageInfo.list}" var="story">
			<tr>
				<td><c:out value="${story.storyID}"></c:out></td>
				<td><c:out value="${story.storyTitle}"></c:out></td>
				<td><c:out value="${story.storyContext}"></c:out></td>
				<td><c:out value="${story.storyTime}"></c:out></td>
				<td><c:out value="${story.userID}"></c:out>	</td>
				<td>
					<input type="button" value="${story.storyID}" name="storyID"/>
				</td>
			</tr>	 	
 		</c:forEach>
	</table>
	</form>
	==========================================================================================
<!-- 	修改 -->
	<form action="<%=path%>/PortalManage/updateStory.action" method="post">
		故事ID<input type="text" name="storyID"/><br/>
		故事Title<input type="text" name="storyTitle"/><br/>
		故事Context<input type="text" name="storyContext"/><br/>
		故事时间<input type="text" name="storyTime"/><br/>
		雇主ID<input type="text" name="userID"/><br/>
		<input type="submit" value="提交修改"/>
	</form>
	
	
</body>
</html>