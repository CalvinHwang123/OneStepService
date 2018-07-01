<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的需求</title>
</head>
<body>
	<%@ include file="/head.jsp"%>
	<%@include file="../includeLeft.jsp"%>

	<div class='order-wrap'>
		<div class='top-nav-wrap order-top-nav J-state' data-state='0'
			id='utopia_widget_6'></div>

		<div class='order-top-banner' id='utopia_widget_7'>
			<div class='top-banner-tips'></div>
			<div class='top-banner-cont'></div>
		</div>
		<div class="myorder">
			<div class="myoptions">
				<ul>
					<li class="ordertitle">需求名称</li>
					<li class="orderprice">我的预算</li>
					<li class="ordertime">发布时间</li>
					<li class="orderstate">需求状态</li>
					<li class="orderoptions">订单操作</li>
				</ul>
			</div>
			<div class="order-details-div order-item J-order-item">
				<c:forEach var="dem" items="${pageInfo.list}" varStatus="s">
					<div class="myorder-div">
						<div class="myorder">
							<div>需求编号：${dem.demandID}</div>
							<div class="myoptions">
								<ul>
									<li class="ordertitle"><a class="list-task-title"
										title="${dem.demandTitle}"
										href="Portal/demandDetailsList.action?demandID=${dem.demandID}"
										target="_blank">${dem.demandTitle }</a></li>
									<li class="orderprice">￥：${dem.demandPrice}</li>
									<li class="ordertime">${dem.releaseTime}</li>
									<li class="orderstate"><c:choose>
											<c:when test="${dem.demandstatusid == 2}">
														投标进行中<br>
														截止时间为：${dem.asoftTime}
													</c:when>
											<c:when test="${dem.demandstatusid == 4}">已截标</c:when>
											<c:when test="${dem.demandstatusid == 5}">服务商努力完成需求中</c:when>
											<c:when test="${dem.demandstatusid == 6}">作品已完成，请确认后付款</c:when>
											<c:when test="${dem.demandstatusid == 7}">交易成功</c:when>
										</c:choose></li>
									<li class="orderoptions"><a class="btn btn-info btn-sm"
										target="_blank"
										href="Portal/demandDetailsList.action?demandID=${dem.demandID}">详情</a>
										<c:choose>
											<c:when test="${dem.demandstatusid == 4}">
												<button class="btn btn-info btn-sm"
													onclick="openBidServerModel(${dem.demandID})">投标者</button>
											</c:when>
											<c:when test="${dem.demandstatusid == 5}">
												<a class="btn btn-info btn-sm" target="_blank"
													href="${dem.tenderID}">服务商详情</a>
											</c:when>
											<c:when test="${dem.demandstatusid == 6}">
												<button class="btn btn-info btn-sm"
													onclick="confirmReceipt(${dem.demandID},${dem.demandPrice},${dem.tenderID})">确认收货</button>
											</c:when>
											<c:when test="${dem.demandstatusid == 7}">
												<a class="btn btn-info btn-sm" target="_blank"
													href="${dem.demandID}">评价</a>
											</c:when>
										</c:choose></li>
								</ul>
							</div>
						</div>
						<div class="J-order-details">
							<div class="order-proccess J-proccess">
								<div class="proccess-line" style="width: 70.2%;">
									<c:choose>
										<c:when test="${dem.demandstatusid == 6}">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 100%; height: 1px;">
												<span class="sr-only">100% 完成</span>
											</div>
										</c:when>
										<c:otherwise>
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 50%; height: 1px;">
												<span class="sr-only">40% 完成</span>
											</div>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="proccess-details">
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">发布需求</div>
										<div class="content-time">${dem.releaseTime}</div>
									</div>
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">服务商参与</div>
										<div class="content-time">2018-06-08</div>
									</div>
									<div class="sub-content-wrap" style="width: 32%;">
										<div class="content">交易关闭</div>
										<div class="content-time">2018-06-08</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="page">
				<div>
					共${pageInfo.getPages()}页,有${pageInfo.total}条投标数
					<c:choose>
						<c:when test="${!pageInfo.hasPreviousPage}">
							<span class="prev">上一页</span>
						</c:when>
						<c:otherwise>
							<a class="prev" href="javascript:void(0);"
								onclick="changePage(${pageInfo.getPrePage()})">上一页</a>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${pageInfo.pageNum <= 2}">
							<c:if test="${pageInfo.pageNum != 1}">
								<a class="num" href="javascript:void(0);"
									onclick="changePage(${pageInfo.pageNum-1})"><c:out
										value="${pageInfo.pageNum-1}"></c:out> </a>
							</c:if>
							<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
							<c:forEach begin="1" step="1" end="4" var="num">
								<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
									<a class="num" href="javascript:void(0);"
										onclick="changePage(${pageInfo.pageNum+num})"><c:out
											value="${pageInfo.pageNum+num}"></c:out> </a>
								</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<a class="num" href="javascript:void(0);"
								onccick="changePage(${pageInfo.pageNum-1})"><c:out
									value="${pageInfo.pageNum-1}"></c:out> </a>
							<span class="current"><c:out value="${pageInfo.pageNum}"></c:out></span>
							<c:forEach begin="1" step="1" end="4" var="num">
								<c:if test="${pageInfo.pages - pageInfo.pageNum - num>= 0}">
									<a class="num" href="javascript:void(0);"
										onclick="changePage(${pageInfo.pageNum+num})"><c:out
											value="${pageInfo.pageNum+num}"></c:out> </a>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${!pageInfo.hasNextPage}">
							<span class="next">下一页</span>
						</c:when>
						<c:otherwise>
							<a class="next" href="javascript:void(0);"
								onclick="changePage(${pageInfo.getNextPage()})">下一页</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>





		</div>
	</div>
	</div>
	</div>
	</div>
	<%@include file="/end.jsp"%>
	<div style="display: none;" id="bidServer">
		<table class="table table-hove" id="bidServerTable">
			<tr>
				<th>服务商名称</th>
				<th>选择中标者</th>
			</tr>
		</table>
	</div>
	<script type="text/javascript" src="./lib/layui/layui.js"
		charset="utf-8"></script>
	<script type="text/javascript" src="./js/xadmin.js"></script>
	<script type="text/javascript">
			function openBidServerModel(demandID){
				var demands = {"demandID":demandID};
				 $.ajax({
		       			url:"BusiManage/findTender.action",
		       			type:"post",
		       			dataType:"text",
		       			contentType:"application/json;charset=utf-8",
		       			data:JSON.stringify(demands),
		       			async:true,
		       			success:function(msg){//
		       				var tablevody = $("#bidServerTable");
		       				$("#bidServerTable tr:not(:first)").remove();
		       				var serverList = eval('(' + msg + ')');
		       				for (var i = 0; i < serverList.length; i++) {
		       					tablevody.append("<tr class='success'>"
		       							+"<td>"+serverList[i].userName+"</td>"
		       							  +"<td>"
		       							    +"<button class='btn btn-info btn-sm' onclick='chooseTender("+serverList[i].userID+","+demandID+")'>中标</button>"
										  +"</td>"
		       							+"</tr>");	
		       				}
		       			}
		       		})
				layer.open({
		  		      type: 1,
		  		      title:"请选择服务商作为中标者",
		  		      area: ['500px', '380px'],
		  		      shadeClose: false, //点击遮罩关闭
		  		      content: $('#bidServer')
		  		    });
			}
