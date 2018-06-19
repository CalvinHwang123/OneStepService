<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- by hlq 2018-06-14 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./lib/layui/css/layui.css" rel="stylesheet">
<link rel="stylesheet" href="./css/xadmin.css">
<script type="text/javascript" src="./js/json2.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/xadmin.js"></script>
<!-- 引入 ECharts 文件 -->
    <script src="./js/echarts.min.js"></script>
<title>曝光台</title>

<style type="text/css">
ui, li {
	list-style: none;
}

#news {
	height: 75px;
	overflow: hidden;
}

/* .layui-tab {
background-color: #293c55;
color: #e3e3e3;
} */

/* .layui-tab-title .layui-this {
color: #e3e3e3;
} */
</style>

</head>
<body>
	
	<!-- 置顶处罚列表 -->
	<div style="background-color: #293c55;">
		<h2 style="font-size: 24px; font-weight: 400; color: #e3e3e3; padding-left: 50px;
		padding-top: 30px;">严惩违规行为，我们在行动</h2>
		<div id="news"
			style="text-align: center; background-color: #e3e3e3; color: #e3e3e3; width: 80%; height: 150px; border-radius: 10px; margin: 0 auto; 
			line-height: 1.5; margin-top: 30px;">
			<ul>
				<c:forEach items="${stickList }" var="violations">
					<li><a href="#">
							<div class="div-userName-violationsResult">
								<span>${violations.userID }</span>
								<span style="color: #56b5c7;">${violations.violationsResult }</span>
							</div>
							<div class="div-violationsWhy">${violations.violationsWhy }
							</div>
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<div style="background-color: #293c55; height: 30px;"></div>

<%-- 	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>简洁风格的Tab</legend>
</fieldset>
 
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title">
    <li class="layui-this">所有</li>
    <li>近1月</li>
    <li>近2月</li>
    <li>近3月</li>
  </ul>
  <div class="layui-tab-content" style="height: 100px;">
    <div class="layui-tab-item layui-show">${pageInfo.list }</div>
    <div class="layui-tab-item">内容2</div>
    <div class="layui-tab-item">内容3</div>
    <div class="layui-tab-item">内容4</div>
  </div>
</div> 
  --%>
  
 <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px; margin: 20px auto;"></div>
	
	<h2 style="background-color: #e3e3e3; font-size: 24px; font-weight: 400; color: #000; padding-left: 50px;
		padding-top: 30px;">所有处罚</h2>
	<!-- 所有处罚列表 -->
	<div style="background-color: #e3e3e3; padding-top: 10px; padding-bottom: 10px;">
		<table class="layui-table" style="width: 90%; margin: 0 auto;">
			<thead>
				<tr>
					<th>处罚用户</th>
					<th>处罚原因</th>
					<th>处罚结果</th>
					<th>处罚日期</th>
			</thead>
			<tbody>
				<c:forEach items="${pageInfo.list}" var="violation" begin="0">
					<tr>
						<td><c:out value="${violation.userID}"></c:out></td>
						<td><c:out value="${violation.violationsWhy}"></c:out></td>
						<td><c:out value="${violation.violationsResult}"></c:out></td>
						<td><c:out value="${violation.violationsTime}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="page">
			<div id="div_page" style="display: inline-block;">
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getPrePage() }')">上一页</a>
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- 当前页 -->
				<span class="current">${pageInfo.getPageNum() }</span>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() < pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
							onclick="changePage('${pageInfo.getNextPage() }')">下一页</a>
					</c:when>
					<%-- 下一页 可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4; cursor: default;"
							href="javascript:return false;" onclick="return false;">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
			<!-- 跳页 -->
			<select style="width: 6%; height: 30px; padding: 0 10px;" name="pageSize"
					onchange="changePage($('#pageSizeSelect option:selected').val())"
					id="pageSizeSelect">
					<c:forEach begin="1" end="${pageInfo.pages }" var="page">
						<option value="${page }">${page }</option>
					</c:forEach>
			</select><span>跳页</span>
		</div>
	</div>
	
