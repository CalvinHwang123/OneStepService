<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />
<meta name="google-site-verification"
	content="EGpeU8lMdt7x_LsqOd7MAXeYZW9ZKf1MML-n6C4emtA" />
<meta http-equiv="Cache-Control" content="no-transform " />
<title>所有需求列表 -帝六人网</title>
<meta name="keywords" content="" />
<meta name="description" content="" />







<link
	onerror="window.gMonitor && window.gMonitor.resourceError(this.href, 'css')"
	type="text/css" rel="stylesheet"
	href="https://t5.zbjimg.com/t5s/common/css/global-58a4b6e577d7925b.css" />

<link
	onerror="window.gMonitor && window.gMonitor.resourceError(this.href, 'css')"
	type="text/css" rel="stylesheet"
	href="https://t6.zbjimg.com/output/global/basestyle-2ab46855cde4dacb.css" />




<link
	onerror="window.gMonitor && window.gMonitor.resourceError(this.href, 'css')"
	type="text/css" rel="stylesheet"
	href="https://t5.zbjimg.com/t5s/task/css/tasklist-19a6852bdf58a698.css" />




<script
	onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
	id="seajsnode" type="text/javascript"
	src="https://t5.zbjimg.com/seajs/seajs/2.1.1/sea.js"></script>
<script
	onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
	type="text/javascript"
	src="https://t5.zbjimg.com/seajs/seajs-style/1.0.0/seajs-style.js"></script>
<script
	onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
	type="text/javascript"
	src="https://t6.zbjimg.com/output/seajs-config-17cf81e4d6dc66fc.js"></script>
<script
	onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
	type="text/javascript"
	src="//as.zbjimg.com/static/as-common/seajs-config_7bda427.js"></script>
<script>seajs.on("resolve", function (emitData) {var tempId = emitData.id;if (tempId.indexOf("common:") === 0) {emitData.uri = seajs.resolve("as-" + tempId);}})</script>
<script
	onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
	type="text/javascript"
	src="https://t5.zbjimg.com/t5s/output/common/js/jquery-ef9950ad8dd9725c.js"></script>
<script>console.log('layout-02');seajs.on("resolve", function (emitData) {var tempId = emitData.id;if (tempId.indexOf("common:") === 0 || tempId.indexOf("task-detail:") === 0) {emitData.uri = seajs.resolve("as-" + tempId);}})</script>

<meta name="referrer" content="always" />
<script type="text/javascript">
    window.__bees__rates__ = {
    "default": 0.3,
        "path": {
          "/index": 0.2
        },
        "regexp": [{
          pattern: "\\/tingfu$",
          value: 0.5
        }]
    }
</script>
<script type="text/javascript"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-bees-core/0.0.8/index.js"></script>


<script>
        MonitorHD.sh = +new Date;
    </script>
