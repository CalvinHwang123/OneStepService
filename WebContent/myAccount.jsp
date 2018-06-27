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
<title>服务商中心</title>
<script type='text/javascript'>
window.ZBJInfo = {
baseURI: "zbj.com", 
pageDomain: "zbj.com",
staticLibURI: "//as.zbjimg.com", 
asStaticLibURI: "//as.zbjimg.com",
qiniuUploadTokenUrl: "//rms.zbj.com",
runtime: "product",
iframeDomain: "zbj.com",
bbj: true
};
</script>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-i-web/static/common/index_bde6f85.css,/static/nodejs-zbj-i-web/static/common/arale-dilog_1c1b1cf.css,/static/nodejs-zbj-i-web/static/common/calendar_8196da7.css,/static/nodejs-zbj-i-web/widget/common/banner/banner_39ac84c.css,/static/nodejs-zbj-i-web/widget/common/nav1/nav1_30895b9.css,/static/nodejs-zbj-i-web/widget/home/content-banner/content-banner_0525934.css,/static/nodejs-zbj-i-web/widget/common/sub/sub_21753aa.css,/static/nodejs-zbj-i-web/widget/order/order-notice/order-notice_3093e60.css,/static/nodejs-zbj-i-web/widget/order/top-banner/top-banner_a7bb7d8.css,/static/nodejs-zbj-i-web/widget/order/order/order_36e4142.css,/static/nodejs-zbj-i-web/widget/order/pagnation/pagnation_231500b.css,/static/nodejs-zbj-i-web/widget/order/industry-rec/industry-rec_56a4655.css,/static/nodejs-zbj-i-web/widget/common/loading-holder/loading-holder_f425c0b.css,/static/nodejs-zbj-i-web/widget/common/recommend/recommend_ae65445.css,/static/nodejs-zbj-i-web/widget/newuser-get/newuser-get_56f76d5.css,/static/nodejs-zbj-i-web/widget/redpack-get/redpack-get_7fbb0a3.css" />
<link rel="stylesheet" type="text/css"
	href="//as.zbjimg.com/??/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_80a3c8b.css,/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_dec9231.css" />
<meta name="referrer" content="always">
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
	<%@ include file="/head.jsp"%>
	<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_1', js:[], entry:function(){$(function(){var n=function(n,e){function a(n){return"&#"+n.charCodeAt()+";"}function r(n,e,a){try{return a?n[e].apply(n,a):n[e]}catch(r){return r}}var t=("headerBanner"in n?n:this).headerBanner,e=e||[];if(t){e.push("\n<a class='header-top-banner' target='_blank'");var i=encodeURI(r(t,"url"));null!=i&&e.push(" href='",String(i).replace(/[&<']/g,a),"'"),e.push(" data-linkid='10157953'>\n<span class='top-banner-box'>\n<img");var i=encodeURI(r(t,"imgPath"));null!=i&&e.push(" src='",String(i).replace(/[&<']/g,a),"'"),e.push("/>\n</span>\n</a>\n")}return e.join("")};$.ajax({url:"/ajax/getHeaderBanner",type:"get",success:function(e){e&&($("body").prepend(n({headerBanner:e})),$(".header-top-banner").animate({"max-height":"100px"},800))}})})}});
