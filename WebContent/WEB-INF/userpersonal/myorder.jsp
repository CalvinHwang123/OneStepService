<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的订单</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@include file="../includeLeft.jsp"%>

	<div class='order-wrap'>
		<div class='top-nav-wrap order-top-nav J-state' data-state='0'
			id='utopia_widget_6'></div>

		<div class='order-top-banner' id='utopia_widget_7'>
			<div class='top-banner-tips'></div>
			<div class='top-banner-cont'></div>
		</div>
		<div class='order-bg'>
			<div class='options'>
				<h2>我的订单</h2>
<!-- 								<ul> -->
<!-- 									<li class='order'>订单</li> -->
<!-- 									<li class='sum'>金额</li> -->
<!-- 									<li class='source'><select class='J-source'> -->
<!-- 											<option value='' selected='selected'>全部</option> -->
<!-- 											<option value='0'>猪八戒</option> -->
<!-- 											<option value='1'>天蓬网</option> -->
<!-- 									</select></li> -->
<!-- 									<li class='trade-model'>交易模式</li> -->
<!-- 									<li class='order-state'>订单状态</li> -->
<!-- 									<li class='order-options'>订单操作</li> -->
<!-- 								</ul> -->
			</div>
			<div class='order-details-wrap order-item J-order-item'
				data-categoryid='1874'>
				<div class='order-details'>
					<table class="table table-hover">
<!-- 						<thead> -->
<!-- 							<tr> -->
<!-- 								<th>名称</th> -->
<!-- 								<th>城市</th> -->
<!-- 								<th>邮编</th> -->
<!-- 							</tr> -->
<!-- 						</thead> -->
						<tbody>
							<tr>
								<td>Tanmay</td>
								<td>Bangalore</td>
								<td>560001</td>
							</tr>
							<tr>
								<td>Sachin</td>
								<td>Mumbai</td>
								<td>400003</td>
							</tr>
							<tr>
								<td>Uma</td>
								<td>Pune</td>
								<td>411027</td>
							</tr>
						</tbody>
					</table>

				</div>


				<div class='J-recommend clearfix adv-content'>
					<div class='search-recommend' data-name='gz-order-recommend'
						data-params='{"size":"6","orderId":"13580780"}' data-rowsize='6'
						data-top='10' data-left='10' data-width='140'
						data-callback='callback'></div>
				</div>

			</div>


		</div>
		<div class='cover hide'></div>

		<script>
utopia.arrived({uid:'utopia_widget_8', js:["@fe-common/utopia-lazyload","widget/components/tip/tip.js"], entry:'widget/order/order/order.js'});
</script>

		<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_10', js:[], entry:function(){{var t=$(".J-pagenation");$(".J-state")}t.on("click","a",function(t){var a=$(t.currentTarget);if("javascript:;"!==a.attr("href")&&"clicked"!==a.attr("clicked")){a.attr("clicked","clicked");var e=a.attr("href"),r=$(".J-source").val(),c=($(".J-trade-model").val(),$(".J-state").data("state"));a.attr("href",e+="&source="+r+"&state="+c)}})}});
