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
<script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
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
<form action="PortalManage/violationssList.action">
	<button type="submit">查询曝光台列表</button>
</form>

<div id="news"> 
<ul>
<c:forEach items="${stickList }" var="violations">
	<li>
		<a href="#">
			<div class="div-userName-violationsResult">
				${violations.userID },${violations.violationsResult }
			</div>
			<div class="div-violationsWhy">
				${violations.violationsWhy }
			</div>
		</a>
	</li>	
</c:forEach>
</ul> 
</div> 

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
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
 
 <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;"></div>
 
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
			<div>
				<!-- 上一页 -->
				<c:choose>
					<%-- 上一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() > 1 }">
						<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPrePage() }')">上一页</a>		
					</c:when>
					<%-- 上一页 不可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4;cursor: default;"  href ="javascript:return false;" onclick="return false;">上一页</a>
					</c:otherwise>
				</c:choose>
				<!-- foreach不支持递减，所以分开写 -->
				<c:if test="${pageInfo.getPageNum() - 2 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 2}')">${pageInfo.getPageNum() - 2}</a>	
				</c:if>
				<c:if test="${pageInfo.getPageNum() - 1 ge 1 }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() - 1}')">${pageInfo.getPageNum() - 1}</a>	
				</c:if>
				<!-- 当前页 -->
				<span class="current">${pageInfo.getPageNum() }</span>
				<!-- foreach支持递增 -->
				<c:forEach begin="1" end="2" var="next" step="1">
					<c:if test="${pageInfo.getPageNum() + next le pageInfo.getPages() }">
					<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getPageNum() + next}')">${pageInfo.getPageNum() + next}</a>	
					</c:if>
				</c:forEach>
				<!-- 下一页 -->
				<c:choose>
					<%-- 下一页 可点击 --%>
					<c:when test="${pageInfo.getPageNum() < pageInfo.getPages() }">
						<a class="prev" href="javaScript:void(0)"
						onclick="changePage('${pageInfo.getNextPage() }')">下一页</a>		
					</c:when>
					<%-- 下一页 可点击 --%>
					<c:otherwise>
						<a style="opacity: 0.4;cursor: default;"  href ="javascript:return false;" onclick="return false;">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
 
 
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
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
var count = 16;
var data = genData(count);

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


function genData(count) {
    var nameList = [
        '赵', '钱', '孙', '李', '周', '吴', '郑', '王', '冯', '陈', '褚', '卫', '蒋', '沈', '韩', '杨'
    ];
    var legendData = [];
    var seriesData = [];
    var selected = {};
    for (var i = 0; i < count; i++) {
        name = Math.random() > 0.65
            ? makeWord(4, 1) + '·' + makeWord(3, 0)
            : makeWord(2, 1);
        legendData.push(name);
        seriesData.push({
            name: name,
            value: Math.round(Math.random() * 100000)
        });
        selected[name] = i < count;
    }

    return {
        legendData: legendData,
        seriesData: seriesData,
        selected: selected
    };

    function makeWord(max, min) {
        var nameLen = Math.ceil(Math.random() * max + min);
        var name = [];
        for (var i = 0; i < nameLen; i++) {
            name.push(nameList[Math.round(Math.random() * nameList.length - 1)]);
        }
        return name.join('');
    }
}

    </script>

</body>
</html>