//]]></script>
		<div class='header-top-warp-v1' id='headerTopWarpV1'>
		<div class='header-top'>
			<ul class='header-top-left'>
				<li class='item-left hover-control'><script>
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
					<div class='hover-title J_local-box'>
						<div class='location-icon '>
							<span class='t1' id='headerTopCityName'> </span>
						</div>
					</div>
					<div class='hover-panel'></div></li>

			</ul>
			<div class='header-top-right'></div>
			<script>seajs.use(["//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_f550d0f.js"]);</script>
		</div>
		<script>seajs.use(["//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/right-toolbar-v1/right-toolbar-v1_70e7733.js"]);</script>
	</div>
	<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_2', js:["widget/components/tip/tip.js"], entry:function(e){!function(){function a(){var e=$(".check-balance-yjf"),a="//u."+ZBJInfo.baseURI+"/pay/getUserYJFBalance?jsonpcallback=jQuery17103550033176820633_1497780555665&_=1497780653149";$.ajax({url:a,type:"get",dataType:"jsonp",jsonp:"jsonpcallback",success:function(a){1===a.state?(e.siblings("label").html(" <a href='//u."+ZBJInfo.baseURI+"/pay/showfinance' target='_blank'>￥"+a.amount+"</a>"),e.attr("queried",!0)):-1===a.state&&(e.siblings("label").text("没有开通易极付"),e.attr("queried",!0)),e.remove()},error:function(){e.remove(),e.siblings("label").text("未查到数据")}})}window.ZBJInfo.baseURI||"zbj.com",(new Date).getTime();seajs.use("fe-module/utopia-module-task-pub",function(e){e&&e.taskPub&&$(".employer-nav-pub-task").off("click").on("click",function(a){var t=$(this).data("linkid");a.preventDefault(),e.taskPub.init({pubTaskTag:t})})});var t=e("widget/components/tip/tip"),n={$cur:$(".check-balance"),data:{},bind:function(){this.$cur.on("click",function(){"false"===$(this).attr("has-wallet")&&t.tips("error","您还未开通猪八戒账户，请先开户")})},ajaxApi:function(){var e=this,a="//u."+ZBJInfo.baseURI+"/pay/getBalance";$.ajax({url:a,type:"get",dataType:"jsonp",jsonp:"jsonpcallback",success:function(a){var t=e.$cur;1===a.state?(t.attr("href","https://wallet."+ZBJInfo.baseURI+"/enterprise-web/my/home.htm"),t.attr("has-wallet",!0)):-1===a.state&&(t.attr("has-wallet",!1),t.attr("href","//u."+ZBJInfo.baseURI+"/pay/index"))},error:function(e){console.log(e)}})}};n.ajaxApi(),n.bind(),$(".check-balance-yjf").on("click",function(e){e.preventDefault(),$(this).attr("queried")||a()}),$(".employer-nav-search-btn").on("click",function(){var e=$(".employer-nav-search-form").data("link"),a=$.trim($(".employer-nav-search-input").val()),t=$(".employer-nav-search-input").attr("placeholder");window.open(a?e+a:e+t)}),seajs.use(["fe-employer/utopia-module-skey-res"],function(e){e.searchCompent.init({serviceFr:{linkid:"searchbox-gzzx-commend-",fr:"gzzx_top_search_Recommend"},hotKeyFr:{linkid:"searchbox-gzzx-searchtip-",fr:"gzzx_top_search_Hot"},recFr:{linkid:"searchbox-gzzx-hotword-",fr:"gzzx_top_search_HotWord"}})})}()}});
//]]></script>

	<div class='wrapper'>
		<script>
utopia.arrived({uid:'utopia_widget_3', js:[], entry:function(){}});
</script>

		<div class='sub'>
			<div class='menu'>
				<dl>
					<dt>
						<i class=' menu-icon1 menu-icon '></i>交易管理
					</dt>

					<dd>
						<a class='J_menuItem ' href='myOrder.jsp' data-linkid='10132975'
							target='_self'>我的订单</a>

					</dd>

					<dd>
						<a class='J_menuItem ' href='/comment/tobe' data-linkid='10132976'
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
						<a class='J_menuItem ' href='/collection-provider'
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
						<a class='J_menuItem J_accountLink' href='javascript:;'
							data-linkid='10132981' target='_blank'>我的账户</a>

					</dd>

					<dd>
						<a class='J_menuItem ' href='//club.zbj.com/zbRecord'
							data-linkid='10157962' target='_blank'>我的积分</a>

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
		<script>/*<![CDATA[*/
