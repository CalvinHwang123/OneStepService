/**
 * 打印脚本
 *
 * 
 */
function printerInit(printNode) {
		var LODOP = getLodop();
		LODOP.PRINT_INIT("test套打");
		LODOP.ADD_PRINT_HTM(10, 55, "100%", "100%", printNode.innerHTML);
		LODOP.PREVIEW();
	};