<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<!-- header -->
		<%@ include file="/head.jsp"%>	
	<!-- //header --> 	
	<!--  about-page -->
	<div class="about">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1" style="margin-bottom:0.5em"><c:out value="${singleCase.successCaseTitle}"></c:out> </h3>
			<h4 class="about-text-grids h4" align="center"><c:out value="${singleCase.successCaseTime}"></c:out> </h4>
			<div class="about-text">	
				<c:out value="${singleCase.successCaseContext}" escapeXml="false" ></c:out>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
 	<%@include file="/end.jsp"%>
</body>
</html>