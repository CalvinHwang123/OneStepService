<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset='utf-8' />
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<meta name='renderer' content='webkit' />
<meta http-equiv='Cache-Control' content='no-transform ' />
<title></title>
<script type='text/javascript'>
	window.ZBJInfo = {
		baseURI : "zbj.com",
		pageDomain : "zbj.com",
		staticLibURI : "//as.zbjimg.com",
		asStaticLibURI : "//as.zbjimg.com",
		qiniuUploadTokenUrl : "//rms.zbj.com",
		runtime : "product",
		iframeDomain : "zbj.com",
		bbj : true
	};
</script>
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-i-web/static/common/index_bde6f85.css,/static/nodejs-zbj-i-web/static/common/arale-dilog_1c1b1cf.css,/static/nodejs-zbj-i-web/static/common/calendar_8196da7.css,/static/nodejs-zbj-i-web/widget/common/banner/banner_39ac84c.css,/static/nodejs-zbj-i-web/widget/common/nav1/nav1_30895b9.css,/static/nodejs-zbj-i-web/widget/home/content-banner/content-banner_0525934.css,/static/nodejs-zbj-i-web/widget/common/sub/sub_21753aa.css,/static/nodejs-zbj-i-web/widget/order/order-notice/order-notice_3093e60.css,/static/nodejs-zbj-i-web/widget/order/top-banner/top-banner_a7bb7d8.css,/static/nodejs-zbj-i-web/widget/order/order/order_36e4142.css,/static/nodejs-zbj-i-web/widget/order/pagnation/pagnation_231500b.css,/static/nodejs-zbj-i-web/widget/order/industry-rec/industry-rec_56a4655.css,/static/nodejs-zbj-i-web/widget/common/loading-holder/loading-holder_f425c0b.css,/static/nodejs-zbj-i-web/widget/common/recommend/recommend_ae65445.css,/static/nodejs-zbj-i-web/widget/newuser-get/newuser-get_56f76d5.css,/static/nodejs-zbj-i-web/widget/redpack-get/redpack-get_7fbb0a3.css" />
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
	src="//as.zbjimg.com/static/nodejs-zbj-i-web/seajs-config_b9a5709.js"></script>
<script type="text/javascript"
	src="//utopiacs.zbj.com/module-version.js"></script>
<script type="text/javascript"
	src="//as.zbjimg.com/rake-component/fe-common/utopia-arale-seajs-config/index.js"></script>
</head>
<body style="background-color: white;">
	<div class='sub'>
		<div class='menu' >

			<dl>
				<dt>
					<i class=' menu-icon1 menu-icon '></i>交易管理
				</dt>

				<dd>
					<a class='J_menuItem '  href='BusiManage/facilitatortradingList.action' data-linkid='10132975'
						target='_self'>我的订单</a>

				</dd>

				<dd>
					<a class='J_menuItem ' href='BusiManage/serverBidsList.action' data-linkid='10132976'
						target='_self'>我的投标</a>

				</dd>

				<dd>
					<a class='J_menuItem ' href='/bill' data-linkid='10132977'
						target='_self'>我的联盟</a>

				</dd>

			</dl>

			<dl>
				<dt>
					<i class=' menu-icon2 menu-icon '></i>我的作品库
				</dt>

				<dd>
					<a class='J_menuItem ' href='BusiManage/MyforegroundList.action'
						data-linkid='10132978'
						data-extra-path='/collection-service,/collection-task'
						target='_self'>我发布的作品</a>

				</dd>

			</dl>

			<dl>
				<dt>
					<i class=' menu-icon3 menu-icon '></i>账户管理
				</dt>

				<dd>
					<a class='J_menuItem J_accountLink' href='BusiManage/Individualcenter.action'
						data-linkid='10132981' target='_blank'>我的账户</a>

				</dd>

				<dd>
					<a class='J_menuItem '  href='BusiManage/facilitatorCreditList.action'
						data-linkid='10157962' target='_blank'>我的信用</a>

				</dd>
			</dl>

			<dl>
				<dt>
					<i class=' menu-icon4 menu-icon '></i>客户服务
				</dt>

				<dd>
					<a class='J_menuItem ' href='/refundlist' data-linkid='10132984'
						target='_self'>退款管理</a>

				</dd>

				<dd>
					<a class='J_menuItem '
						href='/tradereportlist?type=2&#38;direction=2&#38;page=1'
						data-linkid='10132985' data-extra-path='/tradereportlist'
						target='_self'>维权管理</a>

				</dd>

				<dd>
					<a class='J_menuItem '
						href='/commenreportlist?type=1&#38;direction=2&#38;page=1'
						data-linkid='10132986' data-extra-path='/commenreportlist'
						target='_self'>举报管理</a>
				</dd>

			</dl>
		</div>
	</div>

</body>
</html>