<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
	<%@ include file="/head.jsp"%>	
	<!-- login-page -->
	<div class="login-page">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">注册您的帐户</h3>
			<div class="login-body">
				<form action="ForeLogin.jsp" method="post" id="ForeSign">
					<input type="text" class="user" name="userAccount"
						placeholder="userAccount" required=""> <span id="span1"></span>
					<input type="password" name="userPwd" class="pwd"
						placeholder="userPwd" required="">  <span id="span2"></span>
					<!-- 						 <input type="submit" value="Sign" id="sign"> -->
					<label class="radio-inline"> 
						<input type="radio" class="optionsRadios" value="1" name="userType" checked="checked"> 雇主
						</label> 
						<label class="radio-inline"> 
						<input type="radio" class="optionsRadios" value="2" name="userType">服务商
						</label>
					<div class="col-md-12 column">
						<button type="button"
							class="btn btn-primary btn-default btn-block" id="sign">Sign</button>
					</div>
					<div class="forgot-grid">
						<label class="checkbox"><input type="checkbox"
							name="checkbox"><i></i>记住密码</label>
						<div class="forgot">
							<a href="#">忘记密码</a>
						</div>
						<div class="clearfix"></div>
					</div>
				</form>
			</div>
			<h6>
				没有账号? <a href="ForeSign.jsp">立即注册 »</a>
			</h6>
			<div class="login-page-bottom social-icons">
				<h5>其他账号登录</h5>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus">
					</a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //login-page -->
	<!-- footer-top -->
	<%@include file="end.jsp"%>
</body>
</html>