// 			选择中标者
			function chooseTender(serverID,demandID){
				alert(serverID+"    "+demandID);
				layer.confirm("是否确定选择该服务商为中标者？",function(index){
					var demands = {"demandID":demandID,"tenderID":serverID};
					$.ajax({
		       			url:"BusiManage/chooseTender.action",
		       			type:"post",
		       			dataType:"text",
		       			contentType:"application/json;charset=utf-8",
		       			data:JSON.stringify(demands),
		       			async:true,
		       			success:function(msg){//
		       				if (msg == "success") {
								layer.confirm("成功选择服务商",function(index){
									layer.closeAll();
									window.location.reload();
								});
							}else if (msg == "error") {
								layer.confirm("操作失败",function(index){
									layer.closeAll();
								});
							}
		       			}
		       		})
					layer.closeAll();
				})
			}
// 			确认收获
			function confirmReceipt(demandID,demandPrice,tenderID){
				layer.confirm("是否确定收货?如若确定，会支付货款，请仔细校验！",function(index){
					var demands = {"demandID":demandID,"demandPrice":demandPrice,"tenderID":tenderID};
					$.ajax({
		       			url:"BusiManage/confirmReceipt.action",
		       			type:"post",
		       			dataType:"text",
		       			contentType:"application/json;charset=utf-8",
		       			data:JSON.stringify(demands),
		       			async:true,
		       			success:function(msg){//
		       				if (msg == "ConfirmSuccess") {
								layer.confirm("确认收货！付款成功！",function(index){
									layer.closeAll();
									window.location.reload();
								});
							}else if (msg == "NotEnough") {
								layer.confirm("付款失败",function(index){
									layer.closeAll();
								});
							}
		       			}
		       		})
				});
			}
			
	</script>
</body>
</html>