<script type="text/javascript">
//更改当前页
function changePage(pageNum) {
	
	$.ajax({
			url : $("base").attr("href")
					+ "PortalManage/foreViolationsPage.action",
			type : "post",
			dataType : "text",
			contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
			data : JSON.stringify({
				"violationsID" : pageNum
			}),
			async : true,
			success : function(msg) {
				// 清空table的tbody
				$("table tbody").text("");
				// string 2 json
				var jsonObj = JSON.parse(msg);
				var vioListObj = jsonObj["list"];
				for (var i = 0; i < vioListObj.length; ++i) {
					// 动态生成tbody
					$("table tbody").append(
							"<tr>" + "<td>" + vioListObj[i]["userID"] + "</td>"
									+ "<td>" + vioListObj[i]["violationsWhy"]
									+ "</td>" + "<td>"
									+ vioListObj[i]["violationsResult"]
									+ "</td>" + "<td>"
									+ vioListObj[i]["violationsTime"] + "</td>"
									+ "</tr>");
				}
				// 动态生成分页区域
				$("#div_page").text("");
				// 上一页
				if (jsonObj["pageNum"] > 1) {
					$("#div_page").append("<a class=\"prev\" href=\"javaScript:void(0)\"" + 
							"onclick=\"changePage(" + jsonObj["prePage"] +  ")\">上一页</a>");
				} else {
					$("#div_page").append("<a style=\"opacity: 0.4; cursor: default;\"" + 
					"href=\"javascript:return false;\" onclick=\"return false;\">上一页</a>");
				}
				// 当前页
				$("#div_page").append("<span class=\"current\">" +  jsonObj["pageNum"] + 
						"</span>");
				// 下一页
				if (jsonObj["pageNum"] < jsonObj["pages"]) {
					$("#div_page").append("<a class=\"next\" href=\"javaScript:void(0)\"" + 
							"onclick=\"changePage(" + jsonObj["nextPage"] + ")\">下一页</a>");
				} else {
					$("#div_page").append("<a style=\"opacity: 0.4; cursor: default;\"" + 
					"href=\"javascript:return false;\" onclick=\"return false;\">下一页</a>");
				}
				// 跳页
				$("select option").remove("");
				for (var i = 1; i <= jsonObj["pages"]; ++i) {
					if (jsonObj["pageNum"] == i) {
						$("select").append("<option value='" + i + "'" + " selected >" + i + "</option>");
					} else {
						$("select").append("<option value='" + i + "'" + ">" + i + "</option>");
					}
				}
			}
		});
	};
</script>
<script type="text/javascript">

//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function(){
  var element = layui.element;
  
  //…
});

$(function() { 
	var $this = $("#news"); 
	var scrollTimer; 
	$this.hover(function() { 
	clearInterval(scrollTimer); 
	}, function() { 
	scrollTimer = setInterval(function() { 
	scrollNews($this); 
	}, 1000); 
	}).trigger("mouseleave"); 

	function scrollNews(obj) { 
	var $self = obj.find("ul"); 
	var lineHeight = $self.find("li:first").height(); 
	$self.animate({ 
	"marginTop": -lineHeight + "px" 
	}, 600, function() { 
	$self.css({ 
	marginTop: 0 
	}).find("li:first").appendTo($self); 
	}) 
	} 
	}) 
</script>

<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
var data = genData();

option = {
    title : {
        text: '处罚原因',
        subtext: '用户',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        type: 'scroll',
        orient: 'vertical',
        right: 10,
        top: 20,
        bottom: 20,
        data: data.legendData,
        selected: data.selected
    },
    series : [
        {
            name: '处罚原因',
            type: 'pie',
            radius : '55%',
            center: ['40%', '50%'],
            data: data.seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};

// 使用刚指定的配置项和数据显示图表。
myChart.setOption(option);


function genData() {

	var legendData = [];
    var seriesData = [];
    var selected = {};
    
	var vioListObj = JSON.parse('${vioWhyList}');
	for (var i = 0; i < vioListObj.length; ++i) {
		name = vioListObj[i]["violationsWhy"];
		legendData.push(name);
        seriesData.push({
            name: name,
            value: vioListObj[i]["whyCount"]
        });
	}
	
    return {
        legendData: legendData,
        seriesData: seriesData,
        selected: selected
    };
}
</script>

</body>
</html>