//]]></script>
	</div>

	<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_11', js:[], entry:function(){function t(){{var t=$(".word-scroll"),n=t.find(".word-item"),e=0;setInterval(function(){e=-n.first().width(),t.stop().animate({left:e},300,function(){t.css({left:0}),t.append(t.find(".word-item").eq(0))})},5e3)}}var n=function(t,n){function e(t,n){return String(t).replace(n||/&(?!#\d+;|#x[\da-f]+;|[a-z]+;)|[<"]/gi,function(t){return"&#"+t.charCodeAt()+";"})}function r(t,n,e){try{return e?t[n].apply(t,e):t[n]}catch(r){return r}}Object.keys||(Object.keys=function(t){var n=[];for(var e in t)n.push(e);return n});var i=("window"in t?t:this).window,a=("data"in t?t:this).data,n=n||[];n.push("<ul class='clearfix'>\n");for(var s=a,c=0,d=(s=s instanceof Array?s:"object"==typeof s?Object.keys(s):Array(s)).length-1;d>=c;c++){var l=s[c];n.push("\n<li class='s-item ",e(c===d?"noborder":"",/[&<']/g),"'>\n\n\n\n\n\n\n<div class='s-item-content'>\n<div class='s-item-title text-overflow'>\n<a href='//baike.",e(encodeURI(r(r(i,"ZBJInfo"),"baseURI")),/[&<']/g),"/article/",e(encodeURI(r(l,"id")),/[&<']/g),"' target='_blank' data-linkid='10146058'");var o=r(l,"title");null!=o&&n.push(" title='",e(o,/[&<']/g),"'"),n.push(">【",e(r(l,"title"),/[&<]/g),"】</a>\n</div>\n<div class='s-item-description'>\n",e(r(l,"describe"),/[&<]/g),"\n</div>\n</div>\n</li>\n")}return n.push("\n</ul>"),n.join("")},e=function(t,n){function e(t){return"&#"+t.charCodeAt()+";"}function r(t,n,e){try{return e?t[n].apply(t,e):t[n]}catch(r){return r}}Object.keys||(Object.keys=function(t){var n=[];for(var e in t)n.push(e);return n});var i=("data"in t?t:this).data,n=n||[];n.push("<div class='hot-wrap clearfix'>\n<div class='title'>\n热搜词：\n</div>\n<div class='word-box'>\n<div class='word-scroll'>\n");for(var a=i,s=0,c=(a=a instanceof Array?a:"object"==typeof a?Object.keys(a):Array(a)).length-1;c>=s;s++){var d=a[s];n.push("\n<a");var l=encodeURI(r(d,"url"));null!=l&&n.push(" href='",String(l).replace(/[&<']/g,e),"'"),n.push(" target='_blank' class='word-item' data-linkid='10175384'>",String(r(d,"title")).replace(/[&<]/g,e),"</a>\n")}return n.push("\n</div>\n</div>\n</div>"),n.join("")},r=$(".industry-rec");$.ajax({url:"/ajax/baikescroll",type:"get",data:{size:3},success:function(i){if(i.success){var i=i.data,a=i.tips,s=i.categorys;a&&a.list.length>0&&r.find("#J_irList").html(n({data:a.list})),s&&s.length>0&&(r.find(".hot-search").html(e({data:s})),t())}}})}});
//]]></script>
	<div data-linkid='10133052'>

		<script>/*<![CDATA[*/ 
 utopia.arrived({uid:'utopia_widget_13', js:[], entry:function(){var e=function(e,r){function n(e){return"&#"+e.charCodeAt()+";"}Object.keys||(Object.keys=function(e){var r=[];for(var n in e)r.push(n);return r});for(var t=(("baseURI"in e?e:this).baseURI),o=(("list"in e?e:this).list),r=r||[],a=o,c=0,s=(a=a instanceof Array?a:"object"==typeof a?Object.keys(a):Array(a)).length-1;s>=c;c++){var i=a[c];r.push("\n<li><a href='//js.",String(encodeURI(t)).replace(/[&<']/g,n),"/recomment/show?kw=",String(encodeURI(i)).replace(/[&<']/g,n),"&amp;fr=gzzx_recomforu_cate_foot' target='_blank' data-linkid='10176014'>",String(i).replace(/[&<]/g,n),"</a></li>\n")}return r.join("")},r=$(".r-category .category-list");$.ajax({url:"/recommend/getHotCategories",method:"get",success:function(n){n.success&&r.append(e({list:n.data,baseURI:window.ZBJInfo.baseURI}))},error:function(){console.log("获取热门推荐类目失败!")}}),seajs.use("fe-search/utopia-search-recommend-res"),window.recCb=function(e){e.status&&$(".recommend").removeClass("hide")}}});
//]]></script>
	</div>


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

	<%@include file="/end.jsp"%>
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