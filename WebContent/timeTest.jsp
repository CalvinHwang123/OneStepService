<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- startTime是发布时间，days是拍卖持续天数 -->
	剩余时间：
	<span class="timer" asoftTime="2018-06-30 23:29:59" ></span>
	<br> 剩余时间：
	<span class="timer" asoftTime="2018-07-01 10:29:59"></span>



</body>

<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<!-- 倒计时定时器的js，需要在jQuery之后导入 -->
<script type="text/javascript" src="<%=path%>/js/timer.js"></script>
<script type="text/javascript">
	//1  页面刚生成时，获取所有需要设置定时器的timer数组，数组名称必须为timers
	var timers = $(".timer");
	$(function() {
		//2 开启定时器，每个1秒执行
		openTime();
	})
</script>
</html>