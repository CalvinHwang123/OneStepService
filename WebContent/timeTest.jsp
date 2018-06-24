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
	剩余时间：
	<span class="timer" title="2018-06-26 23:29:59"></span>
	<br> 剩余时间：
	<span class="timer" title="2018-06-28 10:29:59"></span>
</body>

<script type="text/javascript" src="<%=path%>/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	//1  页面刚生成时，获取所有需要设置定时器的timer数组，数组名称必须为timers
	var timers = $(".timer");
	
	
	$(function(){
	//2 开启定时器，每个1秒执行
		openTime();
	})
	
	function openTime(){
		setInterval("timer()",1000);
	}
	
	function timer(){
		for (var i = 0; i < timers.length; i++) {
			var timer = timers.eq(i);
		var startDate=timer.attr("title");
		startDate=startDate.replace(new RegExp("-","gm"),"/");
		var startTime=(new Date(startDate)).getTime()/1000;
		var overTime = (new Date()).getTime()/1000;
		//剩余毫秒数
		var ts=startTime-overTime;
		var dd = parseInt(ts/60/60/24,10);//计算剩余的天数
		var hh = parseInt(ts/60/60%24,10);//计算剩余的小时数
		var mm = parseInt(ts/60%60,10);//计算剩余的分钟数
		var ss = parseInt(ts%60,10);//计算剩余的秒数
		//最後剩余时间
		var remainingTime= dd + "天"+hh + "时" +mm + "分"+ss + "秒";
		timer.text(remainingTime);
		}
	}

</script>
</html>