<!-- jhx 2018-6-14 晚  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>帝六人后台登录</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./css/font.css">
	<link rel="stylesheet" href="./css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script type="text/javascript" src="./portal/js/md5.js"></script>
</head>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form action="SystemManage/login.action" method="post" class="layui-form" id="login_form">
            <input id="empname" name="empname" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <br><span id="span1"></span>
            <hr class="hr15">
            <input id="pwd" name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <br><span id="span2"></span>
            <hr class="hr15">
            <input id="login" value="登录" lay-submit lay-filter="login" style="width:100%;" type="button">
            <hr class="hr20" >
        </form>
    </div>
</body>

<script>
$("#login").on("click", function() {
	var empname = $("#empname").val();
	var pwd = $("#pwd").val();
	var pwd1 = $.md5(pwd);
	var newEmp = {
		"empAccount" : empname,
		"empPwd" : pwd1
	};
	
		$.ajax({
			url : "SystemManage/checkLogin.action",
			// 数据发送方式
			type : "post",
			// 接受数据格式
			dataType : "text",
			contentType : "application/json;charset=utf-8",
			// 要传递的数据
			data : JSON.stringify(newEmp),
			async : true,
			// 回调函数，接受服务器端返回给客户端的值，即result值
			success : 
				login
		});
	
});

function login(result) {
	if (result == "success") {
		$("#login_form").submit();
	} else if (result == "fail") {
		layer.msg('账号失效！',{icon:2,time:1000});
	} else if (result == "pwdFail"){
		layer.msg('密码错误！',{icon:2,time:1000});
	}else{
		layer.msg('此账号不存在！',{icon:2,time:1000});
	}
}
</script>



</html>