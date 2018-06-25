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
		padding-top: 30px; padding-bottom: 20px;">严惩违规行为，我们在行动</h2>
		<div class="layui-row" style="width: 90%; text-align: center; margin: 0 auto; background-color: #e3e3e3; border-radius: 10px;">
			<h3>
				<span style="width: 49%; text-align: center; display: inline-block;">服务商</span>
				<span  style="width: 50%; text-align: center; display: inline-block;">雇主</span>
			</h3>
			<div class="layui-col-xs6 news" id="news2"
				style="text-align: center; color: #e3e3e3; width: 49%; height: 150px; margin: 0 auto; line-height: 1.5; 
				margin-top: 30px; display: inline-block; float: left;">
				<ul>
					<c:forEach items="${stickList2 }" var="violations">
						<li><a href="#">
								<div class="div-userName-violationsResult">
									<span>${violations.users.userName }</span> <span
										style="color: #56b5c7;">${violations.violationsResult }</span>
								</div>
								<div class="div-violationsWhy">${violations.violationsWhy }
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="layui-col-xs6 news" id="news"
				style="text-align: center; color: #e3e3e3; width: 49%; height: 150px; margin: 0 auto; line-height: 1.5; 
				margin-top: 30px; display: inline-block;">
				<ul>
					<c:forEach items="${stickList }" var="violations">
						<li><a href="#">
								<div class="div-userName-violationsResult">
									<span>${violations.users.userName }</span> <span
										style="color: #56b5c7;">${violations.violationsResult }</span>
								</div>
								<div class="div-violationsWhy">${violations.violationsWhy }
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>

	</div>
	<div style="background-color: #293c55; height: 30px;"></div>
	
	<fieldset class="layui-elem-field layui-field-title">
		<legend>处罚原因</legend>
	</fieldset>
 <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main2" style="width: 600px;height:400px; display: inline-block; padding-top: 30px;"></div>
    <div id="main" style="width: 600px;height:400px; display: inline-block; padding-top: 30px;" ></div>

	<fieldset class="layui-elem-field layui-field-title">
		<legend>所有处罚</legend>
	</fieldset>
	<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
		<ul class="layui-tab-title">
			<li class="layui-this">服务商</li>
			<li>雇主</li>
		</ul>
		<div class="layui-tab-content">
			<div class="layui-tab-item layui-show">
				<table class="layui-table" style="width: 90%; margin: 0 auto;">
					<thead>
						<tr>
							<th>处罚用户</th>
							<th>处罚原因</th>
							<th>处罚结果</th>
							<th>处罚日期</th>
					</thead>
					<tbody id="tbody_2">
						<c:forEach items="${pageInfo2.list}" var="violation" begin="0">
							<tr>
								<td><c:out value="${violation.users.userName}"></c:out></td>
								<td><c:out value="${violation.violationsWhy}"></c:out></td>
								<td><c:out value="${violation.violationsResult}"></c:out></td>
								<td><c:out value="${violation.violationsTime}"></c:out></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="page" style="margin-bottom: 20px;">
					<div id="div_page2" style="display: inline-block;">
						<!-- 上一页 -->
						<c:choose>
							<%-- 上一页 可点击 --%>
							<c:when test="${pageInfo2.getPageNum() > 1 }">
								<a class="prev" href="javaScript:void(0)"
									onclick="changePage('${pageInfo2.getPrePage() }', 2)">上一页</a>
							</c:when>
							<%-- 上一页 不可点击 --%>
							<c:otherwise>
								<a style="opacity: 0.4; cursor: default;"
									href="javascript:return false;" onclick="return false;">上一页</a>
							</c:otherwise>
						</c:choose>
						<!-- 当前页 -->
						<span class="current">${pageInfo2.getPageNum() }</span>
						<!-- 下一页 -->
						<c:choose>
							<%-- 下一页 可点击 --%>
							<c:when test="${pageInfo2.getPageNum() < pageInfo2.getPages() }">
								<a class="prev" href="javaScript:void(0)"
									onclick="changePage('${pageInfo2.getNextPage() }', 2)">下一页</a>
							</c:when>
							<%-- 下一页 可点击 --%>
							<c:otherwise>
								<a style="opacity: 0.4; cursor: default;"
									href="javascript:return false;" onclick="return false;">下一页</a>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- 跳页 -->
					<select style="width: 6%; height: 30px; padding: 0 10px;"
						name="pageSize"
						onchange="changePage($('#pageSizeSelect_2 option:selected').val(), 2)"
						id="pageSizeSelect_2">
						<c:forEach begin="1" end="${pageInfo2.pages }" var="page">
							<option value="${page }">${page }</option>
						</c:forEach>
					</select><span>跳页</span>
				</div>
			</div>
			<div class="layui-tab-item">
				<table class="layui-table" style="width: 90%; margin: 0 auto;">
					<thead>
						<tr>
							<th>处罚用户</th>
							<th>处罚原因</th>
							<th>处罚结果</th>
							<th>处罚日期</th>
					</thead>
					<tbody id="tbody_1">
						<c:forEach items="${pageInfo.list}" var="violation" begin="0">
							<tr>
								<td><c:out value="${violation.users.userName}"></c:out></td>
								<td><c:out value="${violation.violationsWhy}"></c:out></td>
								<td><c:out value="${violation.violationsResult}"></c:out></td>
								<td><c:out value="${violation.violationsTime}"></c:out></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="page" style="margin-bottom: 20px;">
					<div id="div_page1" style="display: inline-block;">
						<!-- 上一页 -->
						<c:choose>
							<%-- 上一页 可点击 --%>
							<c:when test="${pageInfo.getPageNum() > 1 }">
								<a class="prev" href="javaScript:void(0)"
									onclick="changePage('${pageInfo.getPrePage() }', 1)">上一页</a>
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
									onclick="changePage('${pageInfo.getNextPage() }', 1)">下一页</a>
							</c:when>
							<%-- 下一页 可点击 --%>
							<c:otherwise>
								<a style="opacity: 0.4; cursor: default;"
									href="javascript:return false;" onclick="return false;">下一页</a>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- 跳页 -->
					<select style="width: 6%; height: 30px; padding: 0 10px;"
						name="pageSize"
						onchange="changePage($('#pageSizeSelect_1 option:selected').val(), 1)"
						id="pageSizeSelect_1">
						<c:forEach begin="1" end="${pageInfo.pages }" var="page">
							<option value="${page }">${page }</option>
						</c:forEach>
					</select><span>跳页</span>
				</div>			
			</div>
		</div>
	</div>


	<script type="text/javascript">
		//更改当前页
		function changePage(pageNum, userType) {

			$
					.ajax({
						url : $("base").attr("href")
								+ "Portal/foreViolationsPage.action",
						type : "post",
						dataType : "text",
						contentType : "application/json;charset=utf-8", //如果采用requestbody那么一定要加
						data : JSON.stringify({
							"violationsID" : pageNum,
							"users": {"userType": userType}
						}),
						async : true,
						success : function(msg) {
							// 清空table的tbody
							$("table tbody[id='tbody_" + userType + "']").text("");
							// string 2 json
							var jsonObj = JSON.parse(msg);
							var vioListObj = jsonObj["list"];
							for (var i = 0; i < vioListObj.length; ++i) {
								// 动态生成tbody
								$("table tbody[id='tbody_" + userType + "']")
										.append(
												"<tr>"
														+ "<td>"
														+ vioListObj[i]["users"]["userName"]
														+ "</td>"
														+ "<td>"
														+ vioListObj[i]["violationsWhy"]
														+ "</td>"
														+ "<td>"
														+ vioListObj[i]["violationsResult"]
														+ "</td>"
														+ "<td>"
														+ vioListObj[i]["violationsTime"]
														+ "</td>" + "</tr>");
							}
							// 动态生成分页区域
							$("#div_page" + userType).text("");
							// 上一页
							if (jsonObj["pageNum"] > 1) {
								$("#div_page" + userType).append(
										"<a class=\"prev\" href=\"javaScript:void(0)\""
												+ "onclick=\"changePage("
												+ jsonObj["prePage"]
												+ ","
												+ userType
												+ ")\">上一页</a>");
							} else {
								$("#div_page" + userType)
										.append(
												"<a style=\"opacity: 0.4; cursor: default;\"" + 
					"href=\"javascript:return false;\" onclick=\"return false;\">上一页</a>");
							}
							// 当前页
							$("#div_page" + userType).append(
									"<span class=\"current\">"
											+ jsonObj["pageNum"] + "</span>");
							// 下一页
							if (jsonObj["pageNum"] < jsonObj["pages"]) {
								$("#div_page" + userType).append(
										"<a class=\"next\" href=\"javaScript:void(0)\""
												+ "onclick=\"changePage("
												+ jsonObj["nextPage"]
												+ ","
												+ userType
												+ ")\">下一页</a>");
							} else {
								$("#div_page" + userType)
										.append(
												"<a style=\"opacity: 0.4; cursor: default;\"" + 
					"href=\"javascript:return false;\" onclick=\"return false;\">下一页</a>");
							}
							// 跳页
							$("select[id='pageSizeSelect_" + userType + "'] option").remove("");
							for (var i = 1; i <= jsonObj["pages"]; ++i) {
								if (jsonObj["pageNum"] == i) {
									$("select[id='pageSizeSelect_" + userType + "']").append(
											"<option value='" + i + "'" + " selected >"
													+ i + "</option>");
								} else {
									$("select[id='pageSizeSelect_" + userType + "']").append(
											"<option value='" + i + "'" + ">"
													+ i + "</option>");
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
	}, 1500); 
	}).trigger("mouseleave");
	
	function scrollNews(obj) { 
	var $self = obj.find("ul"); 
	var lineHeight = $self.find("li:first").height(); 
	$self.animate({ 
	"marginTop": -lineHeight + "px" 
	}, 1000, function() { 
	$self.css({ 
	marginTop: 0 
	}).find("li:first").appendTo($self); 
	}) 
	} 
	}) 
	
