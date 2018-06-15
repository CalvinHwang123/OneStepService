/**
 * 
 */
function  changge(node) {
	   alert("重置密码成功，密码为123456");

	   $("#form1").attr("action", "BusiManage/updatepow.action");
       $("#userID").val(node.title);
       $("#form1").submit();
}

function  changge2(node) {
	   alert("已加入黑名单");

	   $("#form1").attr("action", "BusiManage/Blacklist.action");
    $("#userID").val(node.title);
    $("#form1").submit();
}

function  changge3(node) {
	   alert("已禁用");

	   $("#form1").attr("action", "BusiManage/Disable.action");
 $("#userID").val(node.title);
 $("#form1").submit();
}
//function  changge(node) {
//	   alert("已加入黑名单");
//
//	   $("#form1").attr("action", "BusiManage/updatepow.action");
//    $("#userID").val(node.title);
//    $("#form1").submit();
//}
//function  changge(node) {
//	   alert("已经禁用");
////    node.value=node.title;
//	   $("#form1").attr("action", "BusiManage/updatepow.action");
//    $("#userID").val(node.title);
//    $("#form1").submit();
//}