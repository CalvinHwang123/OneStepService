<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则中心</title>


<link rel='shortcut icon' href='//s.zbjimg.com/img/favicon.ico'
	type='image/x-icon' />




<script type='text/javascript'>
	window.ZBJInfo = {
		baseURI : "zbj.com",
		pageDomain : "zbj.com",
		staticLibURI : "//as.zbjimg.com",
		qiniuUploadTokenUrl : "//rms.zhubajie.com",
		runtime : "product"
	};
</script>


<link rel="stylesheet" href="./css/rule.css">
<link rel="stylesheet" href="./css/rule2.css">
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-cms-web/global/index_80a75e9.css,/static/nodejs-zbj-cms-web/widget/common/header/index_c58bf40.css,/static/nodejs-zbj-cms-web/widget/common/selector/index_ce4f02f.css,/static/nodejs-zbj-cms-web/widget/index/news/index_8082c46.css,/static/nodejs-zbj-cms-web/widget/index/banner/index_98b5bc3.css" />
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_80a3c8b.css,/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_dec9231.css" />
<meta name="referrer" content="always">
<script type="text/javascript">
	window.__bees__rates__ = {
		"default" : 0.3,
		"path" : {
			"/index" : 0.2
		},
		"regexp" : [ {
			pattern : "\\/tingfu$",
			value : 0.5
		} ]
	}
</script>
<script type="text/javascript"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-bees-core/0.0.9/index.js"></script>
<script id="seajsnode"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-core/0.0.2/index.js"></script>

<style>
.qs-module .qs-adviser-bottom .qs-adviser-wrap .adviser-item-container .qs-adviser-right
	{
	width: 158px;
}

.qs-module .qs-adviser-bottom .qs-adviser-wrap .adviser-item-container .qs-adviser-right .adviser-desc p
	{
	width: 158px;
	text-overflow: ellipsis;
}
</style>
<script type="text/javascript"
	src="//as.zbjimg.com/static/nodejs-zbj-cms-web/seajs-config_943a3dc.js"></script>
<script type="text/javascript"
	src="//as.zbjimg.com/??/rake-component/fe-common/utopia-arale-seajs-config/index.js,/rake-component/fe-witkey/utopia-witkey-iframeresizer-res/1.0.0/iframeResizer.contentWindow.min.js"></script>
</head>
<body>


	<script>
		seajs
				.use([ "//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_f550d0f.js" ]);
	</script>


	<%@include file="/head.jsp"%>

	<div class='el-header' id='utopia_widget_1'>
		<div class='content'>

			<div class='el-selector-container'>
				<div class='el-selector' id='utopia_widget_2'>

					<div class='el-selector-content'>
						<input id='el-content' class='el-content' placeholder='请输入规则关键词搜索' />
						<button type='button' id='el-content-btn'>搜索</button>

					</div>
				</div>
				<script>
					/*<![CDATA[*/
					utopia.arrived({
						uid : 'utopia_widget_2',
						js : [],
						entry : function() {
							$("#el-content-btn").on(
									"click",
									function() {
										if ("" == $("#el-content").val())
											return !1;
										var e = "/searchrules?categoryId="
												+ $("#el-selector").val()
												+ "&keyword="
												+ encodeURI($("#el-content")
														.val());
										window.location.href = e
									})
						}
					});
					//]]>
				</script>

			</div>
		</div>
	</div>

	<script>
		utopia.arrived({
			uid : 'utopia_widget_1',
			js : [],
			entry : function() {
			}
		});
	</script>





	<script>
		/*<![CDATA[*/
		utopia
				.arrived({
					uid : 'utopia_widget_3',
					js : [],
					entry : function() {
						$(document)
								.ready(
										function() {
											$(".index-news .bd li a")
													.on(
															"click",
															function() {
																var n = $(this)
																		.data();
																n.pid
																		&& $
																				.ajax({
																					type : "get",
																					url : "/addContentClickCount",
																					data : {
																						articleId : n.pid
																					},
																					dataType : "json",
																					success : function() {
																						n.pid
																								&& (window.location.href = n.href)
																					},
																					error : function(
																							i) {
																								n.pid
																										&& (window.location.href = n.href),
																								console
																										.log(i)
																					}
																				})
															})
										})
					}
				});
		//]]>
	</script>
	<div class='content padding-spacing'>
		<div class='fl'>
			<div class='index-banner' id='J-slider'>
				<div class='bd'>
					<ul>

						<li class='banner-item'><a href='/banner'> <img
								src='img/帝六人.jpg' />
						</a></li>

					</ul>
				</div>
				<div class='hd'>
					<ul class='ui-switchable-nav'>

						<li class='ui-switchable-trigger'></li>

					</ul>
				</div>
			</div>
			<script>
				utopia
						.arrived({
							uid : 'J-slider',
							js : [],
							entry : function(e) {
								e
										.async(
												[ "widget/common/lib/jquery.superslide.2.1.1" ],
												function() {
													$("#J-slider").slide({
														mainCell : ".bd ul",
														titCell : ".hd ul li",
														effect : "leftLoop",
														autoPlay : !0
													})
												})
							}
						});
			</script>
		</div>

		<div class='fr'>

			<div class='index-news  icon-news1'>
				<div class='hd'>
					<span class='title'><em class='icon'></em><span>规则公示</span></span>
					<a href='/rules-27?cid=29'><span>更多</span></a>
				</div>
				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a
								href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class='cls'></div>
	</div>
	<div class='content padding-spacing footer-spacing'>
		<div class='fl'>


			<div class='index-news index-news-max icon-news2'>
				<div class='hd'>
					<span class='title'><em class='icon'></em><span>最新更新</span></span>
					<a href='/rules-27?cid=31'><span>更多</span></a>
				</div>

				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a
								href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>


		</div>

		<div class='fr'>

			<div class='index-news  icon-news3'>
				<div class='hd'>
					<span class='title'><em class='icon'></em><span>热门规则</span></span>
					<a href='/rules-27?cid=30'><span>更多</span></a>
				</div>
				<c:forEach var="rule" items="${ruleList}">
					<div class='bd'>
						<ul>
							<li><a
								href="Portal/conTentList.action?ruleID=${rule.ruleID}">${rule.ruleTitle }</a></li>



						</ul>
						<div class='cls'></div>
					</div>
				</c:forEach>
			</div>

		</div>
		<div class='cls'></div>
	</div>
	<div class='cls'></div>




	<script>
		seajs
				.use([ "//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_c450da5.js" ]);
	</script>

	<%@include file="/end.jsp"%>

</body>

</html>