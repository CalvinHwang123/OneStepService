﻿var path = $("#basePath").attr("title");
var roleID;
var MoniterIndex = function(config) {
	var self = this;

	// var showTreeSelectData = function () {
	// $.ajax({
	// url: '',
	// method: 'get',
	// dataType: 'json',
	// contentType: "application/json;charset=utf-8",
	// success: function (data) {
	// console.log(data);
	// var datas = {};
	// for (var i = 0; i < data.length; i++) {
	// datas.i = i+1;
	// datas.rolename = data[i].rolename;
	// datas.createTime = data[i].createTime;
	// datas.roleDescription = data[i].roleDescription;
	// var source = $("#treeSelect-template").html();
	// var template = doT.template(source);
	// var htmlstr = template(datas);
	// $("#treeSelectBody").append(htmlstr);
	// }
	//
	// },
	// error: function (res) {
	// console.log(res);
	// }
	// });
	//
	//       
	//
	// }

	self.initData = function() {
		// showTreeSelectData();
	}

}

$(function() {
	window.monitorIndex = new MoniterIndex();
	monitorIndex.initData();
});

$(function() {
	$("#treeSelectBody").on('click','.grantAuthorityBtn',function() {
		var username = $(this).parents('tr').find('td').eq(1).text();
		roleID = $(this).parents('tr').find('td').eq(0).text();// 角色ID
						

	
	$.ajax({
	url : path+ "/SystemManage/allMenu.action",
	data:JSON.stringify(roleID),
	type : "POST",
	contentType : "application/json;charset=utf-8",
	dateType:"application/json",
	success : function(allMenu) {

	var allOneMenu=allMenu.allOneMenu;
	var allTwoMenu=allMenu.allTwoMenu;
	var twoPowerList=allMenu.twoMenuList;

	// 所有菜单跟已有菜单
	$("#authorityBody").empty();
	$("#authorityBody").append('<select id="authorifyselect" multiple="multiple">');
	for (var i = 0; i < allOneMenu.length; i++) {
		for (var j = 0; j < allTwoMenu.length; j++) {
			
			if(allOneMenu[i].menuID==allTwoMenu[j].menuPID){
				$("#authorifyselect").append('<option  value="'+allTwoMenu[j].menuID+'" data-section="'+allOneMenu[i].menuName+'">'+allTwoMenu[j].menuName+'</option>');
			}
		}					

	}
	$("#authorityBody").append('</select>');
	
	for (var i = 0; i < twoPowerList.length; i++) {
		
		$("#authorityBody option[value='" + twoPowerList[i].menuID + "']" ).attr("selected", true);		
	}
	
	$("#authorifyselect").treeMultiselect({searchable : true,hideSidePanel : false});
	$("#AuthorityTitle").text("给 " + username + " 分配权限");
	// 显示模态框
	$("#grantAuthorityModal").modal('show');
		}
	})

	});

})


// 提交更改
$(function(){
	
	$("#authoritysubmit").on('click', function(){
		alert("提交更改");
		var powers = [];
		$("#authorifyselect  option:selected").each(function() {
			powers.push($(this).attr("value"));
		});
		alert("所选权限ID为="+powers);
		alert("数据转换为="+JSON.stringify({"roleID":roleID,"powerMenus":powers}));		
		$.ajax({
			
			url:  path+"/SystemManage/updatePower.action",
			contentType : "application/json;charset=utf-8",   
			data: JSON.stringify({"roleID":roleID,"powerMenus":powers}),
			type: "POST",
			success:function(data){
				alert(data+"更改成功");
				$("#grantAuthorityModal").modal('hide');	
			}
		})	
	})
})


