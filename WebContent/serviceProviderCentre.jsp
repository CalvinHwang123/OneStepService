<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/head.jsp"%>
<body>

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

							<div class='hover-panel'></div></li>

			</ul>
			<div class='header-top-right'></div>
			<script>seajs.use(["//as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-top-v1/header-top-v1_f550d0f.js"]);</script>
			<div id='rightToolbarContainer'>
				<script>
window.rightToolbarData = {"menu":[{"title":"收藏","icon":"//tianpeng.zbjimg.com/tianpeng/task/收藏.png/origine/95268bb0-bd6c-466e-8f5f-e992d67187e6","iconHover":"//tianpeng.zbjimg.com/tianpeng/task/收藏2.png/origine/393068e7-1b84-455f-83a9-edbc4fcefc50","url":"http://i.zbj.com/collection-provider"},{"title":"咨询","icon":"//tianpeng.zbjimg.com/tianpeng/task/顾问1.png/origine/1696c6c6-eb29-4bc7-9eab-5d6067fb9ca9","iconHover":"//tianpeng.zbjimg.com/tianpeng/task/顾问2.png/origine/ada01d84-928b-45bc-85c9-301984fc75ec","url":"http://wen.zbj.com/"},{"title":"客服","icon":"//tianpeng.zbjimg.com/tianpeng/task/客服.png/origine/9deec122-d01d-4773-ad99-1dc8bfef5364","iconHover":"//tianpeng.zbjimg.com/tianpeng/task/客服2.png/origine/37d23391-b1d1-4f6a-95fa-8dd24b231c55","url":"http://help.zbj.com/main/service"},{"title":"反馈","icon":"//tianpeng.zbjimg.com/tianpeng/task/建议.png/origine/ccdae971-b3a9-40b9-abd1-a09701c4cd61","iconHover":"//tianpeng.zbjimg.com/tianpeng/task/建议2.png/origine/ef7a342a-ae5e-4340-8521-9b58788ab22c","url":"http://uenps.zbj.com/pcGroups?tid=19"}],"topBtnIcon":"//tianpeng.zbjimg.com/tianpeng/task/猜你喜欢-80x210.png/origine/aede9968-6c02-432b-822f-d7563f3cd638","topBtnUrl":"https://jinshi.zbj.com/special/hot?kw=微信小程序","btnIsOnline0":"1","btnIsOnline1":"1","btnIsOnline2":"1","btnIsOnline3":"1","btnIsOnline4":"1","btnIsOnline5":"1","btnIsOnline6":"1","btnIsOnline7":"1"};
</script>
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
							<a class='J_menuItem ' href='/order' data-linkid='10132975'
								target='_self'>我的订单</a>

							<div>

								<a href='/getAboutOrder?type=1' data-linkid='10178981' class=''>我的知识产权</a>

								<a href='/getAboutOrder?type=2' data-linkid='10178982' class=''>我的财税订单</a>

								<a href='/getAboutOrder?type=3' data-linkid='10178983' class=''>我的科技服务</a>

								<a href='/getAboutOrder?type=4' data-linkid='10178984' class=''>我的八戒云</a>

								<a href='/proprietaryorder' data-linkid='10185242' class=''>我的自营订单</a>

								<a href='/pakageorder' data-linkid='10185243' class=''>我的套餐订单</a>

							</div>

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
							<a class='J_menuItem ' href='/collection-provider'
								data-linkid='10132978'
								data-extra-path='/collection-service,/collection-task'
								target='_self'>我收藏的</a>

						</dd>

						<dd>
							<a class='J_menuItem ' href='/worked' data-linkid='10132979'
								target='_self'>我合作过的</a>

						</dd>

						<dd>
							<a class='J_menuItem ' href='//www.zbj.com/footprint/index'
								data-linkid='10132980' target='_blank'>我的足迹</a>

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
							<a class='J_menuItem ' href='/coupon' data-linkid='10132982'
								target='_self'>我的优惠券</a>

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
utopia.arrived({uid:'utopia_widget_4', js:[], entry:function(){var e=window.location.pathname;$(".J_menuItem").each(function(a,t){var n=$(t).attr("href"),o=$(t).data("extra-path");return"/"===e?!1:e.indexOf(n)>-1||(o&&o.indexOf(e))>-1?($(t).addClass("cur"),!1):void 0}),$.ajax({url:"//u."+ZBJInfo.baseURI+"/pay/getBalance",type:"get",dataType:"jsonp",jsonp:"jsonpcallback",success:function(e){var a=$(".J_accountLink");1===e.state?a.attr("href","https://wallet."+ZBJInfo.baseURI+"/enterprise-web/my/home.htm"):-1===e.state&&a.attr("href","//u."+ZBJInfo.baseURI+"/pay/index")},error:function(){$(".J_accountLink").attr("href","//u."+ZBJInfo.baseURI+"/pay/index")}}),$(".sub .J-s-ipt").on("keyup",function(e){var a=$(this).val();if(a&&13===e.keyCode){var t="//baike."+ZBJInfo.baseURI+"/list?fr=gzzxsousuolan&kw="+a;window.open(t)}});var a=setInterval(function(){if($("#moduleRightSidebar .hover-icon-menu5").length){clearInterval(a);var e=['<a class="item-ctx hover-icon-baike" href="//baike.zbj.com" target="_blank" data-linkid="10175383">','<div class="ctx-def">百科</div>','<div class="ctx-hover"></div>','<span class="ctx-hover-txt">免费科学估价</span>',"</a>"].join("");$("#moduleRightSidebar .hover-icon-menu5").before(e)}},200)}});
//]]></script>

			<div class='main clearfix'>


				<div class='order-notice-cent hide' id='utopia_widget_5'></div>
				<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_5', js:[], entry:function(){var t=function(t,e){function i(t){return"&#"+t.charCodeAt()+";"}function n(t,e,i){try{return i?t[e].apply(t,i):t[e]}catch(n){return n}}Object.keys||(Object.keys=function(t){var e=[];for(var i in t)e.push(i);return e});var r=("list"in t?t:this).list,e=e||[];e.push("<dl>\n<dt></dt>\n<dd>\n<div>\n");for(var o=r,d=0,c=(o=o instanceof Array?o:"object"==typeof o?Object.keys(o):Array(o)).length-1;c>=d;d++){var a=o[d];if(e.push("\n"),n(a,"title")){e.push("\n<p><a");var s=encodeURI(n(a,"url"));null!=s&&e.push(" href='",String(s).replace(/[&<']/g,i),"'"),e.push(" target='_blank' data-linkid='10178007'>",String(n(a,"title")).replace(/[&<]/g,i),"</a></p>\n")}e.push("\n")}return e.push("\n</div>\n</dd>\n</dl>"),e.join("")},e={getNoticeAjax:function(){return $.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:81,top:100,industryId:-1}}})},renderPage:function(){var t=this;this.getNoticeAjax().always(function(e){e.success&&e.data&&e.data.length>0?($(t.orderNoticeCent).html(t.tpl({list:e.data})).removeClass("hide"),e.data.length>1&&t.noticeScroll()):t.orderNoticeCent.remove()})},noticeScroll:function(){var t=this;this.timer=setInterval(function(){$(t.orderNoticeDiv).stop().animate({top:"-50px"},t.scrollTime,function(){$(t.orderNoticeDiv).append($(t.orderNoticeP).eq(0)).css("top","0px")})},this.animateTime)},bindEvent:function(){$(this.body).on("mouseover",this.orderNoticeP,function(){this.timer&&clearInterval(this.timer)}.bind(this)),$(this.body).on("mouseout",this.orderNoticeP,function(){this.noticeScroll()}.bind(this))},init:function(){var e={orderNoticeCent:".order-notice-cent",tpl:t,orderNoticeDiv:".order-notice-cent dd div",orderNoticeP:".order-notice-cent dd div p",timer:null,body:"body",animateTime:4e3,scrollTime:500};$.extend(this,e),this.renderPage(),this.bindEvent()}};e.init()}});
