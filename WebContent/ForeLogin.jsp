<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="portal/js/jquery-2.2.3.min.js"></script>

<script src="portal/js/jquery-scrolltofixed-min.js"
	type="text/javascript"></script>
<script src="portal/js/login.js" type="text/javascript"></script>
<link rel="stylesheet" href="portal/css/jigsaw.css">
</head>
<style>
.container1 {
	width: 200px;
}

#msg {
	width: 100%;
	line-height: 40px;
	font-size: 14px;
	text-align: center;
}
</style>
<body>
<%@ include file="/head.jsp"%>	
	<!-- login-page -->
	<div class="login-page">
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">登录到您的帐户</h3>
			<div class="login-body">
				<form action="PortalManage/foreIndex.action" method="post" id="Login">
					<input type="text" class="user" name="userAccount"
						placeholder="userAccount" required=""> <span id="span2"></span>
					<input type="password" name="userPwd" class="pwd"
						placeholder="userPwd" required=""> <span id="span2"></span>
					<div class="container1">
						<div id="captcha" style="position: relative"></div>
						<div id="msg"></div>
					</div>
					<!-- 					<input type="submit" value="Login"  disabled="disabled" id="login"> -->
					<div class="col-md-12 column">
						<input type="button" class="btn btn-primary btn-default btn-block"
							disabled="disabled" id="login" value="Login">
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
	<div class="w3agile-ftr-top">
		<div class="container">
			<div class="ftr-toprow">
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>FREE DELIVERY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>CUSTOMER CARE</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>GOOD QUALITY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer-top -->
	<!-- subscribe -->
	<div class="subscribe">
		<div class="container">
			<div class="col-md-6 social-icons w3-agile-icons">
				<h4>Keep in touch</h4>
				<ul>
					<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
					<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
					<li><a href="#" class="fa fa-google-plus icon googleplus">
					</a></li>
					<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
					<li><a href="#" class="fa fa-rss icon rss"> </a></li>
				</ul>
				<ul class="apps">
					<li><h4>Download Our app :</h4></li>
					<li><a href="#" class="fa fa-apple"></a></li>
					<li><a href="#" class="fa fa-windows"></a></li>
					<li><a href="#" class="fa fa-android"></a></li>
				</ul>
			</div>
			<div class="col-md-6 subscribe-right">
				<h4>Sign up for email and get 25%off!</h4>
				<form action="#" method="post">
					<input type="text" name="email" placeholder="Enter your Email..."
						required=""> <input type="submit" value="Subscribe">
				</form>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //subscribe -->
	<!-- footer -->
	<%@include file="end.jsp"%>
	<script src="portal/js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
					items[i].set('shipping', 0);
					items[i].set('shipping2', 0);
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- menu js aim -->
	<script src="portal/js/jquery.menu-aim.js">
		
	</script>
	<script src="portal/js/main.js"></script>
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="portal/js/bootstrap.js"></script>
	<script src="portal/js/jigsaw.js"></script>
	<script>
		jigsaw.init(document.getElementById('captcha'), function() {
			$("#login").attr("disabled", false)
		})
	</script>
	
</body>
</html>