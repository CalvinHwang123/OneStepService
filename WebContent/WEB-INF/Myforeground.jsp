<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>作品首页</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="col-md-12 column">
		<div class="row clearfix">
			<div class="col-md-3 column">
				<br> <br>
				<div class="col-md-2 column"></div>
				<div class="col-md-8 column"
					style="box-shadow: 10px 10px 5px #888888;">
					<%@ include file="/facilitator-left.jsp"%>
				</div>
				<div class="col-md-2 column"></div>
			</div>
			<div class="col-md-9 column">
				<div class="container">
					<div class="col-md-9 product-w3ls-right">
						<div class="clearfix"></div>
						<!-- 所有作品div -->
						<div class="products-row"
							style="box-shadow: 10px 10px 5px #888888;">
							<c:forEach var="i" items="${pageInfo.list}">
								<div class="col-md-3 product-grids">
									<div class="agile-products">
										<a
											href=<%=path + "/Portal/worksIntroduction.action?worksId="%>
											+${i.worksId}><img src=<%=path%> +${i.url}
											class="img-responsive" alt="img"></a>
										<div class="agile-product-text">
											<h5>
												<a href="single.html">作品:<c:out value="${i.worksName}"></c:out></a>
											</h5>
											<h6>
												作者:
												<c:out value="${i.userName.userName}"></c:out>
											</h6>
											<h6>
												分类:
												<c:out value="${i.classificationName.classificationName}"></c:out>
											</h6>
											<h6>
												价格:
												<c:out value="${i.worksPrice}"></c:out>
											</h6>
											<form action="#" method="post">
												<input name="cmd" value="_cart" type="hidden"> <input
													name="add" value="1" type="hidden"> <input
													name="w3ls_item" value="Snacks" type="hidden"> <input
													name="amount" value="40.00" type="hidden">
												<button type="submit" class="w3ls-cart pw3ls-cart">
													<i class="fa fa-cart-plus" aria-hidden="true"></i> 添加到购物车
												</button>
											</form>
										</div>
									</div>
								</div>
							</c:forEach>

							<div class="clearfix"></div>
						</div>
						<!-- 所有作品div -->
					</div>
					<!-- 右部div -->
				</div>
			</div>
</body>
</html>