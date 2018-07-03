<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html lang="UTF-8">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<span title='${firstClassMap}' id="classifactionSpan"></span>
    <div>
        <table>
            <tr>
                <td>所属分类</td>
                <td>
                    <select name="first_classification" id="first_classification">
                        <option value="">请选择一级分类</option>
                    </select>
                    <select name="second_classification" id="second_classification">
                        <option value="">请选择二级分类</option>
                    </select>
                    <button onclick="clickMe()">点我</button>
                </td>
            </tr>
        </table>
    </div>
    <script type="text/javascript">
        $(function(){
            //页面加载完毕后开始执行的事件
            var class_json = '${classJson}';
            var class_obj=eval('('+class_json+')');
            for (var key in class_obj)
            {
                $("#first_classification").append("<option value='"+key+"'>"+key+"</option>");
            }
            $("#first_classification").change(function(){
                var now_province=$(this).val();
                $("#second_classification").html('<option value="">请选择二级分类</option>');
                for(var k in class_obj[now_province])
                {
                    var now_city=class_obj[now_province][k];
                    
                    for (var m in now_city) {
                    	$("#second_classification").append('<option value="'+now_city[m]+'">'+now_city[m]+'</option>');
                    }
                    
                }
            });
        });
        
    </script>
</body>
</html>