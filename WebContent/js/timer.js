/**
 * 倒计时脚本
 * timers，为需要定时的节点数组
 * 
 */
	function openTime(){
		setInterval("timer()",1000);
	}
	function timer(){
		for (var i = 0; i < timers.length; i++) {
			var timer = timers.eq(i);
		var asoftDate=timer.attr("asofttime");
		asoftDate=asoftDate.replace(new RegExp("-","gm"),"/");
		var asoftTime=((new Date(asoftDate)).getTime())/1000;
		var currentTime = (new Date()).getTime()/1000;
		//剩余毫秒数
		var ts=asoftTime-currentTime;
		var dd = parseInt(ts/60/60/24,10);//计算剩余的天数
		var hh = parseInt(ts/60/60%24,10);//计算剩余的小时数
		var mm = parseInt(ts/60%60,10);//计算剩余的分钟数
		var ss = parseInt(ts%60,10);//计算剩余的秒数
		//最後剩余时间
		var remainingTime= dd + "天"+hh + "时" +mm + "分"+ss + "秒";
		timer.text(remainingTime);
		}
	}