</head>
<body>
	<%@include file="/head.jsp"%>


	<div class="grid list-category-nav"></div>



	<div class="main-wrap">
		<div class="main mainContent">


			<div class="list-container">

				<a href="" target="_blank" class="bid-desc-link"> 投标说明 <span></span>
				</a>
				<div class="list-container-hd clearfix hide">
					<h2 class="fl yahei">
						所有需求<span class="list-number">(7991)</span>
					</h2>

				</div>





				<div class="list-filter filter-along">

					<form id="pageForm" class="layui-form layui-col-md12 x-so"
						action="Portal/beforeDemandsList.action">

						<dl>
							<dt>
								金<span style="visibility: hidden;">占位</span>额:
							</dt>
							<dd>
								<a data-linkid="10002782" href="" class='selected'
									rel="nofollow">全部</a> <input type="text" class="layui-input"
									placeholder="起始金额：最小为1" name="beWorksPrice" id="beWorks"
									value="${condition.beWorksPrice }" autocomplete="off">
								<input type="text" class="layui-input" placeholder="最大金额"
									name="endWorksPrice" id="endWorks "
									value="${condition.endWorksPrice }" autocomplete="off">
								<button type="submit" class="ui-btn ui-btn-link"
									data-linkid="10034048">
									<i class="iconfont">&#xe809;</i>
								</button>
							</dd>
						</dl>
						<dl>
							<dt>需求时间:</dt>
							<dd>
								<a data-linkid="10002783" href="" class='selected'
									rel="nofollow">全部</a>
								<!--  <a
								data-linkid="10002783" href=""
								rel="nofollow">今日发布</a> <a data-linkid="10002783"
								href="" rel="nofollow">昨日发布</a> <a
								data-linkid="10002783" href=""
								rel="nofollow">近3天发布</a> <a data-linkid="10002783"
								href="" rel="nofollow">24小时内到期</a> <a
								data-linkid="10002783" href=""
								rel="nofollow">2天内到期</a> <a data-linkid="10002783"
								href="" rel="nofollow">3天内到期</a> -->

								<input type="date" placeholder="开始日" name="startDate" id="start"
									value="${condition.startDate }" autocomplete="off"> <input
									type="date" placeholder="截止日" name="endDate" id="end"
									value="${condition.endDate }" autocomplete="off">
								<button type="submit" class="ui-btn ui-btn-link"
									data-linkid="10034048">
									<i class="iconfont">&#xe809;</i>
								</button>
							</dd>
						</dl>

						<dl>
							<dt>关键字查询:</dt>
							<dd>


								<!-- 隐藏域 每页条数 -->
								<input type="hidden" id="pageSizeInput" name="pageSize"
									value="${pageInfo.getPageSize()}" />
								<!-- 隐藏域 当前页数 -->
								<input type="hidden" id="currentPageInput" name="pageNum"
									value="${pageInfo.getPageNum()}" />
								<!-- 隐藏域 当前页数 -->
								<input type="hidden" id="descendingOrder"  name="ascenDing" 
								value="${condition.ascenDing }" /> 
								
								
								<a data-linkid="10002783" href="" class='selected'
									rel="nofollow">全部</a><input
									type="text" name="title" value="${condition.title }"
									placeholder="请输入关键字" autocomplete="off" class="layui-input">
								<button type="submit" class="ui-btn ui-btn-link"
									data-linkid="10034048">
									<i class="iconfont">&#xe809;</i>
								</button>


							</dd>
						</dl>
					</form>
				</div>


				<div class="list-container-hd list-container-hd-border clearfix">
					<div id="j-list-advrs"></div>
					<ul class="list-change">
						<li class="current"><a data-linkid="10033182" href=""
							class='selected'>进行中</a></li>
						<!-- <li><a data-linkid="10002785"
							href="" class="selected">成功案例</a></li> -->


					</ul>
					<span class="list-container-pub-entry fr"> </span>

				</div>


				<div class="list-sortby clearfix tab-filter">

					<div class="list-sorttag">
						<a href="" class="selected">综合</a>
						
							<c:choose>
								<c:when test="${condition.ascenDing==1 }">
									 <a  href="javascript:void(0);" onclick="changetime(11)">发布时间<i id="iconfont" class="iconfont">&#xe80c;</i></a> 
								</c:when>
								<c:when test="${condition.ascenDing==11 }">
									 <a  href="javascript:void(0);" onclick="changetime(1)">发布时间<i id="iconfont" class="iconfont">&#xe80d;</i></a> 
								</c:when>
								
								
								<c:otherwise>
									 <a  href="javascript:void(0);" onclick="changetime(1)">发布时间<i id="iconfont" class="iconfont">&#xe80c;</i></a> 
								</c:otherwise>
							</c:choose>


							<a
							data-linkid="10002787" href="">剩余时间<i class="iconfont">&#xe80c;</i></a>
						<a data-linkid="10002788" href="">参与数<i class="iconfont">&#xe80c;</i></a>
						
						<c:choose>
								<c:when test="${condition.ascenDing==4 }">
									 <a  href="javascript:void(0);" onclick="changetime(44)">价格<i id="iconfont" class="iconfont">&#xe80c;</i></a> 
								</c:when>
								<c:when test="${condition.ascenDing==44 }">
									 <a  href="javascript:void(0);" onclick="changetime(4)">价格<i id="iconfont" class="iconfont">&#xe80d;</i></a> 
								</c:when>
								
								
								<c:otherwise>
									 <a  href="javascript:void(0);" onclick="changetime(4)">价格<i id="iconfont" class="iconfont">&#xe80c;</i></a> 
								</c:otherwise>
							</c:choose>
						
						
						
					</div>
					<!-- <div class="price-range">
						<p class="js_range_input">
							￥ <input type="text" name="j" id="minPrice"
								class="text js_number_type" value="" /> 至 <input type="text"
								name="b" id="maxPrice" class="text js_number_type" value="" />
							<button data-linkid="10002790" type="submit"
								class="ui-btn ui-btn-mini js_range_submit">确定</button>
						</p>

					</div>
 -->




					<div class="ui-dropdown task-area-select J-selector-id"
						data-url="//task.zbj.com/s5a#ID#.html" data-url-s="/t_d#ID#.html"
						data-area-pid="" data-area-cid="">
						<a href="//map.zbj.com/list/getMapData/" target="_blank"
							class="map-entry" data-linkid="10033176">
							<div class="map-entry-box">
								<i class="map-icon-raw"></i> <i
									class="map-icon-close J-map-close"></i> 进入地图查找需求
							</div>
						</a> <a data-linkid="" href="#none" class="ui-dropdown-hd"><i
							class="iconfont">&#xe800;</i>&nbsp;所在地</a>
						<div class="unstyled area-select-content">
							<ul class="hot-city-box unstyled clearfix">
								<li><a href="javascript:;" class="title">热门:</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3374.html?localize=1" title="北京"
									data-id="3374">北京</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3781.html?localize=1" title="上海"
									data-id="3781">上海</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3510.html?localize=1" title="深圳"
									data-id="3510">深圳</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3493.html?localize=1" title="广州"
									data-id="3493">广州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3497.html?localize=1" title="东莞"
									data-id="3497">东莞</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3498.html?localize=1" title="佛山"
									data-id="3498">佛山</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3418.html?localize=1" title="重庆"
									data-id="3418">重庆</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3829.html?localize=1" title="成都"
									data-id="3829">成都</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3946.html?localize=1" title="杭州"
									data-id="3946">杭州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3970.html?localize=1" title="温州"
									data-id="3970">温州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3955.html?localize=1" title="金华"
									data-id="3955">金华</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3959.html?localize=1" title="宁波"
									data-id="3959">宁波</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3627.html?localize=1" title="武汉"
									data-id="3627">武汉</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3876.html?localize=1" title="天津"
									data-id="3876">天津</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3673.html?localize=1" title="苏州"
									data-id="3673">苏州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3660.html?localize=1" title="南京"
									data-id="3660">南京</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3677.html?localize=1" title="无锡"
									data-id="3677">无锡</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3817.html?localize=1" title="西安"
									data-id="3817">西安</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3602.html?localize=1" title="郑州"
									data-id="3602">郑州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3474.html?localize=1" title="厦门"
									data-id="3474">厦门</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3461.html?localize=1" title="福州"
									data-id="3461">福州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3467.html?localize=1" title="泉州"
									data-id="3467">泉州</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3645.html?localize=1" title="长沙"
									data-id="3645">长沙</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3687.html?localize=1" title="南昌"
									data-id="3687">南昌</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3759.html?localize=1" title="济南"
									data-id="3759">济南</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3770.html?localize=1" title="青岛"
									data-id="3770">青岛</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3925.html?localize=1" title="昆明"
									data-id="3925">昆明</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a4003.html?localize=1" title="石家庄"
									data-id="4003">石家庄</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3396.html?localize=1" title="合肥"
									data-id="3396">合肥</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3713.html?localize=1" title="沈阳"
									data-id="3713">沈阳</a></li>
								<li><a data-linkid="" data-city='null'
									href="  //task.zbj.com/s5a3717.html?localize=1" title="大连"
									data-id="3717">大连</a></li>
							</ul>
							<div class="province-list-box">
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid="" href="javascript:;" title="安徽"
											data-id="3395">安徽</a> <a data-linkid="" href="javascript:;"
											title="福建" data-id="3460">福建</a> <a data-linkid=""
											href="javascript:;" title="甘肃" data-id="3476">甘肃</a> <a
											data-linkid="" href="javascript:;" title="广东" data-id="3492">广东</a>
										<a data-linkid="" href="javascript:;" title="广西"
											data-id="3520">广西</a> <a data-linkid="" href="javascript:;"
											title="贵州" data-id="3534">贵州</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="3395">
										<li><a href="  //task.zbj.com/s5a3395.html?localize=1"
											data-id="3395" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3396.html?localize=1"
											data-city='null' title="合肥" data-id="3396">合肥</a></li>

										<li><a href="  //task.zbj.com/s5a3397.html?localize=1"
											data-city='null' title="安庆" data-id="3397">安庆</a></li>

										<li><a href="  //task.zbj.com/s5a3398.html?localize=1"
											data-city='null' title="蚌埠" data-id="3398">蚌埠</a></li>

										<li><a href="  //task.zbj.com/s5a3399.html?localize=1"
											data-city='null' title="亳州" data-id="3399">亳州</a></li>

										<li><a href="  //task.zbj.com/s5a3401.html?localize=1"
											data-city='null' title="滁州" data-id="3401">滁州</a></li>

										<li><a href="  //task.zbj.com/s5a3402.html?localize=1"
											data-city='null' title="阜阳" data-id="3402">阜阳</a></li>

										<li><a href="  //task.zbj.com/s5a3403.html?localize=1"
											data-city='null' title="池州" data-id="3403">池州</a></li>

										<li><a href="  //task.zbj.com/s5a3404.html?localize=1"
											data-city='null' title="淮北" data-id="3404">淮北</a></li>

										<li><a href="  //task.zbj.com/s5a3406.html?localize=1"
											data-city='null' title="淮南" data-id="3406">淮南</a></li>

										<li><a href="  //task.zbj.com/s5a3407.html?localize=1"
											data-city='null' title="黄山" data-id="3407">黄山</a></li>

										<li><a href="  //task.zbj.com/s5a3409.html?localize=1"
											data-city='null' title="六安" data-id="3409">六安</a></li>

										<li><a href="  //task.zbj.com/s5a3410.html?localize=1"
											data-city='null' title="马鞍山" data-id="3410">马鞍山</a></li>

										<li><a href="  //task.zbj.com/s5a3411.html?localize=1"
											data-city='null' title="宿州" data-id="3411">宿州</a></li>

										<li><a href="  //task.zbj.com/s5a3412.html?localize=1"
											data-city='null' title="铜陵" data-id="3412">铜陵</a></li>

										<li><a href="  //task.zbj.com/s5a3415.html?localize=1"
											data-city='null' title="宣城" data-id="3415">宣城</a></li>

										<li><a href="  //task.zbj.com/s5a3417.html?localize=1"
											data-city='null' title="芜湖" data-id="3417">芜湖</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3460">
										<li><a href="  //task.zbj.com/s5a3460.html?localize=1"
											data-id="3460" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3461.html?localize=1"
											data-city='null' title="福州" data-id="3461">福州</a></li>

										<li><a href="  //task.zbj.com/s5a3463.html?localize=1"
											data-city='null' title="龙岩" data-id="3463">龙岩</a></li>

										<li><a href="  //task.zbj.com/s5a3464.html?localize=1"
											data-city='null' title="南平" data-id="3464">南平</a></li>

										<li><a href="  //task.zbj.com/s5a3465.html?localize=1"
											data-city='null' title="宁德" data-id="3465">宁德</a></li>

										<li><a href="  //task.zbj.com/s5a3466.html?localize=1"
											data-city='null' title="莆田" data-id="3466">莆田</a></li>

										<li><a href="  //task.zbj.com/s5a3467.html?localize=1"
											data-city='null' title="泉州" data-id="3467">泉州</a></li>

										<li><a href="  //task.zbj.com/s5a3468.html?localize=1"
											data-city='null' title="三明" data-id="3468">三明</a></li>

										<li><a href="  //task.zbj.com/s5a3474.html?localize=1"
											data-city='null' title="厦门" data-id="3474">厦门</a></li>

										<li><a href="  //task.zbj.com/s5a6513.html?localize=1"
											data-city='null' title="漳州" data-id="6513">漳州</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3476">
										<li><a href="  //task.zbj.com/s5a3476.html?localize=1"
											data-id="3476" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3477.html?localize=1"
											data-city='null' title="兰州" data-id="3477">兰州</a></li>

										<li><a href="  //task.zbj.com/s5a3478.html?localize=1"
											data-city='null' title="白银" data-id="3478">白银</a></li>

										<li><a href="  //task.zbj.com/s5a3479.html?localize=1"
											data-city='null' title="定西" data-id="3479">定西</a></li>

										<li><a href="  //task.zbj.com/s5a3481.html?localize=1"
											data-city='null' title="甘南藏族自治州" data-id="3481">甘南藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3482.html?localize=1"
											data-city='null' title="金昌" data-id="3482">金昌</a></li>

										<li><a href="  //task.zbj.com/s5a3483.html?localize=1"
											data-city='null' title="酒泉" data-id="3483">酒泉</a></li>

										<li><a href="  //task.zbj.com/s5a3484.html?localize=1"
											data-city='null' title="临夏回族自治州" data-id="3484">临夏回族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3485.html?localize=1"
											data-city='null' title="平凉" data-id="3485">平凉</a></li>

										<li><a href="  //task.zbj.com/s5a3486.html?localize=1"
											data-city='null' title="天水" data-id="3486">天水</a></li>

										<li><a href="  //task.zbj.com/s5a3487.html?localize=1"
											data-city='null' title="陇南" data-id="3487">陇南</a></li>

										<li><a href="  //task.zbj.com/s5a6526.html?localize=1"
											data-city='null' title="武威" data-id="6526">武威</a></li>

										<li><a href="  //task.zbj.com/s5a3490.html?localize=1"
											data-city='null' title="嘉峪关" data-id="3490">嘉峪关</a></li>

										<li><a href="  //task.zbj.com/s5a3491.html?localize=1"
											data-city='null' title="张掖" data-id="3491">张掖</a></li>

										<li><a href="  //task.zbj.com/s5a6525.html?localize=1"
											data-city='null' title="庆阳" data-id="6525">庆阳</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3492">
										<li><a href="  //task.zbj.com/s5a3492.html?localize=1"
											data-id="3492" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3493.html?localize=1"
											data-city='null' title="广州" data-id="3493">广州</a></li>

										<li><a href="  //task.zbj.com/s5a3495.html?localize=1"
											data-city='null' title="潮州" data-id="3495">潮州</a></li>

										<li><a href="  //task.zbj.com/s5a3497.html?localize=1"
											data-city='null' title="东莞" data-id="3497">东莞</a></li>

										<li><a href="  //task.zbj.com/s5a3498.html?localize=1"
											data-city='null' title="佛山" data-id="3498">佛山</a></li>

										<li><a href="  //task.zbj.com/s5a3499.html?localize=1"
											data-city='null' title="河源" data-id="3499">河源</a></li>

										<li><a href="  //task.zbj.com/s5a3500.html?localize=1"
											data-city='null' title="惠州" data-id="3500">惠州</a></li>

										<li><a href="  //task.zbj.com/s5a3501.html?localize=1"
											data-city='null' title="江门" data-id="3501">江门</a></li>

										<li><a href="  //task.zbj.com/s5a3502.html?localize=1"
											data-city='null' title="揭阳" data-id="3502">揭阳</a></li>

										<li><a href="  //task.zbj.com/s5a3504.html?localize=1"
											data-city='null' title="茂名" data-id="3504">茂名</a></li>

										<li><a href="  //task.zbj.com/s5a3505.html?localize=1"
											data-city='null' title="梅州" data-id="3505">梅州</a></li>

										<li><a href="  //task.zbj.com/s5a3506.html?localize=1"
											data-city='null' title="清远" data-id="3506">清远</a></li>

										<li><a href="  //task.zbj.com/s5a3507.html?localize=1"
											data-city='null' title="汕头" data-id="3507">汕头</a></li>

										<li><a href="  //task.zbj.com/s5a3508.html?localize=1"
											data-city='null' title="汕尾" data-id="3508">汕尾</a></li>

										<li><a href="  //task.zbj.com/s5a3509.html?localize=1"
											data-city='null' title="韶关" data-id="3509">韶关</a></li>

										<li><a href="  //task.zbj.com/s5a3510.html?localize=1"
											data-city='null' title="深圳" data-id="3510">深圳</a></li>

										<li><a href="  //task.zbj.com/s5a3512.html?localize=1"
											data-city='null' title="阳江" data-id="3512">阳江</a></li>

										<li><a href="  //task.zbj.com/s5a3514.html?localize=1"
											data-city='null' title="云浮" data-id="3514">云浮</a></li>

										<li><a href="  //task.zbj.com/s5a3516.html?localize=1"
											data-city='null' title="湛江" data-id="3516">湛江</a></li>

										<li><a href="  //task.zbj.com/s5a3517.html?localize=1"
											data-city='null' title="肇庆" data-id="3517">肇庆</a></li>

										<li><a href="  //task.zbj.com/s5a3518.html?localize=1"
											data-city='null' title="中山" data-id="3518">中山</a></li>

										<li><a href="  //task.zbj.com/s5a3519.html?localize=1"
											data-city='null' title="珠海" data-id="3519">珠海</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3520">
										<li><a href="  //task.zbj.com/s5a3520.html?localize=1"
											data-id="3520" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3521.html?localize=1"
											data-city='null' title="南宁" data-id="3521">南宁</a></li>

										<li><a href="  //task.zbj.com/s5a3522.html?localize=1"
											data-city='null' title="百色" data-id="3522">百色</a></li>

										<li><a href="  //task.zbj.com/s5a3523.html?localize=1"
											data-city='null' title="北海" data-id="3523">北海</a></li>

										<li><a href="  //task.zbj.com/s5a3524.html?localize=1"
											data-city='null' title="桂林" data-id="3524">桂林</a></li>

										<li><a href="  //task.zbj.com/s5a3525.html?localize=1"
											data-city='null' title="防城港" data-id="3525">防城港</a></li>

										<li><a href="  //task.zbj.com/s5a3526.html?localize=1"
											data-city='null' title="河池" data-id="3526">河池</a></li>

										<li><a href="  //task.zbj.com/s5a3527.html?localize=1"
											data-city='null' title="贺州" data-id="3527">贺州</a></li>

										<li><a href="  //task.zbj.com/s5a3528.html?localize=1"
											data-city='null' title="柳州" data-id="3528">柳州</a></li>

										<li><a href="  //task.zbj.com/s5a3529.html?localize=1"
											data-city='null' title="来宾" data-id="3529">来宾</a></li>

										<li><a href="  //task.zbj.com/s5a3530.html?localize=1"
											data-city='null' title="钦州" data-id="3530">钦州</a></li>

										<li><a href="  //task.zbj.com/s5a3531.html?localize=1"
											data-city='null' title="梧州" data-id="3531">梧州</a></li>

										<li><a href="  //task.zbj.com/s5a3533.html?localize=1"
											data-city='null' title="玉林" data-id="3533">玉林</a></li>

										<li><a href="  //task.zbj.com/s5a6536.html?localize=1"
											data-city='null' title="崇左" data-id="6536">崇左</a></li>

										<li><a href="  //task.zbj.com/s5a6535.html?localize=1"
											data-city='null' title="贵港" data-id="6535">贵港</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3534">
										<li><a href="  //task.zbj.com/s5a3534.html?localize=1"
											data-id="3534" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3536.html?localize=1"
											data-city='null' title="贵阳" data-id="3536">贵阳</a></li>

										<li><a href="  //task.zbj.com/s5a3537.html?localize=1"
											data-city='null' title="安顺" data-id="3537">安顺</a></li>

										<li><a href="  //task.zbj.com/s5a6517.html?localize=1"
											data-city='null' title="黔东南苗族侗族自治州" data-id="6517">黔东南苗族侗族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3541.html?localize=1"
											data-city='null' title="六盘水" data-id="3541">六盘水</a></li>

										<li><a href="  //task.zbj.com/s5a3542.html?localize=1"
											data-city='null' title="铜仁" data-id="3542">铜仁</a></li>

										<li><a href="  //task.zbj.com/s5a3545.html?localize=1"
											data-city='null' title="遵义" data-id="3545">遵义</a></li>

										<li><a href="  //task.zbj.com/s5a6518.html?localize=1"
											data-city='null' title="黔南布依族苗族自治州" data-id="6518">黔南布依族苗族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6516.html?localize=1"
											data-city='null' title="黔西南布依族苗族自治州" data-id="6516">黔西南布依族苗族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6537.html?localize=1"
											data-city='null' title="毕节" data-id="6537">毕节</a></li>
									</ul>
								</div>
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid="" href="javascript:;" title="海南"
											data-id="3546">海南</a> <a data-linkid="" href="javascript:;"
											title="河北" data-id="3569">河北</a> <a data-linkid=""
											href="javascript:;" title="黑龙江" data-id="3585">黑龙江</a> <a
											data-linkid="" href="javascript:;" title="河南" data-id="3601">河南</a>
										<a data-linkid="" href="javascript:;" title="湖北"
											data-id="3626">湖北</a> <a data-linkid="" href="javascript:;"
											title="湖南" data-id="3644">湖南</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="3546">
										<li><a href="  //task.zbj.com/s5a3546.html?localize=1"
											data-id="3546" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3547.html?localize=1"
											data-city='null' title="海口" data-id="3547">海口</a></li>

										<li><a href="  //task.zbj.com/s5a3548.html?localize=1"
											data-city='null' title="三亚" data-id="3548">三亚</a></li>

										<li><a href="  //task.zbj.com/s5a3549.html?localize=1"
											data-city='null' title="五指山" data-id="3549">五指山</a></li>

										<li><a href="  //task.zbj.com/s5a3550.html?localize=1"
											data-city='null' title="琼海" data-id="3550">琼海</a></li>

										<li><a href="  //task.zbj.com/s5a3551.html?localize=1"
											data-city='null' title="儋州" data-id="3551">儋州</a></li>

										<li><a href="  //task.zbj.com/s5a3552.html?localize=1"
											data-city='null' title="文昌" data-id="3552">文昌</a></li>

										<li><a href="  //task.zbj.com/s5a3553.html?localize=1"
											data-city='null' title="万宁" data-id="3553">万宁</a></li>

										<li><a href="  //task.zbj.com/s5a3554.html?localize=1"
											data-city='null' title="东方" data-id="3554">东方</a></li>

										<li><a href="  //task.zbj.com/s5a3555.html?localize=1"
											data-city='null' title="定安" data-id="3555">定安</a></li>

										<li><a href="  //task.zbj.com/s5a3556.html?localize=1"
											data-city='null' title="屯昌" data-id="3556">屯昌</a></li>

										<li><a href="  //task.zbj.com/s5a3557.html?localize=1"
											data-city='null' title="澄迈" data-id="3557">澄迈</a></li>

										<li><a href="  //task.zbj.com/s5a3558.html?localize=1"
											data-city='null' title="临高" data-id="3558">临高</a></li>

										<li><a href="  //task.zbj.com/s5a3560.html?localize=1"
											data-city='null' title="白沙黎族" data-id="3560">白沙黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3561.html?localize=1"
											data-city='null' title="昌江黎族" data-id="3561">昌江黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3562.html?localize=1"
											data-city='null' title="乐东黎族" data-id="3562">乐东黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3563.html?localize=1"
											data-city='null' title="陵水黎族" data-id="3563">陵水黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3564.html?localize=1"
											data-city='null' title="保亭黎族" data-id="3564">保亭黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3565.html?localize=1"
											data-city='null' title="琼中黎族" data-id="3565">琼中黎族</a></li>

										<li><a href="  //task.zbj.com/s5a3566.html?localize=1"
											data-city='null' title="西沙群岛" data-id="3566">西沙群岛</a></li>

										<li><a href="  //task.zbj.com/s5a3567.html?localize=1"
											data-city='null' title="南沙群岛" data-id="3567">南沙群岛</a></li>

										<li><a href="  //task.zbj.com/s5a3568.html?localize=1"
											data-city='null' title="中沙群岛" data-id="3568">中沙群岛</a></li>

										<li><a href="  //task.zbj.com/s5a6562.html?localize=1"
											data-city='null' title="三沙" data-id="6562">三沙</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3569">
										<li><a href="  //task.zbj.com/s5a3569.html?localize=1"
											data-id="3569" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3571.html?localize=1"
											data-city='null' title="保定" data-id="3571">保定</a></li>

										<li><a href="  //task.zbj.com/s5a3573.html?localize=1"
											data-city='null' title="沧州" data-id="3573">沧州</a></li>

										<li><a href="  //task.zbj.com/s5a3574.html?localize=1"
											data-city='null' title="承德" data-id="3574">承德</a></li>

										<li><a href="  //task.zbj.com/s5a3576.html?localize=1"
											data-city='null' title="邯郸" data-id="3576">邯郸</a></li>

										<li><a href="  //task.zbj.com/s5a3577.html?localize=1"
											data-city='null' title="衡水" data-id="3577">衡水</a></li>

										<li><a href="  //task.zbj.com/s5a3578.html?localize=1"
											data-city='null' title="廊坊" data-id="3578">廊坊</a></li>

										<li><a href="  //task.zbj.com/s5a3580.html?localize=1"
											data-city='null' title="秦皇岛" data-id="3580">秦皇岛</a></li>

										<li><a href="  //task.zbj.com/s5a3581.html?localize=1"
											data-city='null' title="唐山" data-id="3581">唐山</a></li>

										<li><a href="  //task.zbj.com/s5a3583.html?localize=1"
											data-city='null' title="邢台" data-id="3583">邢台</a></li>

										<li><a href="  //task.zbj.com/s5a3584.html?localize=1"
											data-city='null' title="张家口" data-id="3584">张家口</a></li>

										<li><a href="  //task.zbj.com/s5a4003.html?localize=1"
											data-city='null' title="石家庄" data-id="4003">石家庄</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3585">
										<li><a href="  //task.zbj.com/s5a3585.html?localize=1"
											data-id="3585" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3586.html?localize=1"
											data-city='null' title="哈尔滨" data-id="3586">哈尔滨</a></li>

										<li><a href="  //task.zbj.com/s5a3588.html?localize=1"
											data-city='null' title="大庆" data-id="3588">大庆</a></li>

										<li><a href="  //task.zbj.com/s5a3589.html?localize=1"
											data-city='null' title="大兴安岭" data-id="3589">大兴安岭</a></li>

										<li><a href="  //task.zbj.com/s5a3590.html?localize=1"
											data-city='null' title="鹤岗" data-id="3590">鹤岗</a></li>

										<li><a href="  //task.zbj.com/s5a3591.html?localize=1"
											data-city='null' title="黑河" data-id="3591">黑河</a></li>

										<li><a href="  //task.zbj.com/s5a3592.html?localize=1"
											data-city='null' title="佳木斯" data-id="3592">佳木斯</a></li>

										<li><a href="  //task.zbj.com/s5a3594.html?localize=1"
											data-city='null' title="牡丹江" data-id="3594">牡丹江</a></li>

										<li><a href="  //task.zbj.com/s5a3595.html?localize=1"
											data-city='null' title="齐齐哈尔" data-id="3595">齐齐哈尔</a></li>

										<li><a href="  //task.zbj.com/s5a3596.html?localize=1"
											data-city='null' title="七台河" data-id="3596">七台河</a></li>

										<li><a href="  //task.zbj.com/s5a3597.html?localize=1"
											data-city='null' title="双鸭山" data-id="3597">双鸭山</a></li>

										<li><a href="  //task.zbj.com/s5a3598.html?localize=1"
											data-city='null' title="绥化" data-id="3598">绥化</a></li>

										<li><a href="  //task.zbj.com/s5a3599.html?localize=1"
											data-city='null' title="伊春" data-id="3599">伊春</a></li>

										<li><a href="  //task.zbj.com/s5a6511.html?localize=1"
											data-city='null' title="鸡西" data-id="6511">鸡西</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3601">
										<li><a href="  //task.zbj.com/s5a3601.html?localize=1"
											data-id="3601" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3602.html?localize=1"
											data-city='null' title="郑州" data-id="3602">郑州</a></li>

										<li><a href="  //task.zbj.com/s5a3603.html?localize=1"
											data-city='null' title="安阳" data-id="3603">安阳</a></li>

										<li><a href="  //task.zbj.com/s5a3604.html?localize=1"
											data-city='null' title="鹤壁" data-id="3604">鹤壁</a></li>

										<li><a href="  //task.zbj.com/s5a3606.html?localize=1"
											data-city='null' title="焦作" data-id="3606">焦作</a></li>

										<li><a href="  //task.zbj.com/s5a3608.html?localize=1"
											data-city='null' title="开封" data-id="3608">开封</a></li>

										<li><a href="  //task.zbj.com/s5a3609.html?localize=1"
											data-city='null' title="漯河" data-id="3609">漯河</a></li>

										<li><a href="  //task.zbj.com/s5a3610.html?localize=1"
											data-city='null' title="洛阳" data-id="3610">洛阳</a></li>

										<li><a href="  //task.zbj.com/s5a3611.html?localize=1"
											data-city='null' title="南阳" data-id="3611">南阳</a></li>

										<li><a href="  //task.zbj.com/s5a3612.html?localize=1"
											data-city='null' title="平顶山" data-id="3612">平顶山</a></li>

										<li><a href="  //task.zbj.com/s5a3613.html?localize=1"
											data-city='null' title="濮阳" data-id="3613">濮阳</a></li>

										<li><a href="  //task.zbj.com/s5a3614.html?localize=1"
											data-city='null' title="三门峡" data-id="3614">三门峡</a></li>

										<li><a href="  //task.zbj.com/s5a3615.html?localize=1"
											data-city='null' title="商丘" data-id="3615">商丘</a></li>

										<li><a href="  //task.zbj.com/s5a3616.html?localize=1"
											data-city='null' title="新乡" data-id="3616">新乡</a></li>

										<li><a href="  //task.zbj.com/s5a3617.html?localize=1"
											data-city='null' title="信阳" data-id="3617">信阳</a></li>

										<li><a href="  //task.zbj.com/s5a3618.html?localize=1"
											data-city='null' title="许昌" data-id="3618">许昌</a></li>

										<li><a href="  //task.zbj.com/s5a3619.html?localize=1"
											data-city='null' title="周口" data-id="3619">周口</a></li>

										<li><a href="  //task.zbj.com/s5a3620.html?localize=1"
											data-city='null' title="驻马店" data-id="3620">驻马店</a></li>

										<li><a href="  //task.zbj.com/s5a6538.html?localize=1"
											data-city='null' title="济源" data-id="6538">济源</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3626">
										<li><a href="  //task.zbj.com/s5a3626.html?localize=1"
											data-id="3626" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a6541.html?localize=1"
											data-city='null' title="潜江" data-id="6541">潜江</a></li>

										<li><a href="  //task.zbj.com/s5a3627.html?localize=1"
											data-city='null' title="武汉" data-id="3627">武汉</a></li>

										<li><a href="  //task.zbj.com/s5a3628.html?localize=1"
											data-city='null' title="恩施土家族苗族自治州" data-id="3628">恩施土家族苗族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3629.html?localize=1"
											data-city='null' title="鄂州" data-id="3629">鄂州</a></li>

										<li><a href="  //task.zbj.com/s5a3630.html?localize=1"
											data-city='null' title="黄冈" data-id="3630">黄冈</a></li>

										<li><a href="  //task.zbj.com/s5a3631.html?localize=1"
											data-city='null' title="黄石" data-id="3631">黄石</a></li>

										<li><a href="  //task.zbj.com/s5a3632.html?localize=1"
											data-city='null' title="荆门" data-id="3632">荆门</a></li>

										<li><a href="  //task.zbj.com/s5a3633.html?localize=1"
											data-city='null' title="荆州" data-id="3633">荆州</a></li>

										<li><a href="  //task.zbj.com/s5a3635.html?localize=1"
											data-city='null' title="十堰" data-id="3635">十堰</a></li>

										<li><a href="  //task.zbj.com/s5a3636.html?localize=1"
											data-city='null' title="随州" data-id="3636">随州</a></li>

										<li><a href="  //task.zbj.com/s5a3639.html?localize=1"
											data-city='null' title="咸宁" data-id="3639">咸宁</a></li>

										<li><a href="  //task.zbj.com/s5a3641.html?localize=1"
											data-city='null' title="襄阳" data-id="3641">襄阳</a></li>

										<li><a href="  //task.zbj.com/s5a3642.html?localize=1"
											data-city='null' title="孝感" data-id="3642">孝感</a></li>

										<li><a href="  //task.zbj.com/s5a3643.html?localize=1"
											data-city='null' title="宜昌" data-id="3643">宜昌</a></li>

										<li><a href="  //task.zbj.com/s5a6540.html?localize=1"
											data-city='null' title="仙桃" data-id="6540">仙桃</a></li>

										<li><a href="  //task.zbj.com/s5a6542.html?localize=1"
											data-city='null' title="天门" data-id="6542">天门</a></li>

										<li><a href="  //task.zbj.com/s5a6543.html?localize=1"
											data-city='null' title="神农架林区" data-id="6543">神农架林区</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3644">
										<li><a href="  //task.zbj.com/s5a3644.html?localize=1"
											data-id="3644" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3645.html?localize=1"
											data-city='null' title="长沙" data-id="3645">长沙</a></li>

										<li><a href="  //task.zbj.com/s5a3646.html?localize=1"
											data-city='null' title="常德" data-id="3646">常德</a></li>

										<li><a href="  //task.zbj.com/s5a3647.html?localize=1"
											data-city='null' title="郴州" data-id="3647">郴州</a></li>

										<li><a href="  //task.zbj.com/s5a3648.html?localize=1"
											data-city='null' title="衡阳" data-id="3648">衡阳</a></li>

										<li><a href="  //task.zbj.com/s5a3649.html?localize=1"
											data-city='null' title="怀化" data-id="3649">怀化</a></li>

										<li><a href="  //task.zbj.com/s5a3651.html?localize=1"
											data-city='null' title="娄底" data-id="3651">娄底</a></li>

										<li><a href="  //task.zbj.com/s5a3652.html?localize=1"
											data-city='null' title="邵阳" data-id="3652">邵阳</a></li>

										<li><a href="  //task.zbj.com/s5a3653.html?localize=1"
											data-city='null' title="湘潭" data-id="3653">湘潭</a></li>

										<li><a href="  //task.zbj.com/s5a3654.html?localize=1"
											data-city='null' title="益阳" data-id="3654">益阳</a></li>

										<li><a href="  //task.zbj.com/s5a3655.html?localize=1"
											data-city='null' title="岳阳" data-id="3655">岳阳</a></li>

										<li><a href="  //task.zbj.com/s5a3656.html?localize=1"
											data-city='null' title="永州" data-id="3656">永州</a></li>

										<li><a href="  //task.zbj.com/s5a3657.html?localize=1"
											data-city='null' title="张家界" data-id="3657">张家界</a></li>

										<li><a href="  //task.zbj.com/s5a3658.html?localize=1"
											data-city='null' title="株洲" data-id="3658">株洲</a></li>

										<li><a href="  //task.zbj.com/s5a6539.html?localize=1"
											data-city='null' title="湘西土家族苗族自治州" data-id="6539">湘西土家族苗族自治州</a></li>
									</ul>
								</div>
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid="" href="javascript:;" title="江苏"
											data-id="3659">江苏</a> <a data-linkid="" href="javascript:;"
											title="江西" data-id="3686">江西</a> <a data-linkid=""
											href="javascript:;" title="吉林" data-id="3700">吉林</a> <a
											data-linkid="" href="javascript:;" title="辽宁" data-id="3712">辽宁</a>
										<a data-linkid="" href="javascript:;" title="内蒙古"
											data-id="3729">内蒙古</a> <a data-linkid="" href="javascript:;"
											title="宁夏" data-id="3742">宁夏</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="3659">
										<li><a href="  //task.zbj.com/s5a3659.html?localize=1"
											data-id="3659" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3660.html?localize=1"
											data-city='null' title="南京" data-id="3660">南京</a></li>

										<li><a href="  //task.zbj.com/s5a3662.html?localize=1"
											data-city='null' title="常州" data-id="3662">常州</a></li>

										<li><a href="  //task.zbj.com/s5a3668.html?localize=1"
											data-city='null' title="连云港" data-id="3668">连云港</a></li>

										<li><a href="  //task.zbj.com/s5a3669.html?localize=1"
											data-city='null' title="南通" data-id="3669">南通</a></li>

										<li><a href="  //task.zbj.com/s5a3672.html?localize=1"
											data-city='null' title="宿迁" data-id="3672">宿迁</a></li>

										<li><a href="  //task.zbj.com/s5a3673.html?localize=1"
											data-city='null' title="苏州" data-id="3673">苏州</a></li>

										<li><a href="  //task.zbj.com/s5a3675.html?localize=1"
											data-city='null' title="泰州" data-id="3675">泰州</a></li>

										<li><a href="  //task.zbj.com/s5a3677.html?localize=1"
											data-city='null' title="无锡" data-id="3677">无锡</a></li>

										<li><a href="  //task.zbj.com/s5a3678.html?localize=1"
											data-city='null' title="徐州" data-id="3678">徐州</a></li>

										<li><a href="  //task.zbj.com/s5a3679.html?localize=1"
											data-city='null' title="盐城" data-id="3679">盐城</a></li>

										<li><a href="  //task.zbj.com/s5a3680.html?localize=1"
											data-city='null' title="扬州" data-id="3680">扬州</a></li>

										<li><a href="  //task.zbj.com/s5a3684.html?localize=1"
											data-city='null' title="镇江" data-id="3684">镇江</a></li>

										<li><a href="  //task.zbj.com/s5a6559.html?localize=1"
											data-city='null' title="淮安" data-id="6559">淮安</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3686">
										<li><a href="  //task.zbj.com/s5a3686.html?localize=1"
											data-id="3686" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3687.html?localize=1"
											data-city='null' title="南昌" data-id="3687">南昌</a></li>

										<li><a href="  //task.zbj.com/s5a3688.html?localize=1"
											data-city='null' title="抚州" data-id="3688">抚州</a></li>

										<li><a href="  //task.zbj.com/s5a3689.html?localize=1"
											data-city='null' title="赣州" data-id="3689">赣州</a></li>

										<li><a href="  //task.zbj.com/s5a3690.html?localize=1"
											data-city='null' title="吉安" data-id="3690">吉安</a></li>

										<li><a href="  //task.zbj.com/s5a3691.html?localize=1"
											data-city='null' title="景德镇" data-id="3691">景德镇</a></li>

										<li><a href="  //task.zbj.com/s5a3693.html?localize=1"
											data-city='null' title="九江" data-id="3693">九江</a></li>

										<li><a href="  //task.zbj.com/s5a3695.html?localize=1"
											data-city='null' title="萍乡" data-id="3695">萍乡</a></li>

										<li><a href="  //task.zbj.com/s5a3696.html?localize=1"
											data-city='null' title="上饶" data-id="3696">上饶</a></li>

										<li><a href="  //task.zbj.com/s5a3697.html?localize=1"
											data-city='null' title="新余" data-id="3697">新余</a></li>

										<li><a href="  //task.zbj.com/s5a3698.html?localize=1"
											data-city='null' title="宜春" data-id="3698">宜春</a></li>

										<li><a href="  //task.zbj.com/s5a3699.html?localize=1"
											data-city='null' title="鹰潭" data-id="3699">鹰潭</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3700">
										<li><a href="  //task.zbj.com/s5a3700.html?localize=1"
											data-id="3700" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3701.html?localize=1"
											data-city='null' title="长春" data-id="3701">长春</a></li>

										<li><a href="  //task.zbj.com/s5a3702.html?localize=1"
											data-city='null' title="白城" data-id="3702">白城</a></li>

										<li><a href="  //task.zbj.com/s5a3705.html?localize=1"
											data-city='null' title="辽源" data-id="3705">辽源</a></li>

										<li><a href="  //task.zbj.com/s5a3707.html?localize=1"
											data-city='null' title="吉林" data-id="3707">吉林</a></li>

										<li><a href="  //task.zbj.com/s5a3708.html?localize=1"
											data-city='null' title="四平" data-id="3708">四平</a></li>

										<li><a href="  //task.zbj.com/s5a3709.html?localize=1"
											data-city='null' title="松原" data-id="3709">松原</a></li>

										<li><a href="  //task.zbj.com/s5a3710.html?localize=1"
											data-city='null' title="通化" data-id="3710">通化</a></li>

										<li><a href="  //task.zbj.com/s5a6546.html?localize=1"
											data-city='null' title="延边朝鲜族自治州" data-id="6546">延边朝鲜族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6545.html?localize=1"
											data-city='null' title="白山" data-id="6545">白山</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3712">
										<li><a href="  //task.zbj.com/s5a3712.html?localize=1"
											data-id="3712" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3713.html?localize=1"
											data-city='null' title="沈阳" data-id="3713">沈阳</a></li>

										<li><a href="  //task.zbj.com/s5a3714.html?localize=1"
											data-city='null' title="鞍山" data-id="3714">鞍山</a></li>

										<li><a href="  //task.zbj.com/s5a3715.html?localize=1"
											data-city='null' title="本溪" data-id="3715">本溪</a></li>

										<li><a href="  //task.zbj.com/s5a3716.html?localize=1"
											data-city='null' title="朝阳" data-id="3716">朝阳</a></li>

										<li><a href="  //task.zbj.com/s5a3717.html?localize=1"
											data-city='null' title="大连" data-id="3717">大连</a></li>

										<li><a href="  //task.zbj.com/s5a3718.html?localize=1"
											data-city='null' title="丹东" data-id="3718">丹东</a></li>

										<li><a href="  //task.zbj.com/s5a3719.html?localize=1"
											data-city='null' title="抚顺" data-id="3719">抚顺</a></li>

										<li><a href="  //task.zbj.com/s5a3720.html?localize=1"
											data-city='null' title="阜新" data-id="3720">阜新</a></li>

										<li><a href="  //task.zbj.com/s5a3721.html?localize=1"
											data-city='null' title="葫芦岛" data-id="3721">葫芦岛</a></li>

										<li><a href="  //task.zbj.com/s5a3722.html?localize=1"
											data-city='null' title="锦州" data-id="3722">锦州</a></li>

										<li><a href="  //task.zbj.com/s5a3723.html?localize=1"
											data-city='null' title="辽阳" data-id="3723">辽阳</a></li>

										<li><a href="  //task.zbj.com/s5a3724.html?localize=1"
											data-city='null' title="盘锦" data-id="3724">盘锦</a></li>

										<li><a href="  //task.zbj.com/s5a3725.html?localize=1"
											data-city='null' title="铁岭" data-id="3725">铁岭</a></li>

										<li><a href="  //task.zbj.com/s5a3726.html?localize=1"
											data-city='null' title="营口" data-id="3726">营口</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3729">
										<li><a href="  //task.zbj.com/s5a3729.html?localize=1"
											data-id="3729" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a6547.html?localize=1"
											data-city='null' title="锡林郭勒盟" data-id="6547">锡林郭勒盟</a></li>

										<li><a href="  //task.zbj.com/s5a3730.html?localize=1"
											data-city='null' title="呼和浩特" data-id="3730">呼和浩特</a></li>

										<li><a href="  //task.zbj.com/s5a3731.html?localize=1"
											data-city='null' title="阿拉善盟" data-id="3731">阿拉善盟</a></li>

										<li><a href="  //task.zbj.com/s5a3732.html?localize=1"
											data-city='null' title="包头" data-id="3732">包头</a></li>

										<li><a href="  //task.zbj.com/s5a3733.html?localize=1"
											data-city='null' title="赤峰" data-id="3733">赤峰</a></li>

										<li><a href="  //task.zbj.com/s5a3738.html?localize=1"
											data-city='null' title="通辽" data-id="3738">通辽</a></li>

										<li><a href="  //task.zbj.com/s5a3739.html?localize=1"
											data-city='null' title="乌海" data-id="3739">乌海</a></li>

										<li><a href="  //task.zbj.com/s5a6510.html?localize=1"
											data-city='null' title="兴安盟" data-id="6510">兴安盟</a></li>

										<li><a href="  //task.zbj.com/s5a6504.html?localize=1"
											data-city='null' title="呼伦贝尔市" data-id="6504">呼伦贝尔市</a></li>

										<li><a href="  //task.zbj.com/s5a6507.html?localize=1"
											data-city='null' title="鄂尔多斯市" data-id="6507">鄂尔多斯市</a></li>

										<li><a href="  //task.zbj.com/s5a6509.html?localize=1"
											data-city='null' title="乌兰察布" data-id="6509">乌兰察布</a></li>

										<li><a href="  //task.zbj.com/s5a6508.html?localize=1"
											data-city='null' title="巴彦淖尔" data-id="6508">巴彦淖尔</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3742">
										<li><a href="  //task.zbj.com/s5a3742.html?localize=1"
											data-id="3742" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3743.html?localize=1"
											data-city='null' title="银川" data-id="3743">银川</a></li>

										<li><a href="  //task.zbj.com/s5a3744.html?localize=1"
											data-city='null' title="固原" data-id="3744">固原</a></li>

										<li><a href="  //task.zbj.com/s5a3745.html?localize=1"
											data-city='null' title="中卫" data-id="3745">中卫</a></li>

										<li><a href="  //task.zbj.com/s5a3746.html?localize=1"
											data-city='null' title="石嘴山" data-id="3746">石嘴山</a></li>

										<li><a href="  //task.zbj.com/s5a3747.html?localize=1"
											data-city='null' title="吴忠" data-id="3747">吴忠</a></li>
									</ul>
								</div>
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid="" href="javascript:;" title="青海"
											data-id="3748">青海</a> <a data-linkid="" href="javascript:;"
											title="山东" data-id="3758">山东</a> <a data-linkid=""
											href="javascript:;" title="山西" data-id="3802">山西</a> <a
											data-linkid="" href="javascript:;" title="陕西" data-id="3816">陕西</a>
										<a data-linkid="" href="javascript:;" title="四川"
											data-id="3828">四川</a> <a data-linkid="" href="javascript:;"
											title="新疆" data-id="3896">新疆</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="3748">
										<li><a href="  //task.zbj.com/s5a3748.html?localize=1"
											data-id="3748" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3749.html?localize=1"
											data-city='null' title="西宁" data-id="3749">西宁</a></li>

										<li><a href="  //task.zbj.com/s5a3752.html?localize=1"
											data-city='null' title="海南藏族自治州" data-id="3752">海南藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3753.html?localize=1"
											data-city='null' title="海东" data-id="3753">海东</a></li>

										<li><a href="  //task.zbj.com/s5a3754.html?localize=1"
											data-city='null' title="海北藏族自治州" data-id="3754">海北藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3755.html?localize=1"
											data-city='null' title="果洛藏族自治州" data-id="3755">果洛藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3756.html?localize=1"
											data-city='null' title="黄南藏族自治州" data-id="3756">黄南藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3757.html?localize=1"
											data-city='null' title="玉树藏族自治州" data-id="3757">玉树藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6528.html?localize=1"
											data-city='null' title="海西蒙古族自治州" data-id="6528">海西蒙古族自治州</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3758">
										<li><a href="  //task.zbj.com/s5a3758.html?localize=1"
											data-id="3758" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3759.html?localize=1"
											data-city='null' title="济南" data-id="3759">济南</a></li>

										<li><a href="  //task.zbj.com/s5a3760.html?localize=1"
											data-city='null' title="滨州" data-id="3760">滨州</a></li>

										<li><a href="  //task.zbj.com/s5a3762.html?localize=1"
											data-city='null' title="德州" data-id="3762">德州</a></li>

										<li><a href="  //task.zbj.com/s5a3763.html?localize=1"
											data-city='null' title="东营" data-id="3763">东营</a></li>

										<li><a href="  //task.zbj.com/s5a3764.html?localize=1"
											data-city='null' title="菏泽" data-id="3764">菏泽</a></li>

										<li><a href="  //task.zbj.com/s5a3765.html?localize=1"
											data-city='null' title="济宁" data-id="3765">济宁</a></li>

										<li><a href="  //task.zbj.com/s5a3766.html?localize=1"
											data-city='null' title="莱芜" data-id="3766">莱芜</a></li>

										<li><a href="  //task.zbj.com/s5a3767.html?localize=1"
											data-city='null' title="聊城" data-id="3767">聊城</a></li>

										<li><a href="  //task.zbj.com/s5a3768.html?localize=1"
											data-city='null' title="临沂" data-id="3768">临沂</a></li>

										<li><a href="  //task.zbj.com/s5a3770.html?localize=1"
											data-city='null' title="青岛" data-id="3770">青岛</a></li>

										<li><a href="  //task.zbj.com/s5a3772.html?localize=1"
											data-city='null' title="日照" data-id="3772">日照</a></li>

										<li><a href="  //task.zbj.com/s5a3775.html?localize=1"
											data-city='null' title="泰安" data-id="3775">泰安</a></li>

										<li><a href="  //task.zbj.com/s5a3776.html?localize=1"
											data-city='null' title="潍坊" data-id="3776">潍坊</a></li>

										<li><a href="  //task.zbj.com/s5a3777.html?localize=1"
											data-city='null' title="威海" data-id="3777">威海</a></li>

										<li><a href="  //task.zbj.com/s5a3778.html?localize=1"
											data-city='null' title="烟台" data-id="3778">烟台</a></li>

										<li><a href="  //task.zbj.com/s5a3779.html?localize=1"
											data-city='null' title="枣庄" data-id="3779">枣庄</a></li>

										<li><a href="  //task.zbj.com/s5a3780.html?localize=1"
											data-city='null' title="淄博" data-id="3780">淄博</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3802">
										<li><a href="  //task.zbj.com/s5a3802.html?localize=1"
											data-id="3802" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3803.html?localize=1"
											data-city='null' title="太原" data-id="3803">太原</a></li>

										<li><a href="  //task.zbj.com/s5a3804.html?localize=1"
											data-city='null' title="长治" data-id="3804">长治</a></li>

										<li><a href="  //task.zbj.com/s5a3805.html?localize=1"
											data-city='null' title="大同" data-id="3805">大同</a></li>

										<li><a href="  //task.zbj.com/s5a3807.html?localize=1"
											data-city='null' title="晋城" data-id="3807">晋城</a></li>

										<li><a href="  //task.zbj.com/s5a3811.html?localize=1"
											data-city='null' title="朔州" data-id="3811">朔州</a></li>

										<li><a href="  //task.zbj.com/s5a3812.html?localize=1"
											data-city='null' title="忻州" data-id="3812">忻州</a></li>

										<li><a href="  //task.zbj.com/s5a3815.html?localize=1"
											data-city='null' title="运城" data-id="3815">运城</a></li>

										<li><a href="  //task.zbj.com/s5a4274.html?localize=1"
											data-city='null' title="吕梁" data-id="4274">吕梁</a></li>

										<li><a href="  //task.zbj.com/s5a4288.html?localize=1"
											data-city='null' title="晋中" data-id="4288">晋中</a></li>

										<li><a href="  //task.zbj.com/s5a6549.html?localize=1"
											data-city='null' title="临汾" data-id="6549">临汾</a></li>

										<li><a href="  //task.zbj.com/s5a6548.html?localize=1"
											data-city='null' title="阳泉" data-id="6548">阳泉</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3816">
										<li><a href="  //task.zbj.com/s5a3816.html?localize=1"
											data-id="3816" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3817.html?localize=1"
											data-city='null' title="西安" data-id="3817">西安</a></li>

										<li><a href="  //task.zbj.com/s5a3818.html?localize=1"
											data-city='null' title="安康" data-id="3818">安康</a></li>

										<li><a href="  //task.zbj.com/s5a3819.html?localize=1"
											data-city='null' title="宝鸡" data-id="3819">宝鸡</a></li>

										<li><a href="  //task.zbj.com/s5a3820.html?localize=1"
											data-city='null' title="汉中" data-id="3820">汉中</a></li>

										<li><a href="  //task.zbj.com/s5a3821.html?localize=1"
											data-city='null' title="渭南" data-id="3821">渭南</a></li>

										<li><a href="  //task.zbj.com/s5a3822.html?localize=1"
											data-city='null' title="商洛" data-id="3822">商洛</a></li>

										<li><a href="  //task.zbj.com/s5a3824.html?localize=1"
											data-city='null' title="铜川" data-id="3824">铜川</a></li>

										<li><a href="  //task.zbj.com/s5a3825.html?localize=1"
											data-city='null' title="咸阳" data-id="3825">咸阳</a></li>

										<li><a href="  //task.zbj.com/s5a3826.html?localize=1"
											data-city='null' title="延安" data-id="3826">延安</a></li>

										<li><a href="  //task.zbj.com/s5a3827.html?localize=1"
											data-city='null' title="榆林" data-id="3827">榆林</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3828">
										<li><a href="  //task.zbj.com/s5a3828.html?localize=1"
											data-id="3828" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3829.html?localize=1"
											data-city='null' title="成都" data-id="3829">成都</a></li>

										<li><a href="  //task.zbj.com/s5a3830.html?localize=1"
											data-city='null' title="巴中" data-id="3830">巴中</a></li>

										<li><a href="  //task.zbj.com/s5a3831.html?localize=1"
											data-city='null' title="达州" data-id="3831">达州</a></li>

										<li><a href="  //task.zbj.com/s5a3832.html?localize=1"
											data-city='null' title="德阳" data-id="3832">德阳</a></li>

										<li><a href="  //task.zbj.com/s5a3836.html?localize=1"
											data-city='null' title="广安" data-id="3836">广安</a></li>

										<li><a href="  //task.zbj.com/s5a3837.html?localize=1"
											data-city='null' title="广元" data-id="3837">广元</a></li>

										<li><a href="  //task.zbj.com/s5a3840.html?localize=1"
											data-city='null' title="乐山" data-id="3840">乐山</a></li>

										<li><a href="  //task.zbj.com/s5a6515.html?localize=1"
											data-city='null' title="甘孜藏族自治州" data-id="6515">甘孜藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3843.html?localize=1"
											data-city='null' title="绵阳" data-id="3843">绵阳</a></li>

										<li><a href="  //task.zbj.com/s5a3844.html?localize=1"
											data-city='null' title="眉山" data-id="3844">眉山</a></li>

										<li><a href="  //task.zbj.com/s5a3845.html?localize=1"
											data-city='null' title="南充" data-id="3845">南充</a></li>

										<li><a href="  //task.zbj.com/s5a3846.html?localize=1"
											data-city='null' title="内江" data-id="3846">内江</a></li>

										<li><a href="  //task.zbj.com/s5a3847.html?localize=1"
											data-city='null' title="攀枝花" data-id="3847">攀枝花</a></li>

										<li><a href="  //task.zbj.com/s5a3848.html?localize=1"
											data-city='null' title="遂宁" data-id="3848">遂宁</a></li>

										<li><a href="  //task.zbj.com/s5a3850.html?localize=1"
											data-city='null' title="凉山彝族自治州" data-id="3850">凉山彝族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3851.html?localize=1"
											data-city='null' title="雅安" data-id="3851">雅安</a></li>

										<li><a href="  //task.zbj.com/s5a3852.html?localize=1"
											data-city='null' title="宜宾" data-id="3852">宜宾</a></li>

										<li><a href="  //task.zbj.com/s5a3853.html?localize=1"
											data-city='null' title="自贡" data-id="3853">自贡</a></li>

										<li><a href="  //task.zbj.com/s5a3854.html?localize=1"
											data-city='null' title="资阳" data-id="3854">资阳</a></li>

										<li><a href="  //task.zbj.com/s5a6558.html?localize=1"
											data-city='null' title="泸州" data-id="6558">泸州</a></li>

										<li><a href="  //task.zbj.com/s5a6514.html?localize=1"
											data-city='null' title="阿坝藏族羌族自治州" data-id="6514">阿坝藏族羌族自治州</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3896">
										<li><a href="  //task.zbj.com/s5a3896.html?localize=1"
											data-id="3896" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3897.html?localize=1"
											data-city='null' title="乌鲁木齐" data-id="3897">乌鲁木齐</a></li>

										<li><a href="  //task.zbj.com/s5a3899.html?localize=1"
											data-city='null' title="阿勒泰" data-id="3899">阿勒泰</a></li>

										<li><a href="  //task.zbj.com/s5a3902.html?localize=1"
											data-city='null' title="昌吉回族自治州" data-id="3902">昌吉回族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3905.html?localize=1"
											data-city='null' title="哈密" data-id="3905">哈密</a></li>

										<li><a href="  //task.zbj.com/s5a3906.html?localize=1"
											data-city='null' title="和田" data-id="3906">和田</a></li>

										<li><a href="  //task.zbj.com/s5a3907.html?localize=1"
											data-city='null' title="喀什" data-id="3907">喀什</a></li>

										<li><a href="  //task.zbj.com/s5a3908.html?localize=1"
											data-city='null' title="克拉玛依" data-id="3908">克拉玛依</a></li>

										<li><a href="  //task.zbj.com/s5a6533.html?localize=1"
											data-city='null' title="伊犁哈萨克" data-id="6533">伊犁哈萨克</a></li>

										<li><a href="  //task.zbj.com/s5a3914.html?localize=1"
											data-city='null' title="吐鲁番" data-id="3914">吐鲁番</a></li>

										<li><a href="  //task.zbj.com/s5a6556.html?localize=1"
											data-city='null' title="五家渠" data-id="6556">五家渠</a></li>

										<li><a href="  //task.zbj.com/s5a6555.html?localize=1"
											data-city='null' title="图木舒克" data-id="6555">图木舒克</a></li>

										<li><a href="  //task.zbj.com/s5a6554.html?localize=1"
											data-city='null' title="阿拉尔" data-id="6554">阿拉尔</a></li>

										<li><a href="  //task.zbj.com/s5a6553.html?localize=1"
											data-city='null' title="石河子" data-id="6553">石河子</a></li>

										<li><a href="  //task.zbj.com/s5a6534.html?localize=1"
											data-city='null' title="塔城" data-id="6534">塔城</a></li>

										<li><a href="  //task.zbj.com/s5a6532.html?localize=1"
											data-city='null' title="克孜勒苏柯尔克孜自治州" data-id="6532">克孜勒苏柯尔克孜自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6530.html?localize=1"
											data-city='null' title="巴音郭楞蒙古自治州" data-id="6530">巴音郭楞蒙古自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6529.html?localize=1"
											data-city='null' title="博尔塔拉蒙古自治州" data-id="6529">博尔塔拉蒙古自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6531.html?localize=1"
											data-city='null' title="阿克苏" data-id="6531">阿克苏</a></li>
									</ul>
								</div>
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid="" href="javascript:;" title="西藏"
											data-id="3916">西藏</a> <a data-linkid="" href="javascript:;"
											title="云南" data-id="3924">云南</a> <a data-linkid=""
											href="javascript:;" title="浙江" data-id="3945">浙江</a> <a
											data-linkid="" href="javascript:;" title="香港" data-id="6564">香港</a>
										<a data-linkid="" href="javascript:;" title="台湾"
											data-id="6563">台湾</a> <a data-linkid=""
											href="  //task.zbj.com/s5a3728.html?localize=1"
											data-city='null' title="澳门" data-id="6566">澳门</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="3916">
										<li><a href="  //task.zbj.com/s5a3916.html?localize=1"
											data-id="3916" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3917.html?localize=1"
											data-city='null' title="拉萨" data-id="3917">拉萨</a></li>

										<li><a href="  //task.zbj.com/s5a3918.html?localize=1"
											data-city='null' title="阿里" data-id="3918">阿里</a></li>

										<li><a href="  //task.zbj.com/s5a3919.html?localize=1"
											data-city='null' title="昌都" data-id="3919">昌都</a></li>

										<li><a href="  //task.zbj.com/s5a3920.html?localize=1"
											data-city='null' title="林芝" data-id="3920">林芝</a></li>

										<li><a href="  //task.zbj.com/s5a3921.html?localize=1"
											data-city='null' title="那曲" data-id="3921">那曲</a></li>

										<li><a href="  //task.zbj.com/s5a3922.html?localize=1"
											data-city='null' title="日喀则" data-id="3922">日喀则</a></li>

										<li><a href="  //task.zbj.com/s5a3923.html?localize=1"
											data-city='null' title="山南" data-id="3923">山南</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3924">
										<li><a href="  //task.zbj.com/s5a3924.html?localize=1"
											data-id="3924" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3925.html?localize=1"
											data-city='null' title="昆明" data-id="3925">昆明</a></li>

										<li><a href="  //task.zbj.com/s5a3926.html?localize=1"
											data-city='null' title="大理白族自治州" data-id="3926">大理白族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3927.html?localize=1"
											data-city='null' title="保山" data-id="3927">保山</a></li>

										<li><a href="  //task.zbj.com/s5a3934.html?localize=1"
											data-city='null' title="临沧" data-id="3934">临沧</a></li>

										<li><a href="  //task.zbj.com/s5a3935.html?localize=1"
											data-city='null' title="丽江" data-id="3935">丽江</a></li>

										<li><a href="  //task.zbj.com/s5a3938.html?localize=1"
											data-city='null' title="曲靖" data-id="3938">曲靖</a></li>

										<li><a href="  //task.zbj.com/s5a3940.html?localize=1"
											data-city='null' title="文山壮族苗族自治州" data-id="3940">文山壮族苗族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3941.html?localize=1"
											data-city='null' title="西双版纳傣族自治州" data-id="3941">西双版纳傣族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a3942.html?localize=1"
											data-city='null' title="玉溪" data-id="3942">玉溪</a></li>

										<li><a href="  //task.zbj.com/s5a3944.html?localize=1"
											data-city='null' title="昭通" data-id="3944">昭通</a></li>

										<li><a href="  //task.zbj.com/s5a6524.html?localize=1"
											data-city='null' title="迪庆藏族自治州" data-id="6524">迪庆藏族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6523.html?localize=1"
											data-city='null' title="怒江僳僳族自治州" data-id="6523">怒江僳僳族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6522.html?localize=1"
											data-city='null' title="德宏傣族景颇族自治州" data-id="6522">德宏傣族景颇族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6521.html?localize=1"
											data-city='null' title="红河哈尼族彝族自治州" data-id="6521">红河哈尼族彝族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6520.html?localize=1"
											data-city='null' title="楚雄彝族自治州" data-id="6520">楚雄彝族自治州</a></li>

										<li><a href="  //task.zbj.com/s5a6519.html?localize=1"
											data-city='null' title="普洱" data-id="6519">普洱</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="3945">
										<li><a href="  //task.zbj.com/s5a3945.html?localize=1"
											data-id="3945" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3946.html?localize=1"
											data-city='null' title="杭州" data-id="3946">杭州</a></li>

										<li><a href="  //task.zbj.com/s5a3953.html?localize=1"
											data-city='null' title="湖州" data-id="3953">湖州</a></li>

										<li><a href="  //task.zbj.com/s5a3954.html?localize=1"
											data-city='null' title="嘉兴" data-id="3954">嘉兴</a></li>

										<li><a href="  //task.zbj.com/s5a3955.html?localize=1"
											data-city='null' title="金华" data-id="3955">金华</a></li>

										<li><a href="  //task.zbj.com/s5a3958.html?localize=1"
											data-city='null' title="丽水" data-id="3958">丽水</a></li>

										<li><a href="  //task.zbj.com/s5a3959.html?localize=1"
											data-city='null' title="宁波" data-id="3959">宁波</a></li>

										<li><a href="  //task.zbj.com/s5a3963.html?localize=1"
											data-city='null' title="衢州" data-id="3963">衢州</a></li>

										<li><a href="  //task.zbj.com/s5a3966.html?localize=1"
											data-city='null' title="绍兴" data-id="3966">绍兴</a></li>

										<li><a href="  //task.zbj.com/s5a3968.html?localize=1"
											data-city='null' title="台州" data-id="3968">台州</a></li>

										<li><a href="  //task.zbj.com/s5a3970.html?localize=1"
											data-city='null' title="温州" data-id="3970">温州</a></li>

										<li><a href="  //task.zbj.com/s5a3972.html?localize=1"
											data-city='null' title="舟山" data-id="3972">舟山</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="6564">
										<li><a href="  //task.zbj.com/s5a6564.html?localize=1"
											data-id="6564" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3624.html?localize=1"
											data-city='null' title="九龙" data-id="3624">九龙</a></li>

										<li><a href="  //task.zbj.com/s5a3625.html?localize=1"
											data-city='null' title="新界" data-id="3625">新界</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="6563">
										<li><a href="  //task.zbj.com/s5a6563.html?localize=1"
											data-id="6563" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3856.html?localize=1"
											data-city='null' title="台北" data-id="3856">台北</a></li>

										<li><a href="  //task.zbj.com/s5a3857.html?localize=1"
											data-city='null' title="基隆" data-id="3857">基隆</a></li>

										<li><a href="  //task.zbj.com/s5a3858.html?localize=1"
											data-city='null' title="台南" data-id="3858">台南</a></li>

										<li><a href="  //task.zbj.com/s5a3859.html?localize=1"
											data-city='null' title="台中" data-id="3859">台中</a></li>

										<li><a href="  //task.zbj.com/s5a3860.html?localize=1"
											data-city='null' title="高雄" data-id="3860">高雄</a></li>

										<li><a href="  //task.zbj.com/s5a3861.html?localize=1"
											data-city='null' title="屏东" data-id="3861">屏东</a></li>

										<li><a href="  //task.zbj.com/s5a3862.html?localize=1"
											data-city='null' title="南投" data-id="3862">南投</a></li>

										<li><a href="  //task.zbj.com/s5a3863.html?localize=1"
											data-city='null' title="云林" data-id="3863">云林</a></li>

										<li><a href="  //task.zbj.com/s5a3864.html?localize=1"
											data-city='null' title="新竹" data-id="3864">新竹</a></li>

										<li><a href="  //task.zbj.com/s5a3865.html?localize=1"
											data-city='null' title="彰化" data-id="3865">彰化</a></li>

										<li><a href="  //task.zbj.com/s5a3866.html?localize=1"
											data-city='null' title="苗栗" data-id="3866">苗栗</a></li>

										<li><a href="  //task.zbj.com/s5a3867.html?localize=1"
											data-city='null' title="嘉义" data-id="3867">嘉义</a></li>

										<li><a href="  //task.zbj.com/s5a3868.html?localize=1"
											data-city='null' title="花莲" data-id="3868">花莲</a></li>

										<li><a href="  //task.zbj.com/s5a3869.html?localize=1"
											data-city='null' title="桃园" data-id="3869">桃园</a></li>

										<li><a href="  //task.zbj.com/s5a3870.html?localize=1"
											data-city='null' title="宜兰" data-id="3870">宜兰</a></li>

										<li><a href="  //task.zbj.com/s5a3871.html?localize=1"
											data-city='null' title="台东" data-id="3871">台东</a></li>

										<li><a href="  //task.zbj.com/s5a3873.html?localize=1"
											data-city='null' title="马祖" data-id="3873">马祖</a></li>

										<li><a href="  //task.zbj.com/s5a3874.html?localize=1"
											data-city='null' title="澎湖" data-id="3874">澎湖</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="6566">
										<li><a href="  //task.zbj.com/s5a6566.html?localize=1"
											data-id="6566" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3728.html?localize=1"
											data-city='null' title="澳门" data-id="3728">澳门</a></li>
									</ul>
								</div>
								<div class="row">
									<div class="clearfix menu-box">
										<a data-linkid=""
											href="  //task.zbj.com/s5a3374.html?localize=1"
											data-city='null' title="北京" data-id="6560">北京</a> <a
											data-linkid=""
											href="  //task.zbj.com/s5a3418.html?localize=1"
											data-city='null' title="重庆" data-id="6561">重庆</a> <a
											data-linkid=""
											href="  //task.zbj.com/s5a3781.html?localize=1"
											data-city='null' title="上海" data-id="7275">上海</a> <a
											data-linkid=""
											href="  //task.zbj.com/s5a3876.html?localize=1"
											data-city='null' title="天津" data-id="7276">天津</a>
									</div>
									<ul class="content-box clearfix unstyled" data-scdid="6560">
										<li><a href="  //task.zbj.com/s5a6560.html?localize=1"
											data-id="6560" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3374.html?localize=1"
											data-city='null' title="北京" data-id="3374">北京</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="6561">
										<li><a href="  //task.zbj.com/s5a6561.html?localize=1"
											data-id="6561" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3418.html?localize=1"
											data-city='null' title="重庆" data-id="3418">重庆</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="7275">
										<li><a href="  //task.zbj.com/s5a7275.html?localize=1"
											data-id="7275" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3781.html?localize=1"
											data-city='null' title="上海" data-id="3781">上海</a></li>
									</ul>
									<ul class="content-box clearfix unstyled" data-scdid="7276">
										<li><a href="  //task.zbj.com/s5a7276.html?localize=1"
											data-id="7276" data-city=null title="全部">全部</a></li>

										<li><a href="  //task.zbj.com/s5a3876.html?localize=1"
											data-city='null' title="天津" data-id="3876">天津</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>


				</div>

				<script>
    void function(window, document) {
        var imgList = [];
        var startTime = +new Date();

        function loadCb(){
            imgList.push({
                img: this,
                time: +new Date()
            });
        }

        var currentImgDoms = document.getElementsByTagName("img");

        for ( var i = 0, item; item = currentImgDoms[i++]; ) {
            if ( item.complete ) {
                loadCb.call( item );
            } else {
                item.onload = function(){
                    this.onload = null;
                    loadCb.call( this );
                }
            }
        }

        MonitorHD.getFirstSImg = imgList;
        MonitorHD.getFirstSTime = startTime;
    }(window, document);
