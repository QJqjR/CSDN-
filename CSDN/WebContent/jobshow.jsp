<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css"
	href="H-ui-master/static/h-ui/css/H-ui.css" />
<link rel="stylesheet" type="text/css"
	href="H-ui-master/lib/Hui-iconfont/1.0.8/iconfont.min.css" />
<title>jobShow</title>
</head>
<body >
	<div class="containBox">
		<header class="navbar-wrapper">
		<div class="navbar navbar-black navbar-fixed-top"
			style="background-color: #8470FF">
			<div class="container cl">
				<a class="logo navbar-logo hidden-xs" href="/aboutHui.shtml">CSDN</a>
				<a class="logo navbar-logo-m visible-xs" href="/aboutHui.shtml">招聘网站</a>
				<span class="logo navbar-slogan hidden-xs">简单 &middot; 方便
					&middot; 特懂程序员的网站</span> <a aria-hidden="false"
					class="nav-toggle Hui-iconfont visible-xs JS-nav-toggle"
					href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav nav-collapse" role="navigation"
					id="Hui-navbar">
				<ul class="cl">
					<li class="current"><a href="#">我的工作</a></li>
					<li><a href="myresume.jsp"
						target="_blank">我的简历</a></li>
					<li><a href="positionGround.jsp"
						target="_blank">职位广场</a></li>
					<li><a href="login.jsp" target="_blank">登录</a></li>
					<li><a href="register.jsp" target="_blank">注册</a></li>
					
				</ul>
				</nav>
			</div>
		</div>
		</header>
		<div style="margin: 20px 100px;">
			<img
				src="https://hstatic.hirede.com/lbd/images/countdown-8aza/countdown-csdn-6.png">
		</div>
		<div class="panel panel-default mt-20" style="width:84.5%;margin-left:100px;">
			<div class="panel-header clearfix"></div>
			<div class="panel-body" >
				<c:if test="${empty requestScope.currentPage }">
					<c:redirect url="JobSearchServlet"></c:redirect>
				</c:if>
				<form action="JobSearchServlet" method="post">
					<table class="table table-border table-bordered table-bg">
						<c:forEach var="job1" items="${requestScope.jobList}"
							varStatus="i" step="1">
							<tr>
								<td><img src="${job1.comLogo}"></td>
								<td>${job1.comPosition}</td>
								<td>${job1.comName}</td>
								<td>${job1.comSalary}</td>
								<td>${job1.comTime}</td>
								<td><a href="comshow.jsp" class="btn btn-success radius">我要应聘</a></td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="10" align="center">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<c:if test="${requestScope.currentPage!=1 }">
									<a href="JobSearchServlet?currentPage=${currentPage-1}"
										class="btn btn-secondary radius">上一页</a>
								</c:if> <c:if test="${requestScope.currentPage!=totalPage }">
									<a href="JobSearchServlet?currentPage=${currentPage+1}"
										class="btn btn-secondary radius">下一页</a>
								</c:if>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div
		style="width: 1170px; height: 200px; margin: auto; margin-top: 10px; background: url(http://job.csdn.net/Content/csdnjob/images/find_job.png);">
	</div>

	<div style="clear: both;"></div>
	<div
		style="width: 100%; height: 140px; background-color: #ffffff; margin-top: 30px">
		<div style="width: 73%; height: 100%; float: right;">
			<h4>关于我们&nbsp;&nbsp;|&nbsp;&nbsp;招聘&nbsp;&nbsp;|&nbsp;&nbsp;广告服务&nbsp;&nbsp;|&nbsp;&nbsp;网址地图</h4>
			<h5>
				QQ客服&nbsp;&nbsp;|&nbsp;&nbsp; <i
					class="glyphicon glyphicon-envelope"></i>
				&nbsp;kefu@csdn.net&nbsp;&nbsp;|&nbsp;&nbsp; <i
					class="glyphicon glyphicon-globe"></i>
				客服论坛&nbsp;&nbsp;|&nbsp;&nbsp; <i
					class="glyphicon glyphicon-phone-alt"></i>
				&nbsp;400-660-0108&nbsp;&nbsp;|&nbsp;&nbsp;工作时间 8：00-22：00
			</h5>
			<h5>百度提供站内搜索&nbsp;&nbsp;&nbsp;&nbsp;京ICP证09002463号</h5>
			<h5>©2018 北京创新乐知信息技术有限公司版权所有</h5>
			<h5>经营性网站备案信息 网络110报警服务 中国互联网举报中心 北京互联网违法和不良信息举报中心</h5>
		</div>
	</div>
</body>
</html>