//]]></script>

				<div class='order-wrap'>
					<div class='top-nav-wrap order-top-nav J-state' data-state='0'
						id='utopia_widget_6'>


						<ul>

							<li class='nav-item item-curr'><a href='./order'>所有订单</a></li>

							<li class='nav-item '><a href='./order?state=1'>待托管赏金</a></li>

							<li class='nav-item '><a href='./order?state=2'>进行中</a></li>

							<li class='nav-item '><a href='./order?state=3'>待确认付款</a></li>

							<li class='nav-item '><a href='./order?state=4'>待评价</a></li>


							<div class='nav-bottom-line'></div>
						</ul>
					</div>

					<div class='order-top-banner' id='utopia_widget_7'>
						<div class='top-banner-tips'></div>
						<div class='top-banner-cont'></div>
					</div>
					<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_7', js:[], entry:function(){$.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:65,top:1,industryId:-1}},success:function(a){if(a.success&&a.data.length>0){var t=" <i class='icon-guanbi'></i><img src='"+a.data[0].imgPath+"' />";$(".top-banner-tips").append(t)}}}),$("body").on("click",".top-banner-tips i",function(a){$(this).parent().remove(),a.stopPropagation()}),$("body").on("click",".top-banner-tips img",function(){$(".top-banner-cont img").length||$.ajax({url:"/ajax/getRecomd",method:"get",data:{data:{shardid:66,top:1,industryId:-1}},success:function(a){if(a.success&&a.data.length>0){window.open(a.data[0].url);var t='<a href="'+a.data[0].url+'" target="_blank"><img src="'+a.data[0].imgPath+'"/></a>';$(".top-banner-cont").append(t),$(".top-banner-cont").animate({"max-height":"100px"},800,function(){$(".top-banner-tips").fadeOut(200)})}}})})}});