utopia.arrived({
	uid:'utopia_widget_4',
	js:[], 
	entry:function(){
		var e=window.location.pathname;
		$(".J_menuItem").each(function(a,t){
			var n=$(t).attr("href"),
			o=$(t).data("extra-path");
			return"/"===e?!1:e.indexOf(n)>-1||(o&&o.indexOf(e))>-1?($(t).addClass("cur"),!1):void 0
					}),
		$.ajax({
			url:"//u."+ZBJInfo.baseURI+"/pay/getBalance",
			type:"get",dataType:"jsonp",
			jsonp:"jsonpcallback",
			success:function(e){
				var a=$(".J_accountLink");
				1===e.state?a.attr("href","https://wallet."+ZBJInfo.baseURI+"/enterprise-web/my/home.htm"):-1===e.state&&a.attr("href","//u."+ZBJInfo.baseURI+"/pay/index")},
				error:function(){
					$(".J_accountLink").attr("href","//u."+ZBJInfo.baseURI+"/pay/index")}}),$(".sub .J-s-ipt").on("keyup",function(e){var a=$(this).val();if(a&&13===e.keyCode){
						var t="//baike."+ZBJInfo.baseURI+"/list?fr=gzzxsousuolan&kw="+a;window.open(t)}});
						var a=setInterval(function(){if($("#moduleRightSidebar .hover-icon-menu5").length){clearInterval(a);
						var e=['<a class="item-ctx hover-icon-baike" href="//baike.zbj.com" target="_blank" data-linkid="10175383">','<div class="ctx-def">百科</div>','<div class="ctx-hover"></div>','<span class="ctx-hover-txt">免费科学估价</span>',"</a>"].join("");
						$("#moduleRightSidebar .hover-icon-menu5").before(e)}},200)}});
//]]></script>

		<div class='main clearfix'>


			<div class='order-notice-cent hide' id='utopia_widget_5'></div>
			<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_5', js:[], entry:function(){var t=function(t,e){function i(t){return"&#"+t.charCodeAt()+";"}function n(t,e,i){try{return i?t[e].apply(t,i):t[e]}catch(n){return n}}Object.keys||(Object.keys=function(t){var e=[];for(var i in t)e.push(i);return e});var r=("list"in t?t:this).list,e=e||[];e.push("<dl>\n<dt></dt>\n<dd>\n<div>\n");for(var o=r,d=0,c=(o=o instanceof Array?o:"object"==typeof o?Object.keys(o):Array(o)).length-1;c>=d;d++){var a=o[d];if(e.push("\n"),n(a,"title")){e.push("\n<p><a");var s=encodeURI(n(a,"url"));null!=s&&e.push(" href='",String(s).replace(/[&<']/g,i),"'"),e.push(" target='_blank' data-linkid='10178007'>",String(n(a,"title")).replace(/[&<]/g,i),"</a></p>\n")}e.push("\n")}return e.push("\n</div>\n</dd>\n</dl>"),e.join("")},e={getNoticeAjax:function(){return $.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:81,top:100,industryId:-1}}})},renderPage:function(){var t=this;this.getNoticeAjax().always(function(e){e.success&&e.data&&e.data.length>0?($(t.orderNoticeCent).html(t.tpl({list:e.data})).removeClass("hide"),e.data.length>1&&t.noticeScroll()):t.orderNoticeCent.remove()})},noticeScroll:function(){var t=this;this.timer=setInterval(function(){$(t.orderNoticeDiv).stop().animate({top:"-50px"},t.scrollTime,function(){$(t.orderNoticeDiv).append($(t.orderNoticeP).eq(0)).css("top","0px")})},this.animateTime)},bindEvent:function(){$(this.body).on("mouseover",this.orderNoticeP,function(){this.timer&&clearInterval(this.timer)}.bind(this)),$(this.body).on("mouseout",this.orderNoticeP,function(){this.noticeScroll()}.bind(this))},init:function(){var e={orderNoticeCent:".order-notice-cent",tpl:t,orderNoticeDiv:".order-notice-cent dd div",orderNoticeP:".order-notice-cent dd div p",timer:null,body:"body",animateTime:4e3,scrollTime:500};$.extend(this,e),this.renderPage(),this.bindEvent()}};e.init()}});
//]]></script>
			<!-- 右部 -->
