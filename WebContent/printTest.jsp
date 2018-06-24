<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=basePath%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript" src="print/LodopFuncs.js"></script>
<object id="LODOP_OB"
	classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA" width=0 height=0>
	<embed id="LODOP_EM" type="application/x-print-lodop" width=0 height=0></embed>
</object>
</head>
<body>
<div id="myDiv">
<table border="1" width="360" height="220" id="printTable"

			style="border-collapse: collapse; border: solid 1px"
			bordercolor="#000000">
  <tr>
    <td width="100%" height="240">
      <p align="center"> 
      <font face="隶书" size="5" style="letter-spacing: 10px">郭德强</font>
      
					
					
					<p align="center">
						<font face="宋体" size="3">科学家</font>
					</p>
      <p align="left">
						<font face="宋体" size="3">　地址：中国北京社会科学院附近东大街西胡同</font>
					</p>
      <p align="left">
						<font face="宋体" size="3">　电话：010-88811888</font>
					</p>
      <p>
						<br>      　
      </p>
    </td>
  </tr>
</table>
</div>
	<button id="printBtn">打印预览2</button>

</body>

<script type="text/javascript" src="<%=path%>/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#printBtn").click(printerInit);
	})

	function printerInit() {
// 		$("#textarea01").append($("#printTable").clone(true));
		
		var LODOP = getLodop();
		LODOP.PRINT_INIT("test套打");
		LODOP.ADD_PRINT_HTM(10, 55, "100%", "100%", document
				.getElementById("myDiv").innerHTML);
		LODOP.PREVIEW();
	};
</script>
</html>