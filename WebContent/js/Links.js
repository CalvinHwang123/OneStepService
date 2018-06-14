/**
 * 
 */
$(function() {
	$(".deletebyid").on("click", function() {
		var id=$(this).attr("title");
		$("#app1").attr("action","../PortalManage/deleteById.action?linksid="+id)
		$("#app1").submit();
	})
})