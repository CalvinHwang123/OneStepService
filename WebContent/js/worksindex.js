/**
 * 
 */

var clicknum = 0;
var classpricevalue;
var classvalue;

$(function() {
	// 多条件查询
	if ($("#beWorksPrice").attr("title") != 171120
			&& $("#endWorksPrice").attr("title") != 171120) {
		$("#beWorksPrice").attr("value", $("#beWorksPrice").attr("title"));
		$("#endWorksPrice").attr("value", $("#endWorksPrice").attr("title"));
	}
	if ($("#classPid").attr("title") != 171120) {
		$("#classPid").attr("value", $("#classPid").attr("title"));
	}
	if ($("classname").attr("title") != "") {
		$("#classname").attr("value", $("#classname").attr("title"));
	}
	
	if (clicknum!=1) {	
		var arr=$(".racheckbox");
		for (var i = 0; i < arr.length; i++) {
			if (arr[i].value==$("#jspPane").attr("title")) {
				arr[i].checked=true;
				alert(arr[i].value);
				clicknum=1;
			}
		}
	}else {
		$("#jspPane").attr("title","");
	}
})

$(function() {

	// 按价格出现
	$(".racheckbox").click(function() {
		if ($(this).attr("value") != classvalue) {
			clicknum = 0
			clicknum = clicknum + 1;
			if (clicknum == 1) {
				classpricevalue = $(this).attr("value");
				classvalue = $(this).attr("value");
			}
		} else {
			clicknum = clicknum + 1;
			if (clicknum == 2) {
				$(this).attr("checked", false);
				classpricevalue = "null";
				classvalue = "null";
			}
		}
		$("#beWorksPrice").attr("value", classpricevalue.split("-")[0]);
		$("#endWorksPrice").attr("value", classpricevalue.split("-")[1]);
		$("#workslook").submit();
	})
	// 按类型查询
	$(".twoclassname").click(function() {
		$(".racheckbox").attr("checked", false);
		var classpricevalue = $(this).attr("value");
		$("#classPid").attr("value", classpricevalue);
		$("#startDate").attr("value", $(this).attr("title"))
		// $("#classactive").append("<li>"+$(this).attr("title")+"</li>");
		$("#workslook").submit();
	})
})