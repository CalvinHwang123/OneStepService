<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="footer">
		<div class="container">
			<div class="footer-info w3-agileits-info">
				<div class="col-md-4 address-left agileinfo">
					<div class="footer-logo header-logo">
						<h2>
							<a href="index.html"><span>帝</span>六 <i>人</i></a>
						</h2>
						<h6>帝六人欢迎您.</h6>
					</div>
					<ul>
						<li><i class="fa fa-map-marker"></i> 福建省厦门市软件园二期.</li>
						<li><i class="fa fa-mobile"></i> 13225927015</li>
						<li><i class="fa fa-phone"></i> +222 11 4444</li>
						<li><i class="fa fa-envelope-o"></i> <a
							href="mailto:example@mail.com"> 657789474@qq.com</a></li>
					</ul>
				</div>
				<div class="col-md-8 address-right">
					<h3>友情鏈接</h3>
					<c:forEach var="i" items="${linksList}" varStatus="status">
						<div class="col-md-3 footer-grids">
							<ul>
								<li><a href="https://${i.getLinksurl()}">${i.getLinksname()}</a></li>
							</ul>
						</div>
						<c:if test="status %4 ==0">
							<div class="clearfix"></div>
						</c:if>
					</c:forEach>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<div class="copy-right">
		<div class="container">
			<p>Copyright 2018-2018 dlr.com 版权所有 渝ICP备10202274-4号 渝B2-20080005
				渝公网安备 50019002500154号 厦门帝六人网络有限公司 互联网违法和不良信息举报电话：023-88390110
				邮箱：110@dlr.com 信用厦门 国家企业信用信息公示系统(厦门)</p>
		</div>
	</div>
</body>
</html>