<section id="getintouch" class="flipInX animated">
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>我的账号</span>
            </h1>
        </div>
        <div class="container">
            <div class="form-front" style="position: relative; top: 0px; left: 0px; z-index: 1;"><form class="contact" action="#" method="post" id="form"><input name="hid_dynamic" value="name,email,phone,message" type="hidden">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                       	 用户名</label>
                </div>
                <div class="ctrl">
                    <input id="name" name="name" value="${forelogin.userType}" data-required="true" data-validation="text" data-msg="Invalid Name" placeholder="Ex: John Donga" type="text">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        E-Mail</label>
                </div>
                <div class="ctrl">
                    <input id="email" name="email" data-required="true" data-validation="email" data-msg="Invalid E-Mail" placeholder="Ex: youremail@domain.com" type="text">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="email">
                        Phone</label>
                </div>
                <div class="ctrl">
                    <input id="phone" name="phone" data-required="true" data-validation="custom" data-msg="Invalid Phone #" placeholder="Ex: 111-258-444" type="text">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="subject">
                        Subject</label>
                </div>
                <div class="ctrl">
                    <input name="subject" id="subject" placeholder="Ex: Quote for Project" type="text">
                </div>
            </div>
            <div class="row  clearfix">
                <div class="span10 offset2">
                    <input name="submit" id="submit" class="submit" value="Send Message" type="submit">
                </div>
            </div>
            </form></div><div class="form-back" style="position: relative; top: 0px; left: 0px; z-index: 0; display: none;"><span id="msg-close">Close</span><div id="validation" style="display: none;">
            </div><div id="success" style="display: none;">
                Your E-Mail has been sent successfully!</div><div id="error" style="display: none;">
                Unable to send e-mail at the moment, please try later.</div></div>
            
            
            
        </div>
    </section>
			<!-- 右部 -->
		</div>
	</div>

	<div class='new-user-cent hide' id='utopia_widget_15'></div>
	<div class='new-user-dialog hide'>
		<p>
			<input type='checkbox' id='new-user-checkbox' /><label
				for='new-user-checkbox'>下次不再提醒</label><span
				class='icon-guanbi dialog-close' data-linkid='10177814'></span>
		</p>
		<div class='new-user-img'></div>
	</div>
	<div data-linkid='10177813' id='newUserDialogNum'></div>
	<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_15', js:["widget/components/log/log.js"], entry:function(e){var n=function(e,n){function t(e){return"&#"+e.charCodeAt()+";"}function i(e,n,t){try{return t?e[n].apply(e,t):e[n]}catch(i){return i}}var s=("data"in e?e:this).data,n=n||[];n.push("<a");var a=encodeURI(i(s,"url"));null!=a&&n.push(" href='",String(a).replace(/[&<']/g,t),"'"),n.push(" target='_blank' data-linkid='10177811'><img");var a=encodeURI(i(s,"imgPath"));return null!=a&&n.push(" src='",String(a).replace(/[&<']/g,t),"'"),n.push("/></a>"),n.join("")},t=e("widget/components/log/log"),i={_initData:function(){this._getEmployerRegisterMsg=$.ajax({url:"/employerRegisterMsg",method:"get"}),this._getRecomd=$.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:79,top:1,industryId:-1}}})},_bindEvent:function(){var e=this;this.dialogCloseBtn.on("click",function(){e.newUserCent.remove(),e.newUserDialog.remove();var n=$(this).data("linkid"),t=0;e.newUserCheckbox.is(":checked")&&(t=1),e.linkLog.sendLog({linkid:n}),e._closeAjax(t)})},_closeAjax:function(e){$.ajax({url:"/updateRegisterMsg",method:"get",data:{msgStatus:e}})},_renderPage:function(){var e=this;this._isIndex&&this._isNewShow&&this._renderImg(),this._isIndex||this._getEmployerRegisterMsg.always(function(n){n.success&&n.data&&e._renderImg()})},_renderImg:function(){var e=this;this._getRecomd.always(function(n){n.success&&n.data&&n.data.length>0?(e.newUserWrap.html(e.tpl({data:n.data[0]})),e.newUserCent.removeClass("hide"),e.newUserDialog.removeClass("hide"),e._sendLog()):(e.newUserCent.remove(),e.newUserDialog.remove())})},_sendLog:function(){var e=this.dialogNum.data("linkid");this.linkLog.sendLog({linkid:e})},_init:function(){var e={newUserDialog:$(".new-user-dialog"),_isIndex:$(".new-user-dialog").data("isindex"),_isNewShow:$(".new-user-dialog").data("newshow"),_getEmployerRegisterMsg:null,_getRecomd:null,newUserWrap:$(".new-user-img"),tpl:n,newUserCent:$(".new-user-cent"),dialogCloseBtn:$(".new-user-dialog .dialog-close"),newUserCheckbox:$("#new-user-checkbox"),dialogNum:$("#newUserDialogNum"),linkLog:t};$.extend(this,e),this._initData(),this._renderPage(),this._bindEvent()}};i._init()}});
