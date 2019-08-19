<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/static/h-ui.admin/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/static/h-ui.admin/css/style.css" />
<title>我的桌面</title>
</head>
<body>
	<div class="page-container">
		<p class="f-20 text-success">
			欢迎使用CSDN <span class="f-14">v3.1</span>后台模版！
		</p>
		<p>欢迎，${sessionScope.name}管理员</p>
		<c:if test="${empty requestScope.business }">
			<c:redirect url="CompanySeacherServlet"></c:redirect>
		</c:if>
		<table class="table table-border table-bordered table-bg">
			<thead>
				<tr>
					<th colspan="7" scope="col">招聘详情</th>
				</tr>
				<tr class="text-c">
					<th>公司名称</th>
					<th>职位类型</th>
					<th>职位个数</th>
				</tr>
			</thead>
			<c:forEach var="business1" items="${requestScope.business}"
			varStatus="i" step="1">
			<tbody>
				<tr class="text-c">
					<td>${business1.businessName}</td>
					<td>${business1.businessType }</td>
					<td>${business1.businessNum }</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
	<footer class="footer mt-20">
	<div class="container">
		<p>
			感谢jQuery、layer、laypage、Validform、UEditor、My97DatePicker、iconfont、Datatables、WebUploaded、icheck、highcharts、bootstrap-Switch<br>
			Copyright &copy;2015-2017 H-ui.admin v3.1 All Rights Reserved.<br>
			本后台系统由<a href="http://www.h-ui.net/" target="_blank" title="H-ui前端框架">H-ui前端框架</a>提供前端技术支持
		</p>
	</div>
	</footer>
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>
</html>