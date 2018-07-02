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
<title>服务商大厅 -帝六人网</title>
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
						所有服务商<span class="list-number">(7991)</span>
					</h2>

				</div>





				<div class="list-filter filter-along">

					<form id="pageForm" class="layui-form layui-col-md12 x-so"
						action="Portal/beforeDemandsList.action">

					<dl>
							<dt>按分类查询:</dt>
							<dd>


								 <a
									data-linkid="10002783" href="" class='selected' rel="nofollow">全部</a><input
									type="text" name="title" value="${condition.title}"
									placeholder="请输入关键字" autocomplete="off" class="layui-input">
								<button type="submit" class="ui-btn ui-btn-link"
									data-linkid="10034048">
									<i class="iconfont">&#xe809;</i>
								</button>


							</dd>
						</dl>

						<dl>
							<dt>按名称查询:</dt>
							<dd>


								<!-- 隐藏域 每页条数 -->
								<input type="hidden" id="pageSizeInput" name="pageSize"
									value="${pageInfo.getPageSize()}" />
								<!-- 隐藏域 当前页数 -->
								<input type="hidden" id="currentPageInput" name="pageNum"
									value="${pageInfo.getPageNum()}" />
								<!-- 隐藏域 当前页数 -->
								<input type="hidden" id="condiTionalSort" name="descenDingOrder"
									value="${condition.descenDingOrder}" /> <a
									data-linkid="10002783" href="" class='selected' rel="nofollow">全部</a><input
									type="text" name="title" value="${condition.title}"
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
							class='selected'>所有服务商</a></li>
						<!-- <li><a data-linkid="10002785"
							href="" class="selected">成功案例</a></li> -->


					</ul>
					<span class="list-container-pub-entry fr"> </span>

				</div>


				<div class="list-sortby clearfix tab-filter">

					<div class="list-sorttag">
						<a href="Portal/beforeDemandsList.action" class="selected">综合</a>

						
								<a href="javascript:void(0);" onclick="changetime(11)">发布时间<i
									id="iconfont" class="iconfont">&#xe80c;</i></a>
							
							


					
								<a href="javascript:void(0);" onclick="changetime(33)">可投标数<i
									id="iconfont" class="iconfont">&#xe80c;</i></a>
						

						
						
								<a href="javascript:void(0);" onclick="changetime(44)">价格<i
									id="iconfont" class="iconfont">&#xe80c;</i></a>
							



					</div>



					<div class="ui-dropdown task-area-select J-selector-id" data-url=""
						data-url-s="/t_d#ID#.html" data-area-pid="" data-area-cid="">
						<a href="" target="_blank" class="map-entry"
							data-linkid="10033176">
							<div class="map-entry-box">
								<i class="map-icon-raw"></i> <i
									class="map-icon-close J-map-close"></i> 进入地图查找需求
							</div>
						</a> <a data-linkid="" href="#none" class="ui-dropdown-hd"><i
							class="iconfont">&#xe800;</i>&nbsp;所在地</a>
						<div class="unstyled area-select-content">
							<ul class="hot-city-box unstyled clearfix">
								<li><a href="javascript:;" class="title">热门:</a></li>
								<li><a data-linkid="" data-city='null' href="  " title="北京"
									data-id="3374">北京</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="上海"
									data-id="3781">上海</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="深圳"
									data-id="3510">深圳</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="广州"
									data-id="3493">广州</a></li>
								<li><a data-linkid="" data-city='null' href="  " title="东莞"
									data-id="3497">东莞</a></li>
								<li><a data-linkid="" data-city='null' href="  " title="佛山"
									data-id="3498">佛山</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="重庆"
									data-id="3418">重庆</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="成都"
									data-id="3829">成都</a></li>
								<li><a data-linkid="" data-city='null' href="  " title="杭州"
									data-id="3946">杭州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="温州"
									data-id="3970">温州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="金华"
									data-id="3955">金华</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="宁波"
									data-id="3959">宁波</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="武汉"
									data-id="3627">武汉</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="天津"
									data-id="3876">天津</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="苏州"
									data-id="3673">苏州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="南京"
									data-id="3660">南京</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="无锡"
									data-id="3677">无锡</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="西安"
									data-id="3817">西安</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="郑州"
									data-id="3602">郑州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="厦门"
									data-id="3474">厦门</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="福州"
									data-id="3461">福州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="泉州"
									data-id="3467">泉州</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="长沙"
									data-id="3645">长沙</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="南昌"
									data-id="3687">南昌</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="济南"
									data-id="3759">济南</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="青岛"
									data-id="3770">青岛</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="昆明"
									data-id="3925">昆明</a></li>
								<li><a data-linkid="" data-city='null' href="" title="石家庄"
									data-id="4003">石家庄</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="合肥"
									data-id="3396">合肥</a></li>
								<li><a data-linkid="" data-city='null' href=" " title="沈阳"
									data-id="3713">沈阳</a></li>
								<li><a data-linkid="" data-city='null' href="  " title="大连"
									data-id="3717">大连</a></li>
							</ul>
							<div class="province-list-box"></div>
						</div>
					</div>


				</div>





				<c:forEach var="dem" items="${pageInfo.list}">
					<div class="tab-switch tab-progress">
						<table class="list-task">
							<colgroup>
								<col>
								<col width="110px">
								<col width="130px">
								<col width="105px">
							</colgroup>
							

							
								<tr>
									<td>

										<p>
											<em class="list-task-reward">服务商名称：</em><a
												class="list-task-title" title="${dem.userName }"
												href="Portal/demandDetailsList.action?demandID=${dem.userName}"
												target="_blank" data-zbjlog="{obj:'main'}">${dem.userName }</a>
										</p>

										<p class="list-task-ctn">${dem.userName }</p>
									</td>
									<td>
										<p class="normal-p">
											<span class="text">发布时间为：${dem.userName }</span>
										</p>
									</td>
									<td><p class="normal-p">
											<a class="blue" rel="nofollow"
												href="//task.zbj.com/13655206/#bid-erea" target="_blank"
												data-zbjlog="{obj:'main'}">大大</a><span
												class="text">参与</span><span class="text"> | </span> <span
												class="text">招标中</span>
										</p>
										<p class="normal-p">
											<span style="white-space: nowrap; color: #999;">仅剩<span
												class="highlight">${dem.userName}</span>个投标机会
											</span>
										</p></td>
									<td><span class="text">截止时间为：${dem.userName }</span> </td>

								</tr>
						
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

