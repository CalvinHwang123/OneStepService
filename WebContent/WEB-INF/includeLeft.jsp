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
<title>我的订单-雇主中心</title>
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
<body>
	<div class="header-top">
		<ul class="header-top-left">
			<li class="item-left hover-control"><script>
(function () {
function gGetCookie(name) {
var value = document.cookie;
var start = value.indexOf(" " + name + "=");
if (start == -1) {
start = value.indexOf(name + "=");
if (start > 0) {
return null;
}
}
if (start == -1) {
return null;
}
start = value.indexOf("=", start) + 1;
var end = value.indexOf(";", start);
if (end == -1) {
end = value.length;
}
return decodeURIComponent(value.substring(start, end));
}
window.headerTopInfo = {
gLocalizedCityId: gGetCookie('local_city_id'),
gLocalizedCityName: gGetCookie('local_city_name')
}
})();
</script>
				<div class="hover-title J_local-box">
					<div class="location-icon ">
						<span class="t1" id="headerTopCityName"> </span>
					</div>
				</div>
				<div class="hover-panel"></div></li>

		</ul>
		<div class="header-top-right"></div>
		<script>seajs.use(["//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_f550d0f.js"]);</script>
	</div>
	<div class='wrapper'>
		<script>
utopia.arrived({uid:'utopia_widget_3', js:[], entry:function(){}});
</script>

		<div class='sub'>
		<div class="menu">
				<dl>
							<dt>
								<i class=' menu-icon1 menu-icon '></i>交易管理
							</dt>

							<dd>
								<a class='J_menuItem ' href='BusiManage/userPersonal.action' data-linkid='10132975'
									target='_self'>我的需求</a>

							</dd>
							
							<dd>
								<a class='J_menuItem ' href='/order' data-linkid='10132975'
									target='_self'>我购买的作品</a>

							</dd>
							
							<dd>
								<a class='J_menuItem ' href='/comment/tobe'
									data-linkid='10132976' target='_self'>我的评价</a>

							</dd>

							<dd>
								<a class='J_menuItem ' href='/bill' data-linkid='10132977'
									target='_self'>我的发票</a>

							</dd>

						</dl>

						<dl>
							<dt>
								<i class=' menu-icon2 menu-icon '></i>我的服务商库
							</dt>

							<dd>
								<a class='J_menuItem ' href='BusiManage/userServiceList.action'>我收藏的</a>

							</dd>

							<dd>
								<a class='J_menuItem ' href='BusiManage/cooperationList.action' >我合作过的</a>

							</dd>

						</dl>

						<dl>
							<dt>
								<i class=' menu-icon3 menu-icon '></i>账户管理
							</dt>

							<dd>
								<a class='J_menuItem ' href='BusiManage/selectUsersByAcc.action'
									 >我的信息</a>

							</dd>

							<dd>
								<a class='J_menuItem ' href='BusiManage/tradingList.action' >我的交易</a>

							</dd>

							<dd>
								<a class='J_menuItem ' href='BusiManage/creditList.action'>我的信用</a>

							</dd>
								<dd>
								<a class='J_menuItem ' href='//club.zbj.com/zbRecord'
									data-linkid='10157962' target='_blank'>我的余额</a>

							</dd>
								<dd>
								<a class='J_menuItem ' href='//club.zbj.com/zbRecord'
									data-linkid='10157962' target='_blank'>修改密码</a>

							</dd>

						</dl>
					</div>
	</div>
	<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_4', js:[], entry:function(){var e=window.location.pathname;$(".J_menuItem").each(function(a,t){var n=$(t).attr("href"),o=$(t).data("extra-path");return"/"===e?!1:e.indexOf(n)>-1||(o&&o.indexOf(e))>-1?($(t).addClass("cur"),!1):void 0}),$.ajax({url:"//u."+ZBJInfo.baseURI+"/pay/getBalance",type:"get",dataType:"jsonp",jsonp:"jsonpcallback",success:function(e){var a=$(".J_accountLink");1===e.state?a.attr("href","https://wallet."+ZBJInfo.baseURI+"/enterprise-web/my/home.htm"):-1===e.state&&a.attr("href","//u."+ZBJInfo.baseURI+"/pay/index")},error:function(){$(".J_accountLink").attr("href","//u."+ZBJInfo.baseURI+"/pay/index")}}),$(".sub .J-s-ipt").on("keyup",function(e){var a=$(this).val();if(a&&13===e.keyCode){var t="//baike."+ZBJInfo.baseURI+"/list?fr=gzzxsousuolan&kw="+a;window.open(t)}});var a=setInterval(function(){if($("#moduleRightSidebar .hover-icon-menu5").length){clearInterval(a);var e=['<a class="item-ctx hover-icon-baike" href="//baike.zbj.com" target="_blank" data-linkid="10175383">','<div class="ctx-def">百科</div>','<div class="ctx-hover"></div>','<span class="ctx-hover-txt">免费科学估价</span>',"</a>"].join("");$("#moduleRightSidebar .hover-icon-menu5").before(e)}},200)}});
//]]></script>

	<div class='main clearfix'>
		<div class='order-notice-cent hide' id='utopia_widget_5'></div>
		<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_5', js:[], entry:function(){var t=function(t,e){function i(t){return"&#"+t.charCodeAt()+";"}function n(t,e,i){try{return i?t[e].apply(t,i):t[e]}catch(n){return n}}Object.keys||(Object.keys=function(t){var e=[];for(var i in t)e.push(i);return e});var r=("list"in t?t:this).list,e=e||[];e.push("<dl>\n<dt></dt>\n<dd>\n<div>\n");for(var o=r,d=0,c=(o=o instanceof Array?o:"object"==typeof o?Object.keys(o):Array(o)).length-1;c>=d;d++){var a=o[d];if(e.push("\n"),n(a,"title")){e.push("\n<p><a");var s=encodeURI(n(a,"url"));null!=s&&e.push(" href='",String(s).replace(/[&<']/g,i),"'"),e.push(" target='_blank' data-linkid='10178007'>",String(n(a,"title")).replace(/[&<]/g,i),"</a></p>\n")}e.push("\n")}return e.push("\n</div>\n</dd>\n</dl>"),e.join("")},e={getNoticeAjax:function(){return $.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:81,top:100,industryId:-1}}})},renderPage:function(){var t=this;this.getNoticeAjax().always(function(e){e.success&&e.data&&e.data.length>0?($(t.orderNoticeCent).html(t.tpl({list:e.data})).removeClass("hide"),e.data.length>1&&t.noticeScroll()):t.orderNoticeCent.remove()})},noticeScroll:function(){var t=this;this.timer=setInterval(function(){$(t.orderNoticeDiv).stop().animate({top:"-50px"},t.scrollTime,function(){$(t.orderNoticeDiv).append($(t.orderNoticeP).eq(0)).css("top","0px")})},this.animateTime)},bindEvent:function(){$(this.body).on("mouseover",this.orderNoticeP,function(){this.timer&&clearInterval(this.timer)}.bind(this)),$(this.body).on("mouseout",this.orderNoticeP,function(){this.noticeScroll()}.bind(this))},init:function(){var e={orderNoticeCent:".order-notice-cent",tpl:t,orderNoticeDiv:".order-notice-cent dd div",orderNoticeP:".order-notice-cent dd div p",timer:null,body:"body",animateTime:4e3,scrollTime:500};$.extend(this,e),this.renderPage(),this.bindEvent()}};e.init()}});
//]]></script>

		
</body>
</html>