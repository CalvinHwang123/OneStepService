/**
 * 
 */
$(function() {
	$(".down").on("click", function() {
		 var sendmsg= $(this).parent().parent().children(".onlyname").text();
		 alert(sendmsg);
		 var name=$(this).attr("name");
		 alert(name);
		$(this). attr("href",name+"/user/download.action?fileName="+sendmsg);
	})
})