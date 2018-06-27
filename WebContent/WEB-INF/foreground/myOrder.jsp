<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset='utf-8' />
<meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' />
<meta name='renderer' content='webkit' />
<meta http-equiv='Cache-Control' content='no-transform ' />
<title>我的账号</title>
<meta name="referrer" content="always">
</head>
<body>
	<%@ include file="/head.jsp"%>
	<div class="col-md-12 column">
		<div class="row clearfix">
			<div class="col-md-3 column">
				<br> <br>
				<div class="col-md-2 column"></div>
				<div class="col-md-8 column" style="border-right: 1px solid;">
					<%@ include file="/facilitator-left.jsp"%>
				</div>
				<div class="col-md-2 column"></div>
			</div>
			<div class="col-md-9 column">
				<br> <br>
				<div class="col-md-6 column" style="border: 1px solid;margin: 0;padding: 0;">
				<div class="col-md-12 column" style="background: url('./portal/images/bg.png');"><font size="5" face="Arial, Helvetica">个人信息</font></div>
					<br> <br>
					<font size="3" color="#00C5CD" face="sans serif">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</font>${forelogin.userAccount} <a
						id="modal-834320" href="#modal-container-834320" role="button"
						class="btn" data-toggle="modal" style="float: right;">编辑资料</a> <br> <br>
					<font size="3" color="#00C5CD" face="sans serif">用&nbsp;户&nbsp;名：</font>&nbsp;${usersList.userName}
					<br> <br><font size="3" color="#008B00" face="sans serif">联系号码：</font>&nbsp;${usersList.userPhone}
					<br> <br><font size="3" color="#7FFF00" face="sans serif">用户类型：</font>服务商
					<br> <br><font size="3" color="#7FFF00" face="sans serif">电子邮箱：</font>${usersList.userEmail}
					<br> <br><font size="3" color="#FF8C00" face="sans serif">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</font>${usersList.userAddress}
					<br> <br><font size="3" color="#4169E1" face="sans serif">简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：</font>${usersList.userIntroduction}
					<br> <br><br>
				</div>
				<div class="col-md-6 column">
					<div class="col-md-12 column" style="border: 1px solid;margin: 0;padding: 0;">
						<div class="col-md-12 column" style="background: url('./portal/images/bg.png');"><font size="4" face="sans serif">我的信用>></font></div>
						<br><br><font size="3" color="#8A2BE2" face="sans serif">当前信用:</font>${usersList.userCredit}
						<a href=<%=path+"/WEB-INF/foreground/creditQuery.jsp" %>><font size="3" color="#1C86EE" face="sans serif">信用详情</font></a>
					</div>
					<div class="col-md-12 column"><br></div>
						<div class="col-md-12 column" style="border: 1px solid;margin: 0;padding: 0;">
						<div class="col-md-12 column" style="background: url('./portal/images/bg.png');"><font size="4" face="sans serif">我的余额>></font></div>
						<br><br><font size="3" color="#8A2BE2" face="sans serif">当前余额:</font>${usersList.userBalance}
						<a><font size="3" color="#1C86EE" face="sans serif">账单详情</font></a>
						<a id="modal-834323" href="#modal-container-834323" role="button"
						class="btn" data-toggle="modal" style="float: content: ;"><font size="3" color="#1C86EE" face="sans serif">余额充值</font></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- model -->
	<div class="modal fade" id="modal-container-834320" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">编辑资料</h4>
				</div>
				<p class="per-desc mt10 baseinfoHint">
					<!-- t_6266cpsw78， -->
					填写真实的资料更方便大家了解你，以下信息将显示在<a href="#">个人资信息</a>。
				</p>
				<form class="contact" action="BusiManage/usersInfo.action" method="post" id="form">
				<div class="modal-body" >
					         <font size="3" color="#00C5CD" face="sans serif">用&nbsp;户&nbsp;名：</font>&nbsp;<input type="text" name="userName" value="${usersList.userName}">
					<br> <br><font size="3" color="#7FFF00" face="sans serif">联系号码：</font><input type="text" name="userPhone" value="${usersList.userPhone}">
					<input name="userIdentity" id="userIdentity" value="" type="hidden">
					<input name="userAccount" id="userAccount" value="${forelogin.userAccount}" type="hidden">
					<br> <br><font size="3" color="#7FFF00" face="sans serif">电子邮箱：</font><input type="text" name="userEmail" value="${usersList.userEmail}">
					<br> <br><font size="3" color="#FF8C00" face="sans serif">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</font><input type="text" name="userAddress" value="${usersList.userAddress}">
					<br> <br><font size="3" color="#4169E1" face="sans serif">简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介：</font>
								<p class="intro-area">
									<textarea class="intro-text" name="userIntroduction"
										style="width: 47.7%;">${usersList.userIntroduction}</textarea>
									<br /> <span class="help-inline">请输入至少4-200个字，支持中文、英文</span> <span
										class="change-0810-error"></span>
								</p>
				</div>
				</form>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="submit" class="btn btn-primary">保存</button>
				</div>
			</div>

		</div>

	</div>
	<!-- model -->
	
	<!-- 余额model -->
	<div class="modal fade" id="modal-container-834323" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">余额充值</h4>
				</div>
			
				<div class="modal-body" >
					<input id="name" data-required="true" data-validation="text"
								data-msg="Invalid Name" placeholder="请输入充值金额" type="text">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>

	</div>
	<!-- model -->
</body>
</html>