</script>




				<c:forEach var="dem" items="${pageInfo.list}">
					<div class="tab-switch tab-progress">
						<table class="list-task">
							<colgroup>
								<col>
								<col width="110px">
								<col width="130px">
								<col width="105px">
							</colgroup>
							<!-- <tr>
							<td><p>
									<span class='list-icon-top list-vas-top' title="需求置顶">置顶</span><em
										class="list-task-reward">&yen;666.00</em><a rel="nofollow"
										class="list-task-title" title="我需要品牌创意设计-名片设计"
										href="//task.zbj.com/13668949/" target="_blank"
										data-zbjlog="{obj:'main'}"><img
										src="//task.zbj.com/main/textimg.html?tid=13668949&kw=&color=11,115,187&lcolor=255,138,0&fsize=10.5&mwidth=350&fspace=3&f=simsunbd"></a><a
										tool-map="top" tool-text="屏蔽搜索引擎 "
										class="zbj-tooltip task-icons task-icons-spider"
										href="javascript:return false;"></a>
								</p>
								<p class="list-task-ctn"></p></td>
							<td><p>
									<em class="list-task-trusteeship">已托管</em>
								</p></td>
							<td><p class="normal-p">
									<a class="blue" rel="nofollow"
										href="//task.zbj.com/13668949/#bid-erea" target="_blank"
										data-zbjlog="{obj:'main'}">0</a><span class="text">参与</span><span
										class="text"> | </span><span class="text">比稿</span>
								</p></td>
							<td><span class="text">6天 后截止</span></td>
						</tr> -->

							<c:if test="${dem.demandstatusid ==2}">
								<tr>
									<td>

										<p>                                          
											<em class="list-task-reward">&yen;${dem.demandPrice}</em><a
												class="list-task-title" title="${dem.demandTitle }"
												href="Portal/demandDetailsList.action?demandID=${dem.demandID}"
												target="_blank" data-zbjlog="{obj:'main'}">${dem.demandTitle }</a>
										</p>

										<p class="list-task-ctn">${dem.demandContent }</p>
									</td>
									<td>
									<p class="normal-p">
									<span class="text">发布时间为：${dem.releaseTime }</span>
									</p>
									</td>
									<td><p class="normal-p">
											<a class="blue" rel="nofollow"
												href="//task.zbj.com/13655206/#bid-erea" target="_blank"
												data-zbjlog="{obj:'main'}">${8-dem.tenderNumber}</a><span class="text">参与</span><span
												class="text"> | </span>
												<span class="text">招标中</span>
										</p>
										<p class="normal-p">
											<span style="white-space: nowrap; color: #999;">仅剩<span
												class="highlight">${dem.tenderNumber}</span>个投标机会
											</span>
										</p></td>
									<td><span class="text">截止时间为：${dem.asoftTime }</span></td>

								</tr>
							</c:if>
						</table>
				</c:forEach>
				<div class="list-footer">


					<div class="page">

						<div>
							共${pageInfo.getPages()}页
							<c:choose>
								<c:when test="${!pageInfo.hasPreviousPage}">
									<span class="prev">上一页</span>
								</c:when>
								<c:otherwise>
									<a class="prev" href="javascript:void(0);"
										onclick="changePage(${pageInfo.getPrePage()})">上一页</a>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${pageInfo.pageNum <= 2}">
									<c:if test="${pageInfo.pageNum != 1}">
										<a class="num" href="javascript:void(0);"
											onclick="changePage(${pageInfo.pageNum-1})"><c:out
												value="${pageInfo.pageNum-1}"></c:out> </a>
									</c:if>
									<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
									<c:forEach begin="1" step="1" end="4" var="num">
										<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
											<a class="num" href="javascript:void(0);"
												onclick="changePage(${pageInfo.pageNum+num})"><c:out
													value="${pageInfo.pageNum+num}"></c:out> </a>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<a class="num" href="javascript:void(0);"
										onccick="changePage(${pageInfo.pageNum-1})"><c:out
											value="${pageInfo.pageNum-1}"></c:out> </a>
									<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
									<c:forEach begin="1" step="1" end="4" var="num">
										<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
											<a class="num" href="javascript:void(0);"
												onclick="changePage(${pageInfo.pageNum+num})"><c:out
													value="${pageInfo.pageNum+num}"></c:out> </a>
										</c:if>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${!pageInfo.hasNextPage}">
									<span class="next">下一页</span>
								</c:when>
								<c:otherwise>
									<a class="next" href="javascript:void(0);"
										onclick="changePage(${pageInfo.getNextPage()})">下一页</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>


	<br>
	<br>
	<div class='cls'></div>
	<%@include file="/end.jsp"%>




	<script type="text/javascript">
