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
<body>
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
					<li><a href="jobshow.jsp" target="_blank">我的工作</a></li>
					<li class="current"><a href="#">我的简历</a></li>
					<li><a href="positionGround.jsp" target="_blank">职位广场</a></li>
					<li><a href="login.jsp" target="_blank">登录</a></li>
					<li><a href="register.jsp" target="_blank">注册</a></li>

				</ul>
				</nav>
			</div>
		</div>
		</header>
		<div class="panel panel-default mt-20"
			style="width: 85%; margin: 10px 100px">
			<c:if test="${empty requestScope.user }">
					<c:redirect url="OneUserServlet"></c:redirect>
				</c:if>
			<TABLE style="width: 85%; margin: 50px 70px" border="3"
				cellspacing="0">
				<tr>
					<td colspan='7' height='40' align='center'><h3>个人简历</h3></td>
				</tr>
				<tr>
					<td align='center' width='100' height='50'>姓名</td>
					<td width='100' >${user.userName }</td>
					<td width='100' align='center'>性别</td>
					<td width='100' >${user.userSex }</td>
					<td width='100' align='center'>出生日期</td>
					<td width='100' >${user.userDate }</td>
					<td width='100' rowspan='3'></td>
				</tr>
				<tr>
					<td align='center' width='100' height='50'>民族</td>
					<td width='100' >${user.userNation }</td>
					<td align='center' width='100' >政治面貌</td>
					<td width='100' >${user.userPStatus }</td>
					<td align='center' width='100' >学历</td>
					<td width='100' >${user.userRecord }</td>
				</tr>
				<tr>
					<td align='center' width='100' height='50'>专业</td>
					<td width='100' >${user.userMajor }</td>
					<td align='center' width='100' >毕业学校</td>
					<td width='100' >${user.userSchool}</td>
					<td align='center' width='100' >户口</td>
					<td width='100'>${user.userAdress}</td>
				</tr>
				<tr>
					<td align='center' width='100'height='50' >联系电话</td>
					<td width='100' colspan='2' >${user.userTel }</td>
					<td align='center' width='100' >身份证号</td>
					<td colspan='3'>${user.userIDCard }</td>
					</td>
				</tr>
				<tr>
					<td colspan='7' height='40' align='center' >就业方向</td>
				</tr>
				<tr>
					<td colspan='7' height='80'>${user.userWantJob }</td>
				</tr>
				<tr>
					<td colspan='7' height='40' align='center' >教育经历</td>
				</tr>
				<tr>
					<td colspan='7' height='100'>${user.userEdu }</td>
				</tr>
				<tr>
					<td colspan='7' height='40' align='center'>工作经历</td>
				</tr>
				<tr>
					<td colspan='7' height='120' >${user.userExperience }</td>
				</tr>
				<tr>
					<td colspan='7' height='40' align='center' >自我评价</td>
				</tr>
				<tr>
					<td colspan='7' height='120'>${user.userExperience }</td>
				</tr>
			</TABLE>
		</div>
</body>
</html>