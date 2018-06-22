<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>一站式服务平台</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href=<%=path + "/css/font.css"%>>
<link rel="stylesheet" href=<%=path + "/css/xadmin.css"%>>
<script type="text/javascript" src=<%=path + "/js/jquery-3.3.1.js"%>></script>
<script src=<%=path + "/lib/layui/layui.js"%> charset="utf-8"></script>
<script type="text/javascript" src=<%=path + "/js/xadmin.js"%>></script>
</head>
<body>
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo">
			<a href="./index.html">一站式服务平台</a>
		</div>
		<div class="left_open">
			<i title="展开左侧栏" class="iconfont">&#xe699;</i>
		</div>
		<ul class="layui-nav left fast-add" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">+新增</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="x_admin_show('资讯','http://www.baidu.com')"><i
							class="iconfont">&#xe6a2;</i>资讯</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('图片','http://www.baidu.com')"><i
							class="iconfont">&#xe6a8;</i>图片</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('用户','http://www.baidu.com')"><i
							class="iconfont">&#xe6b8;</i>用户</a>
					</dd>
				</dl></li>
		</ul>
		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">admin</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a>
					</dd>
					<dd>
						<a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a>
					</dd>
					<dd>
						<a href="./login.html">退出</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="javascript:;"> <i class="iconfont">&#xe6b8;</i>
						<cite>系统管理员</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="member-list.html"> <i class="iconfont">&#xe6a7;</i>
								<cite>系统管理</cite>
						</a>
							<ul class="sub-menu">
							<li><a _href="xxx.html"> <i class="iconfont">&#xe6a7;</i>
										<cite>日志查看</cite>

								</a></li>
								<li><a _href="xxx.html"> <i class="iconfont">&#xe6a7;</i>
										<cite>参数配置</cite>

								</a></li>
								<li><a _href=<%=path+"/SystemManage/roleList.action" %>> <i class="iconfont">&#xe6a7;</i>
										<cite>权限配置</cite>

								</a></li>
								
							</ul></li>
						<li><a _href="member-del.html"> <i class="iconfont">&#xe6a7;</i>
								<cite>系统配置</cite>
						</a>
							<ul class="sub-menu">
							<li><a _href=<%=path+"/SystemManage/seekclasslist.action" %>> <i class="iconfont">&#xe6a7;</i>
										<cite>需求类型配置</cite>
								</a></li>
								<li><a _href=<%=path+"/SystemManage/serseekServicelist.action" %>> <i class="iconfont">&#xe6a7;</i>
										<cite>服务商类型配置</cite>
								</a></li>						
							</ul>					
						</li>
						<li><a href="javascript:;"> <i class="iconfont">&#xe6ce;</i>
								<cite>数据统计</cite> <i class="iconfont nav_right">&#xe697;</i>
						</a>
							<ul class="sub-menu">
								<li><a _href="xxx.html"> <i class="iconfont">&#xe6a7;</i>
										<cite>订单统计</cite>

								</a></li>
								<li><a _href="xx.html"> <i class="iconfont">&#xe6a7;</i>
										<cite>金额统计</cite>

								</a></li>
							</ul></li>
					</ul></li>
			
				<li><a href="javascript:;"> <i class="iconfont">&#xe726;</i>
						<cite>业务员管理</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="BusiManage/UserList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>雇主管理</cite>
						</a></li>
						<li><a _href="BusiManage/providerList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>服务商管理</cite>
						</a></li>
						<li><a _href="admin-cate.html"> <i class="iconfont">&#xe6a7;</i>
								<cite>财务对账</cite>
						</a></li>
						<li><a _href="BusiManage/demandList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>需求管理</cite>
						</a></li>
						<li><a _href="admin-rule.html"> <i class="iconfont">&#xe6a7;</i>
								<cite>作品管理</cite>
						</a></li>
						<li><a _href="admin-rule.html"> <i class="iconfont">&#xe6a7;</i>
								<cite>顾问配置</cite>
						</a></li>
					</ul></li>
					
					<li><a href="javascript:;"> <i class="iconfont">&#xe726;</i>
						<cite>门户管理员</cite> <i class="iconfont nav_right">&#xe697;</i>
				</a>
					<ul class="sub-menu">
						<li><a _href="PortalManage/userStoryList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>雇主故事配置</cite>
						</a></li>
						<li><a _href="PortalManage/violationsList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>曝光台配置</cite>
						</a></li>
						<li><a _href="PortalManage/ruleCenterList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>规则中心配置</cite>
						</a></li>
						<li><a _href="PortalManage/successCaseList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>成功案例配置</cite>
						</a></li>
						<li><a _href="PortalManage/linksList.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>友情链接配置</cite>
						</a></li>

						<li><a _href="PortalManage/listDyna.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>行业动态配置</cite>
						</a></li>
						<li><a _href="PortalManage/listInfo.action"> <i class="iconfont">&#xe6a7;</i>
								<cite>最新资讯配置</cite>
						</a></li>
					</ul></li>
			
			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
			<ul class="layui-tab-title">
				<li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src='./welcome.html' frameborder="0" scrolling="yes"
						class="x-iframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="footer">
		<div class="copyright">Copyright ©2017 x-admin v2.3 All Rights
			Reserved</div>
	</div>
	<!-- 底部结束 -->
	<script>
		//百度统计可去掉
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>