//更改当前页
function changePage(pageNum) {
	//1 将页码的值放入对应表单隐藏域中
	$("#currentPageInput").val(pageNum);
	//2 提交表单
	$("#pageForm").submit();
};



//更改每页条数
function changePageSize(pageSize) {
	//1 将页码的值放入对应表单隐藏域中
	$("#pageSizeInput").val(pageSize);
	
	//2 提交表单
	$("#pageForm").submit();
};

//时间排序
function changetime(ascenDing) {
	//1 将页码的值放入对应表单隐藏域中
	alert("排序");
	/* $("#iconfont").html("&#xe80d;");
	document.getElementById('iconfont').innerHtml = 'abc'; */
	$("#descendingOrder").val(ascenDing);
	//2 提交表单
	$("#pageForm").submit();
};

</script>


	<script>if (window.__global_utopia_script__) {for(var i=0; i<window.__global_utopia_script__.length;i++){for(var j=0;j<window.__global_utopia_script__[i].length;j++){seajs.use(window.__global_utopia_script__[i][j])}}}</script>


	<script
		onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
		type="text/javascript"
		src="https://t5.zbjimg.com/t5s/output/pkg/common/js/global-e3eca49e700615ca.js"></script>

	<script type="text/javascript" src="//cbjs.baidu.com/js/o.js"></script>
	<script>
            window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"1","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"16"},"slide":{"type":"slide","bdImg":"0","bdPos":"left","bdTop":"170"}};
        </script>
	<script
		onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
		type="text/javascript"
		src="https://t5.zbjimg.com/t5s/output/baidu-share/api/js/share-50e3c9699098600b.js"></script>



	<script
		onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
		type="text/javascript"
		src="https://t5.zbjimg.com/t5s/output/pkg/task/js/task-70ff804f9b380d0c.js"></script>







	<script
		onerror="window.gMonitor && window.gMonitor.resourceError(this.src, 'js')"
		type="text/javascript"
		src="https://t5.zbjimg.com/t5s/output/common/js/count-1bad4ad04447d75e.js"></script>




	<script type="text/javascript"
		src="https://t6.zbjimg.com/components/sai/seer/seer.js"></script>
	<script>
        MonitorHD.sd = +new Date;
        // 通过判断 seajs 是否加载，来检测 js 加载情况
	    if(window.gMonitor){window.gMonitor.checkCdn();}
    </script>



</body>
</html>