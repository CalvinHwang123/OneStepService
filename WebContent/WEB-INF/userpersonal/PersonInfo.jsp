<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>雇主中心-个人信息</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@ include file="/WEB-INF/includeLeft.jsp"%>
	<div class="col-md-12 column">
		<div class='order-wrap'>
			<div class='top-nav-wrap order-top-nav J-state' data-state='0'
				id='utopia_widget_6'></div>
			<div class='order-top-banner' id='utopia_widget_7'>
				<div class='top-banner-tips'></div>
				<div class='top-banner-cont'></div>
			</div>
			<div class='order-bg'>
				<div class='options'></div>
				<div class="container">
					<div class="form-front"
						style="position: relative; top: 0px; left: 150px; z-index: 1;">
						<form class="contact" action="BusiManage/usersInfo.action"
							method="post" id="userInfoform">
							<section id="getintouch" class="flipInX animated">
							<div class="container" style="border-bottom: 0;">
								<h1>
									<span>我的账号</span>
								</h1>
								<p class="per-desc mt10 baseinfoHint">
									<!-- t_6266cpsw78， -->
									填写真实的资料更方便大家了解你，以下信息将显示在<a href="#">个人资料页</a>。 <br>(请不要在资料里面留电话，QQ，网址，邮箱等联系方式信息，会导致您的资料无法通过审核)
								</p>
							</div>
							<div class="row clearfix">
								<div class="lbl">
									<label for="name"> 用户名:<span>${forelogin.userAccount}</span></label>
								</div>
								<div class="ctrl">
									<input type="hidden" name="userAccount"
										value="${forelogin.userAccount}" />
								</div>
							</div>

							<div class="row clearfix">
								<div class="lbl">
									<label for="name"> 昵称:</label>
								</div>
								<div class="ctrl">
									<input id="name" name="userName" value="${usersList.userName}"
										data-required="true" data-validation="text"
										data-msg="Invalid Name" placeholder="Ex: John Donga"
										type="text">
								</div>
							</div>
							<div class="row clearfix">
								<div class="lbl">
									<label for="email"> E-Mail</label>
								</div>
								<div class="ctrl">
									<input id="email" name="userEmail"
										value="${usersList.userEmail}" data-required="true"
										data-validation="email" data-msg="Invalid E-Mail"
										placeholder="Ex: youremail@domain.com" type="text">
								</div>
							</div>
							<div class="row clearfix">
								<div class="lbl">
									<label for="email"> Phone</label>
								</div>
								<div class="ctrl">
									<div class="form-group">
										<input id="phone" name="userPhone"
											value="${usersList.userPhone}" 
											placeholder="Ex: 111-258-444" type="text">
									</div>
								</div>
							</div>
							<div class="row clearfix">

								<div class="lbl">
									<label for="subject"> 身份证:</label>
								</div>
								<div class="ctrl">
									<input name="userIdentity" id="userIdentity"
										value="${usersList.userIdentity}"
										placeholder="Ex: Quote for Project" type="text">
								</div>
							</div>
							<div class="row clearfix">
								<div class="lbl">
									<label for="subject"> 地址:</label>
								</div>
								<div class="ctrl">
									<input name="userAddress" id="userAddress"
										value="${usersList.userAddress}"
										placeholder="Ex: Quote for Project" type="text">
								</div>
							</div>
							<div class="row clearfix">
								<div class="lbl">
									<label for="subject"> 简介:</label>
								</div>
								<div class="ctrl">
									<div class="controls ui-form-item" placeholder="简单介绍一下自己的信息吧！"
										notype="contact">
										<p class="intro-area">
											<textarea class="intro-text" name="userIntroduction"
												style="width: 47.7%;">${usersList.userIntroduction}</textarea>
											<br /> <span class="help-inline">请输入至少4-200个字，支持中文、英文</span>
											<span class="change-0810-error"></span>
										</p>
									</div>
								</div>
							</div>

							<div class="row  clearfix">
								<div class="span10 offset2">
									<input id="submit" value="保存" type="submit">
								</div>
							</div>
							</section>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>


<!-- 	<script> -->
<!-- // 		$(function() { -->

<!-- // 			var faIcon= {/*输入框不同状态，显示图片的样式*/ -->
<!-- // 				valid : 'glyphicon glyphicon-ok', -->
<!-- // 				invalid : 'glyphicon glyphicon-remove', -->
<!-- // 				validating : 'glyphicon glyphicon-refresh' -->
<!-- // 			}; -->
<!-- // 			$("#userInfoform").bootstrapValidator({ -->
<!-- // 				message : 'This value is not valid', -->
<!-- // 				//	            定义未通过验证的状态图标 -->
<!-- // 				feedbackIcons :faIcon, -->
<!-- // 				//	            字段验证 -->
<!-- // 				fields : { -->
<!-- // 					//	               作品标题 -->
<!-- // 					userIdentity : { -->
<!-- // 						message : '作品标题非法', -->
<!-- // 						validators : { -->
<!-- // 							//	                        非空 -->
<!-- // 							notEmpty : { -->
<!-- // 								message : '作品标题不能为空' -->
<!-- // 							}, -->
<!-- // 							//	                        限制字符串长度 -->
<!-- // 							stringLength : { -->
<!-- // 								min : 2, -->
<!-- // 								max : 20, -->
<!-- // 								message : '作品标题长度必须位于2到20之间' -->
<!-- // 							}, -->
<!-- // 						} -->
<!-- // 					}, -->

<!-- // 				} -->
<!-- // 			}); -->
<!-- // 			$("#personbut").click(publishWorks); -->
<!-- // 		}); -->

<!-- // 		function publishWorks() { -->
<!-- // 			document.getElementById('userInfoform').submit(); -->
<!-- // 		} -->
<!-- 	</script> -->
	<%@include file="/end.jsp"%>
</body>
</html>