//]]></script>

	<div class='redpack-rec-mask hide' id='utopia_widget_16'></div>


	<script>seajs.use(["//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/footer-v1/footer-v1_c450da5.js"]);</script>
	<script>/*<![CDATA[*/

(function (j) {
var h = j.sdkUrl, a = j.name, d = this, g = d.document, f = null, e = null;
d.AGENT20170621 = a;
d[a] = d[a] || function (i) {
return function () {
(d[a]._agenti = d[a]._agenti || []).push([i, arguments])
}
};
var b = ["track", "trackSignup", "userIdentify"];
for (var c = 0; c < b.length; c++) {
d[a][b[c]] = d[a].call(null, b[c])
}
if (!d[a].lt) {
f = g.createElement("script"), e = g.getElementsByTagName("script")[0];
f.async = true;
f.src = h;
e.parentNode.insertBefore(f, e);
d[a].lt = 1 * new Date();
d[a].para = j
}
})({
sdkUrl: location.protocol + "//v2.web.ue.zhubajie.la/api/v1/agent/info/S5H65S9NGW6NG5DRG6GRS61R4NH6GGDW/34",
sendLimit: 1,
showLog: false,
name: "ZBJPCGZZX",
autoTrack: true,
apiHost: location.protocol + "//v2.web.ue.zhubajie.la",
appToken: "34"
});

var orderTimer = null;
document.domain = ZBJInfo.iframeDomain;
$('#external-frame').on('load', function () {
console.log("load.....");
if (orderTimer) {
clearInterval(orderTimer);
}
setIframe(true);
orderTimer = setInterval(setIframe, 500);
});
function setIframe(fr) {
var iframe = document.getElementById('external-frame');
if (!iframe) return;
var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
if (iframeWin.document.body) {
if (fr) {
iframe.height = 0
}
iframe.height = iframeWin.document.body.scrollHeight || iframeWin.document.documentElement.scrollHeight;
}
}

var seajsArr = [
"fe-module/utopia-module-pubtask-bottom",
"widget/components/log/log",
"fe-common/utopia-cookie@0.0.1"
]
seajs.use(seajsArr, function (PubTaskBottom, Log, Cookie) {

if (PubTaskBottom) {
new PubTaskBottom({});
}

if (Log) {
$('body').on('click', '[data-linkid]', function () {
var linkid = $(this).data('linkid');
if (!linkid) return;
Log.sendLog({linkid: linkid});
});
}

if (Cookie.get('userid')) {
$.ajax({
url: '//im.' + ZBJInfo.baseURI + '/api/GetImConfig',
dataType: 'jsonp',
jsonp: 'jsonpcallback',
success: function (data) {
var webIMId = 'fe-platform/utopia-webim-single@' + data.singleVersion;
seajs.use(webIMId, function (webIM) {
webIM.init(data);
});
}
})
}

})

$.ajax({
url: "//oc." + window.ZBJInfo.baseURI + "/component",
type: "get",
dataType: "jsonp",
jsonp: "jsonpcallback",
success: function (json) {
if (json.success) {
var components = json.data.components,
name = "utopia-order-consultant-res",
cName = components[name];
if (cName) {
seajs.use("fe-task/" + name + "@" + cName, function (componentObj) {
var consultant = new componentObj({
meetId: 1,
sourceId: 165,
quickPubBoxClass: '.quick-pub-box-horizontal'
})
consultant.init()
});
}
}
}
});

if (!Function.prototype.bind) {
Function.prototype.bind = function (oThis) {
if (typeof this !== "function") {
throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");
}
var aArgs = Array.prototype.slice.call(arguments, 1),
fToBind = this,
fNOP = function () {
},
fBound = function () {
return fToBind.apply(this instanceof fNOP && oThis ? this : oThis,
aArgs.concat(Array.prototype.slice.call(arguments)));
};
fNOP.prototype = this.prototype;
fBound.prototype = new fNOP();
return fBound;
};
}
//]]></script>
</body>
</html>