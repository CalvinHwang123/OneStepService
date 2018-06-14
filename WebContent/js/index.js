/**
 * 
 */
var iframeNode;

$(function() {
	iframeNode = document.getElementById("page");
	$("#d2").accordion();
})
function changePage(node) {
	var url = node.getAttribute("title");
	iframeNode.setAttribute("src", url);
}