$(function() { 
	var $this = $("#news2"); 
	var scrollTimer; 
	$this.hover(function() { 
	clearInterval(scrollTimer); 
	}, function() { 
	scrollTimer = setInterval(function() { 
	scrollNews($this); 
	}, 1500); 
	}).trigger("mouseleave");
	
	function scrollNews(obj) { 
	var $self = obj.find("ul"); 
	var lineHeight = $self.find("li:first").height(); 
	$self.animate({ 
	"marginTop": -lineHeight + "px" 
	}, 1000, function() { 
	$self.css({ 
	marginTop: 0 
	}).find("li:first").appendTo($self); 
	}) 
	} 
	}) 
</script>

<script type="text/javascript">
// 基于准备好的dom，初始化echarts实例
var myChart2 = echarts.init(document.getElementById('main2'));
var myChart = echarts.init(document.getElementById('main'));
var data2 = genData('${vioWhyList2}');
var data = genData('${vioWhyList}');

option2 = {
    title : {
        text: '服务商',
        /* subtext: '服务商', */
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
        data: data2.legendData,
        selected: data2.selected
    },
    series : [
        {
            name: '处罚原因',
            type: 'pie',
            radius : '55%',
            center: ['40%', '50%'],
            data: data2.seriesData,
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

option = {
	    title : {
	        text: '雇主',
	        /* subtext: '雇主', */
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
myChart2.setOption(option2);
myChart.setOption(option);

function genData(vioWhyList) {

	var legendData = [];
    var seriesData = [];
    var selected = {};
    
	var vioListObj = JSON.parse(vioWhyList);
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