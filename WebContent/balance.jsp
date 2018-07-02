<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>雇主中心-我的收藏</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@ include file="/WEB-INF/includeLeft.jsp"%>

	<div class='order-wrap'>
		<form id="pageForm" action="BusiManage/userServiceList.action">
			<div class='order-top-banner' id='utopia_widget_7'>
				<div class='top-banner-tips'>1</div>
				<div class='top-banner-cont'>2</div>
			</div>
			<div class='order-bg'>
				<div class='options'>
					<div class="table-responsive">
						<div class="add-products">
							<div class="container" style="width: 100%;">
								<h3 class="w3ls-title"></h3>
								<div class="add-products-row">
										<div class="lbl">
											<label for="name"> 我的余额:</label>${forelogin.userBalance}<a href="BusiManage/tradingList.action">余额详情</a>
										</div>

										<div class="lbl">
											<label for="name"> 我的信用:</label>${forelogin.userCredit}<a href="BusiManage/creditList.action">信用详情</a>
										</div>
									</div>
							</div>
		</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>

	<%@include file="/end.jsp"%>

</body>
</html>