//]]></script>
					<script id='utopia_widget_8'>/*<![CDATA[*/
function setOrderTimeout(dom, endTime) {
if (!dom) return
var leftTime = endTime - new Date()
if (leftTime > 0) {
setInterval(function () {
currentTime = count_down(endTime)
if (currentTime != dom.innerText)
dom.innerText = currentTime;
}, 200)
}
}
function count_down(time_end) {
var time_now = new Date() 
time_now = time_now.getTime()
var time_distance = time_end - time_now 
var int_day, int_hour, int_minute, int_second
if (time_distance >= 0) {

int_day = Math.floor(time_distance / 86400000)
time_distance -= int_day * 86400000

int_hour = Math.floor(time_distance / 3600000)
time_distance -= int_hour * 3600000

int_minute = Math.floor(time_distance / 60000)
time_distance -= int_minute * 60000

int_second = Math.floor(time_distance / 1000)
if (int_day <= 0) {
int_day = ''
} else {
int_day += '天'
}
if (int_hour <= 0) {
int_hour = ''
} else {
int_hour += '小时'
}
if (int_minute <= 0) {
int_minute = ''
} else {
int_minute += '分钟'
}
if (int_second <= 0) {
int_second = ''
} else {
int_second += '秒'
}

if (int_hour < 10)
int_hour = '0' + int_hour

if (int_minute < 10)
int_minute = '0' + int_minute

if (int_second < 10)
int_second = '0' + int_second
return int_day + int_hour + int_minute + int_second
}
return ''
}

