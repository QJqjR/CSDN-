<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="H-ui.admin-master/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="H-ui.admin-master/static/h-ui.admin/css/style.css" />
<title>折线图</title>
</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	统计管理 <span class="c-gray en">&gt;</span> 折线图 <a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
		<div id="container" style="min-width: 700px; height: 400px"></div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="H-ui.admin-master/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="H-ui.admin-master/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="H-ui.admin-master/static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="H-ui.admin-master/static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="H-ui.admin-master/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
	<script type="text/javascript">
		$(function() {
			Highcharts.chart('container', {
				title : {
					text : '职位浏览统计',
					x : -20
				//center
				},
				xAxis : {
					categories : [ '周一','周二','周三','周四','周五','周六','周日']
				},
				yAxis : {
					title : {
						text : '浏览量'
					},
					plotLines : [ {
						value : 0,
						width : 1,
						color : '#808080'
					} ]
				},
				tooltip : {
					valueSuffix : '人'
				},
				legend : {
					layout : 'vertical',
					align : 'right',
					verticalAlign : 'middle',
					borderWidth : 0
				},
				series : [
						{
							name : '程序员',
							data : [ 7, 6, 9, 14, 18, 21, 25 ]
						},
						{
							name : '工程师',
							data : [ 2,8, 5, 11, 7, 22, 24]
						},
						{
							name : '架构师',
							data : [ 9, 6, 5,4, 5, 17, 18 ]
						},
						{
							name : '项目经理',
							data : [ 9, 4, 7, 8, 11, 15, 17 ]
						} ]
			});
		});
	</script>
</body>
</html>