//排序
function changetime(descenDingOrder) {
	
	$("#condiTionalSort").val(descenDingOrder);
	
	//2 提交表单
	$("#pageForm").submit();
};

//金额查询判断
function mysubmit() {
	
	var beWorks = $("#beWorks").val();
	var endWorks = $("#endWorks").val();

	
	var patt2 = new RegExp("^[0-9]*$");
	
	if(!patt2.test(beWorks)){
		alert("输入的数量只能是数字！");
		return ;
		}
	if(!patt2.test(endWorks)){
		alert("输入的数量只能是数字！");
		return ;
		}
	if (beWorks.length == 0||endWorks.length == 0)
	{
		alert("输入的不能为空！");
		return ;
	}
	
	
	if (beWorks>endWorks)
	{
		alert("起始金额不能大于最大金额！");
		return ;
	}
	
	if (beWorks==0||endWorks==0) {
		alert("最小金额不能为0");
		return ;
	}

	$("#pageForm").submit();
};


//日期查询判断
function mysubmit2() {
	

	var start = $("#start").val();
	var end = $("#end").val();
	
	
	if (start.length == 0||end.length == 0)
	{
		alert("输入的不能为空！");
		return ;
	}
	
	
	if (start>end)
	{
		alert("起始日期不能小于最终日期！");
		return ;
	}
	
	

	$("#pageForm").submit();
};

</script>
	<!-- <script type="text/javascript" src="js/jquery.min.js"></script>
倒计时定时器的js，需要在jQuery之后导入
<script type="text/javascript" src="js/timer.js"></script>
<script type="text/javascript">
	//1  页面刚生成时，获取所有需要设置定时器的timer数组，数组名称必须为timers
	var timers = $(".timer");
	$(function() {
		//2 开启定时器，每个1秒执行
		openTime();
	})
</script> -->





</body>
</html>