if (ZBJInfo) {
ZBJInfo.count = 0
}
//]]></script>
					<script
						src='https://sstj.zbj.com/service/recommend/component/config'></script>

					<input type='hidden' class='has-company' value='' /> <input
						type='hidden' class='has-industry' value='' /> <input
						type='hidden' name='categoryList'
						value='logo设计,网站建设,小程序,包装设计,营销,APP开发,游戏' /> <input type='hidden'
						name='orderLength' value='1' />
					<div class='order-bg'>
						<div class='options'>
							<ul>
								<li class='order'>订单</li>
								<li class='sum'>金额</li>
								<li class='source'><select class='J-source'>

										<option value='' selected='selected'>全部</option>


										<option value='0'>猪八戒</option>


										<option value='1'>天蓬网</option>

								</select></li>
								<li class='trade-model'>交易模式</li>
								<li class='order-state'>订单状态</li>
								<li class='order-options'>订单操作</li>
							</ul>
						</div>
						<div class='order-details-wrap order-item J-order-item'
							data-categoryid='1874'>
							<div class='order-details'>
								<div class='top-info'>
									<span class='time'> 2018-06-09 </span> <span
										class='order-num J-orderid' data-orderid='13580780'>订单号：
										<a href='//task.zbj.com/13580780'>13580780</a>
									</span>
								</div>
								<ul>
									<li class='order '>
										<div class='order-title'>
											<div class='order-title-content'>
												<a href='//task.zbj.com/13580780' class=' bbj-href'
													target='_blank'>我需要网站/APP/微信/软件开发-企业网站</a>
											</div>
											<div class='brand-protected w1' data-phone='18150166266'
												data-linkid='10178918' data-cid='1261' data-tid='13580780'
												data-txt='3秒提交LOGO需求' data-gid='296'>
												<label>3秒提交LOGO需求</label> <i class='icon-angle-right'></i>
												<div class='div-tips'>提交成功，稍后会有专属顾问跟您联系，请保持电话畅通</div>
											</div>
										</div>
									</li>
									<li class='sum'>￥0.00</li>
									<li class='source'>猪八戒网</li>
									<li class='trade-model'>招标</li>
									<li class='order-state order-state-block'>
										<div class='order-state-option'>
											<div>交易失败</div>
											<div class='o-status-ck' data-tid='13580780' data-sid='0'
												data-linkid='10173819'>
												<span class='state-txt'>订单动态</span>
												<div class='track clearfix track-hide ' data-mode='13'>
													<div class='satisfied-btn active' data-tid='13580780'
														data-linkid='10171379'></div>


													<div class='track-detail'>
														<div class='order-content'>
															<div class='tit'>
																订单动态 <i class='icon-close'></i>
															</div>

															<div class='order-info-list'>
																<span class='t-list-up hide'> <i
																	class='icon-dir-top'></i>
																</span> <span class='t-list-down hide'> <i
																	class='icon-dir-down'></i>
																</span>
																<div class='info-list-wrap'>
																	<div class='t-list clearfix'>
																		<div class='o-state-time'>
																			2018.06.09 (周六) <span>11:06:44</span>
																		</div>
																		<div class='o-type1'>交易已结束</div>
																	</div>
																	<div class='t-list clearfix'>
																		<div class='o-state-time'>
																			2018.06.09 (周六) <span>11:06:21</span>
																		</div>
																		<div class='o-type1'>订单提交成功</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class='order-options-details order-options'>
										<div class='option option-details'>
											<a href='//task.zbj.com/13580780' target='_blank'>交易失败</a> <a
												href='//uenps.zbj.com/pcGroups?tid=15&amp;orderid=13580780'>评价猪八戒</a>
										</div>
									</li>
								</ul>
							</div>
							<div class='J-order-details'>
								<div class='order-proccess J-proccess'>

									<div class='proccess-line' style='width: 70.2%'></div>

									<div class='proccess-details'>



										<div class='sub-content-wrap' style='width: 32%;'>
											<div class='content'>提交需求</div>
											<div class='content-time'>2018-06-09</div>
										</div>



										<div class='sub-content-wrap' style='width: 32%;'>
											<div class='content'>服务商参与</div>
											<div class='content-time'>2018-06-09</div>
										</div>



										<div class='sub-content-wrap' style='width: 32%;'>
											<div class='content'>交易关闭</div>
											<div class='content-time'>2018-06-09</div>
										</div>


									</div>
								</div>

								<div class='order-trace-warp' style='padding-top: 0'>
									<div class='adv-tran-wrap J-adv-tran-wrap'>
										<span>购买了此服务的人还购买了</span>
										<div class='adv-tran J-adv-tran'></div>
									</div>

								</div>
							</div>


							<div class='J-recommend clearfix adv-content'>
								<div class='search-recommend' data-name='gz-order-recommend'
									data-params='{"size":"6","orderId":"13580780"}'
									data-rowsize='6' data-top='10' data-left='10' data-width='140'
									data-callback='callback'></div>
							</div>

						</div>


					</div>
					<div class='cover hide'></div>
					<div class='myd-warp'>
						<h2>满意度小调查</h2>
						<dl>
							<dt>您对服务商反馈项目进度的频率满意吗？</dt>
							<dd class='clearfix satisfyLevelChoose'>
								<span class='active'>A. 非常满意</span> <span>B. 满意</span> <span>C.
									一般</span> <span>D. 差劲</span>
							</dd>
						</dl>
						<dl>
							<dt>您希望服务商多久更新一次进度？</dt>
							<dd class='clearfix frequencyChoose'>
								<span class='active'>A. 每天</span> <span>B. 3天</span> <span>C.
									每周</span> <span>D. 无所谓</span>
							</dd>
						</dl>
						<p>
							<button class='mydSubtn' data-linkid='10171380'>提交</button>
						</p>
						<a class='icon-close'></a>
					</div>
					<script>
