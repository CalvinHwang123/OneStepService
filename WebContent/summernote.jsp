<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 富文本编辑器页面 -->
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta charset="UTF-8">
<title>Summernote</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/summernote.css" rel="stylesheet">
<script src="js/summernote.js"></script>
<script src="js/summernote-zh-CN.js"></script>
</head>
<body>
		<div class="summernote" ></div>
	<script>
	var isDelete;
		$(document)
				.ready(
						function() {
							var $summernote = $('.summernote')
									.summernote({
												toolbar : [
														[ 'insert',
																[ 'picture' ] ],
														[ 'height',
																[ 'height' ] ] ],
												lang : 'zh-CN',
												disableDragAndDrop:true,
												callbacks : {
													onImageUpload : function(files, editor,$editable) {
														sendFile(files[0],
																editor,
																$editable);
													},
												},
												height:180,
											});
							$('.summernote').on('summernote.enter', function() {
								userSelection = document.getSelection();
								isDelete = userSelection.focusOffset;
								if (userSelection.focusOffset == 0) {
									alert("回车不包含内容");
								}
								});
							
						});

		function sendFile(file, editor, $editable) {
			alert("上傳文件");
			$(".note-toolbar.btn-toolbar").append('正在上传图片');
			var filename = false;
			try {
				filename = file['name'];
				alert(filename);
			} catch (e) {
				filename = false;
			}
			if (!filename) {
				$(".note-alarm").remove();
			}
			//以上防止在图片在编辑器内拖拽引发第二次上传导致的提示错误
			var ext = filename.substr(filename.lastIndexOf("."));
			ext = ext.toUpperCase();
			var timestamp = new Date().getTime();
			var name = timestamp + "_" + $(".summernote").attr('aid') + ext;
			//name是文件名，自己随意定义，aid是我自己增加的属性用于区分文件用户
			var data = new FormData();
			data.append("file", file);
			data.append("key", name);
			data.append("token", $(".summernote").attr('token'));
			$.ajax({
				url : "File/upload.action",
				data : data,
				type : "post",
				dataType : "json",
				cache : false,
				processData : false,
				contentType : false,
				success : function(data) {
					alert(data.path);
					$('.summernote').summernote('insertImage', data.path);
					console.log(data.path);
				},
				error : function(data) {

					alert("上传图片失败" + data);
				}
			})
		}
	</script>
</body>
</html>