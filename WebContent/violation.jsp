<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
<!-- 引入 ECharts 文件 -->
    <script src="./js/echarts.min.js"></script>
<title>曝光台设置</title>

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
<li><a href="#" title="aaaaaaaaaaaaaaa">aaaaaaaaaaaaaaa</a></li> 
<li><a href="#" title="bbbbbbbbbbbbbbb">bbbbbbbbbbbbbbb</a></li> 
<li><a href="#" title="ccccccccccccccc">ccccccccccccccc</a></li> 
<li><a href="#" title="ddddddddddddddd">ddddddddddddddd</a></li> 
<li><a href="#" title="eeeeeeeeeeeeeee">eeeeeeeeeeeeeee</a></li> 
<li><a href="#" title="fffffffffffffff">fffffffffffffff</a></li> 
<li><a href="#" title="ggggggggggggggg">ggggggggggggggg</a></li> 
</ul> 
</div> 

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>简洁风格的Tab</legend>
</fieldset>
 
<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title">
    <li class="layui-this">网站设置</li>
    <li>用户管理</li>
    <li>权限分配</li>
    <li>商品管理</li>
    <li>订单管理</li>
  </ul>
  <div class="layui-tab-content" style="height: 100px;">
    <div class="layui-tab-item layui-show">内容不一样是要有，因为你可以监听tab事件（阅读下文档就是了）</div>
    <div class="layui-tab-item">内容2</div>
    <div class="layui-tab-item">内容3</div>
    <div class="layui-tab-item">内容4</div>
    <div class="layui-tab-item">内容5</div>
  </div>
</div> 
 
 <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:400px;"></div>
 
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

var data = genData(50);

option = {
    title : {
        text: '同名数量统计',
        subtext: '纯属虚构',
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
            name: '姓名',
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
        '赵', '钱', '孙', '李', '周', '吴', '郑', '王', '冯', '陈', '褚', '卫', '蒋', '沈', '韩', '杨', '朱', '秦', '尤', '许', '何', '吕', '施', '张', '孔', '曹', '严', '华', '金', '魏', '陶', '姜', '戚', '谢', '邹', '喻', '柏', '水', '窦', '章', '云', '苏', '潘', '葛', '奚', '范', '彭', '郎', '鲁', '韦', '昌', '马', '苗', '凤', '花', '方', '俞', '任', '袁', '柳', '酆', '鲍', '史', '唐', '费', '廉', '岑', '薛', '雷', '贺', '倪', '汤', '滕', '殷', '罗', '毕', '郝', '邬', '安', '常', '乐', '于', '时', '傅', '皮', '卞', '齐', '康', '伍', '余', '元', '卜', '顾', '孟', '平', '黄', '和', '穆', '萧', '尹', '姚', '邵', '湛', '汪', '祁', '毛', '禹', '狄', '米', '贝', '明', '臧', '计', '伏', '成', '戴', '谈', '宋', '茅', '庞', '熊', '纪', '舒', '屈', '项', '祝', '董', '梁', '杜', '阮', '蓝', '闵', '席', '季', '麻', '强', '贾', '路', '娄', '危'
    ];
    var legendData = [];
    var seriesData = [];
    var selected = {};
    for (var i = 0; i < 50; i++) {
        name = Math.random() > 0.65
            ? makeWord(4, 1) + '·' + makeWord(3, 0)
            : makeWord(2, 1);
        legendData.push(name);
        seriesData.push({
            name: name,
            value: Math.round(Math.random() * 100000)
        });
        selected[name] = i < 6;
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