utopia.arrived({uid:'utopia_widget_8', js:["@fe-common/utopia-lazyload","widget/components/tip/tip.js"], entry:'widget/order/order/order.js'});
</script>

					<div class='pagnation-wrap J-pagenation'>

						<div class="pagination">
							<ul>
								<li class="disabled"><a class="pagination-prev"
									rel="nofollow" href="javascript:;">«</a></li>
								<li class="active"><a rel="nofollow" href="javascript:;">1</a></li>
								<li class="disabled"><a class="pagination-next"
									rel="nofollow" href="javascript:;">»</a></li>
							</ul>
						</div>

					</div>
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
		<script>/*<![CDATA[*/
utopia.arrived({uid:'utopia_widget_16', js:["widget/components/dialog-tips/dialog-tips.js","widget/components/log/log.js","fe-common/utopia-cookie@0.0.1"], entry:function(e){var i=e("widget/components/dialog-tips/dialog-tips"),n=function(e,i){function n(e,i){return String(e).replace(i||/&(?!#\d+;|#x[\da-f]+;|[a-z]+;)|[<"]/gi,function(e){return"&#"+e.charCodeAt()+";"})}var t=("brandName"in e?e:this).brandName,o=("providerId"in e?e:this).providerId,s=("baseURI"in e?e:this).baseURI,r=("timeStye"in e?e:this).timeStye,a=("enoughMoney"in e?e:this).enoughMoney,c=("couponType"in e?e:this).couponType,d=("discount"in e?e:this).discount,p=("couponPrice"in e?e:this).couponPrice,i=i||[];return i.push("<div class='redpack-get-dialog hide'>\n<p class='r-tips'>恭喜您获得老用户专享红包</p>\n"),0==c||2==c?i.push("\n<p class='r-price'><span>￥</span>",n(p,/[&<]/g),"</p>\n"):i.push("\n<p class='r-price'>",n(d,/[&<]/g),"<label>折</label></p>\n"),i.push("\n<div>\n"),0==c&&i.push("\n<p class='r-rule'>满",n(a,/[&<]/g),"可用</p>\n"),i.push("\n<p class='r-use-time'>",n(r,/[&<]/g),"</p>\n</div>\n<button class='r-get-btn' data-linkid='10183189'>立即领取</button>\n"),"null"!=t&&i.push("\n<p class='r-provider'>本红包由<a href='//shop.",n(encodeURI(s),/[&<']/g),"/",n(encodeURI(o),/[&<']/g),"/?fr=gzzx-rpshop-name' target='_blank'>",n(t,/[&<]/g),"</a>提供</p>\n"),i.push("\n<i class='icon-error2 r-close' data-linkid='10183188'></i>\n</div>"),i.join("")},t=function(e,i){function n(e,i){return String(e).replace(i||/&(?!#\d+;|#x[\da-f]+;|[a-z]+;)|[<"]/gi,function(e){return"&#"+e.charCodeAt()+";"})}function t(e,i,n){try{return n?e[i].apply(e,n):e[i]}catch(t){return t}}Object.keys||(Object.keys=function(e){var i=[];for(var n in e)i.push(n);return i});var o=("brandName"in e?e:this).brandName,s=("list"in e?e:this).list,r=("baseURI"in e?e:this).baseURI,a=("serverTips"in e?e:this).serverTips,i=i||[];i.push("<div class='redpack-rec hide'>\n<div class='redpack-tit'><i></i>恭喜，红包领取成功！</div>\n<div class='redpack-list'>\n<p class='redpack-list-tips'>您可以使用该红包购买以下服务</p>\n<div class='redpack-list-cont'>\n<ul class='clearfix'>\n");for(var c=s,d=0,p=(c=c instanceof Array?c:"object"==typeof c?Object.keys(c):Array(c)).length-1;p>=d;d++){var u=c[d];i.push("\n<li>\n<a href='",n(encodeURI(t(u,"link")),/[&<']/g),"?fr=rpsuccess-service' target='_blank' data-linkid='10183192'>\n<img");var l=encodeURI(t(u,"imgUrl"));null!=l&&i.push(" src='",n(l,/[&<']/g),"'");var l=t(u,"title");null!=l&&i.push(" alt='",n(l,/[&<']/g),"'");var l=t(u,"imgUrl");null!=l&&i.push(" data-original='",n(l,/[&<']/g),"'"),i.push("\nonerror='this.src=&#39;//bgl.zbjimg.com/bgl%2Fbjclound%2Fnotfound.png%2Forigine%2Fe4113d89-c34d-4df8-b6a6-0620e4d3f9b9?imageMogr2/auto-orient/strip/quality/90&#39;;this.onerror=null'/>\n</a>\n<h2><a");var l=encodeURI(t(u,"link"));null!=l&&i.push(" href='",n(l,/[&<']/g),"'"),i.push(" target='_blank' data-linkid='10183192'>",n(t(u,"title"),/[&<]/g),"</a></h2>\n<p class='s-price'>￥",n(t(u,"price"),/[&<]/g),"\n"),t(u,"unit")&&i.push("/",n(t(u,"unit"),/[&<]/g)),i.push("\n</p>\n<a href='",n(encodeURI(t(u,"link")),/[&<']/g),"?fr=rpsuccess-service' target='_blank' class='s-get' data-linkid='10183192'>限时抢购</a>\n<p class='s-tips'>",n(a,/[&<]/g),"</p>\n</li>\n")}return i.push("\n</ul>\n</div>\n"),"null"!=o&&i.push("\n<p class='redpack-provider'>本红包由<a href='//shop.",n(encodeURI(r),/[&<']/g),"/",n(encodeURI(t(t(s,0),"pubUserId")),/[&<']/g),"/?fr=gzzx-rpshop-name' target='_blank'>",n(o,/[&<]/g),"</a>提供</p>\n"),i.push("\n</div>\n<i class='icon-error2 redpack-rec-close' data-linkid='10183191'></i>\n</div>"),i.join("")},o=e("widget/components/log/log"),s=e("fe-common/utopia-cookie@0.0.1"),r=$(".user-base-info").attr("show-dialog"),a=$(".new-user-dialog").data("newshow"),c=$(".new-user-dialog").data("isindex"),d={_commonFn:{_$:function(e){return this["_"+e]||(this["_"+e]=$(this[e])),this["_"+e]},isIE8:function(){return"Microsoft Internet Explorer"==navigator.appName&&"8."==navigator.appVersion.match(/8./i)?!0:void 0}},_eventFn:{bindEvent:function(){var e=[[,,this.$redpackClose,"redpackCloseFn"],[,,this.$rClose,"rCloseFn"],[,,this.$rGetBtn,"rGetFn"]];$(e).each(function(e,i){$(i[0]||this.$body).on(i[1]||"click",i[2],this[i[3]]())}.bind(this))},redpackCloseFn:function(){var e=this;return function(){e.closeRedpackDialog()}},rCloseFn:function(){var e=this;return function(){e.closeRedpckRecDialog()}},rGetFn:function(){var e=this;return function(){e.receiveCoupon()}}},_operateFn:{judgeCouponShow:function(){var e=this;return this._isIndex&&this._isNewShow?!1:this._isNewShow||"true"!==this._isShowComDialog||this.cookie.get("hasShowDialog")?void(this._isIndex?this.getCouponShowState():this.getEmployerRegisterMsg().always(function(i){i.success&&i.data||e.getCouponShowState()})):!1},getCouponShowState:function(){var e=this;$.ajax({url:"/redpocket/checkLatestOrder",method:"get",cache:!1,success:function(i){if(i.success&&i.data&&i.data.status&&i.data.couponList&&i.data.couponList.length){var n=i.data.couponList[0],t="";n.timeStye=e.timeFarmat(n.endTimeMillis),n.baseURI=window.ZBJInfo.baseURI,e.couponId=n.couponId,e.providerId=n.providerId,e.couponType=n.couponType,e.brandName=n.brandName,0==n.couponType&&(t="满"+n.couponPrice+"可用"),1==n.couponType&&(t=n.discount+"折"),2==n.couponType&&(t="直接抵扣"+n.couponPrice+"元"),e.serverTips=t,e.renderCouponDialog(n)}},error:function(e){alert(e)}})},timeFarmat:function(e){var i=new Date(e),n=i.getFullYear(),t=i.getMonth()+1,o=i.getDate();return n+"年"+("0"+t).slice(-2)+"月"+("0"+o).slice(-2)+"日前可用"},renderCouponDialog:function(e){this._$("$body").append(this.$redpackTpl(e)),this.getCounponCb()},renderCouponRecDialog:function(e){this._$("$body").append(this.$redpackRecTpl(e)),this.receiveSucessCb()},getCounponCb:function(){this.$linkLog.sendLog({linkid:10183187}),this._$("$redpackMask").fadeIn(this.$fadeTime),this._$("$rGetDialog").fadeIn(this.$fadeTime)},closeRedpackDialog:function(){this._$("$redpackMask").fadeOut(this.$fadeTime),this._$("$redpackRec").fadeOut(this.$fadeTime)},receiveSucessCb:function(){this.$linkLog.sendLog({linkid:10183190}),this._$("$rGetDialog").fadeOut(this.$fadeTime),this._$("$redpackRec").fadeIn(this.$fadeTime),this.updateState()},closeRedpckRecDialog:function(){$(".tips-container").remove(),this._$("$rGetDialog").fadeOut(this.$fadeTime),this._$("$redpackMask").fadeOut(this.$fadeTime),this.updateState()},receiveCoupon:function(){var e=this;this.isReceiveIng||(this.isReceiveIng=!0,$.ajax({url:"/receiveCoupon",method:"get",cache:!1,data:{couponId:this.couponId,firstPage:location.href,pmCode:"fugou"},success:function(i){0==i.resultCode?e.getCouponRecSer():e.$dialogTips.tipsObj._init({currObj:e.$rGetBtn,isFixed:!0,showTime:5e3,isPageCenter:!1,isUseHadStyle:!0,tipsType:1,tplHtml:i.resultMsg}),e.isReceiveIng=!1},error:function(i){e.isReceiveIng=!1,alert(i)}}))},getCouponRecSer:function(){var e=this;$.ajax({url:"/redpocket/search",method:"get",cache:!1,data:{providerId:this.providerId},success:function(i){i&&i.length?e.renderCouponRecDialog({list:e.dataFilter(i),serverTips:e.serverTips,brandName:e.brandName,baseURI:window.ZBJInfo.baseURI}):(e.$dialogTips.tipsObj._init({currObj:e.$rGetBtn,isFixed:!0,showTime:5e3,isPageCenter:!1,isUseHadStyle:!0,tipsType:1,tplHtml:"领取成功"}),setTimeout(function(){e.closeRedpckRecDialog()},2e3))},error:function(e){alert(e)}})},getEmployerRegisterMsg:function(){return $.ajax({url:"/employerRegisterMsg",method:"get"})},dataFilter:function(e){return $.each(e,function(e,i){i.link="//shop."+ZBJInfo.baseURI+"/"+i.pubUserId+"/sid-"+i.id+".html",i.price=parseFloat(i.price).toFixed(2),i.imgUrl=-1==i.coverPic.indexOf("http")?ZBJInfo.qiniuUploadTokenUrl+"/resource/redirect?key="+i.coverPic:i.coverPic}),e},updateState:function(){$.ajax({url:"/redpocket/updatePopupStatus",method:"get",success:function(){},error:function(){}})}},_init:function(e){var d={$body:"body",$linkLog:o,$dialogTips:i,$redpackTpl:n,$redpackRecTpl:t,$redpackMask:".redpack-rec-mask",$redpackRec:".redpack-rec",$redpackClose:".redpack-rec-close",$fadeTime:300,$rClose:".r-close",$rGetBtn:".r-get-btn",$rGetDialog:".redpack-get-dialog",_isIndex:c,_isNewShow:a,_isShowComDialog:r,cookie:s,couponId:null,providerId:null,couponType:null,serverTips:"",brandName:"",isReceiveIng:!1};$.extend(this,d,e,this._eventFn,this._operateFn,this._commonFn),this.bindEvent(),this.judgeCouponShow()}};d._init()}});
//]]></script>

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