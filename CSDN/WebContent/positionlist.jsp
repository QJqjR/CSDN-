<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<title>图片列表</title>
</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	职位管理 <span class="c-gray en">&gt;</span> 职位列表 <a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
		<div class="text-c">
			日期范围： <input type="text"
				onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })"
				id="logmin" class="input-text Wdate" style="width: 120px;">
			- <input type="text"
				onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })"
				id="logmax" class="input-text Wdate" style="width: 120px;">
			<input type="text" name="" id="" placeholder=" 图片名称"
				style="width: 250px" class="input-text">
			<button name="" id="" class="btn btn-success" type="submit">
				<i class="Hui-iconfont">&#xe665;</i> 搜职位
			</button>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a> <a class="btn btn-primary radius"
				onclick="picture_add('添加职位','positionadd.jsp')" href="javascript:;"><i
					class="Hui-iconfont">&#xe600;</i> 添加职位</a></span> 
		</div>
		<div class="mt-20">
			<c:if test="${empty requestScope.business }">
			<c:redirect url="MyCompanyPositionSearcher"></c:redirect>
		</c:if>
		<font color="orange">&nbsp;&nbsp;${msg }</font>
			<table
				class="table table-border table-bordered table-bg table-hover table-sort">
				<thead>
					<tr class="text-c">
						<th width="40"><input name="" type="checkbox" value=""></th>
						<th width="150">公司logo</th>
						<th width="130">公司名称</th>
						<th width="100">招聘职位</th>
						<th width="80">薪资</th>
						<th width="80">招聘人数</th>
						<th width="150">更新时间</th>
						<th width="80">学历要求</th>
						<th width="80">就业地点</th>
						<th width="60">发布状态</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="business1" items="${requestScope.business}"
			varStatus="i" step="1">
					<tr class="text-c">
						<td><input name="" type="checkbox" value=""></td>
						<td><img src="${business1.businessLogo}"></td>
						<td>${business1.businessName }</td>
						<td>${business1.businessType }</td>
						<td>${business1.businessSalary }</td>
						<td>${business1.businessNum}</td>
						<td>${business1.businessTime }</td>
						<td>${business1.businessEducation }</td>
						<td>${business1.businessAdress }</td>	
						<td class="td-status"><span
							class="label label-success radius">已发布</span></td>
						<td class="td-manage"><a style="text-decoration: none"
							onClick="picture_stop(this,'10001')" href="javascript:;"
							title="下架"><i class="Hui-iconfont">&#xe6de;</i></a> 
							
							<a style="text-decoration: none" class="ml-5"
							href="ToUpdate?name=${business1.businessName}&type=${business1.businessType}"
							title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
						  							
							 <a style="text-decoration: none" class="ml-5"
							 href="PositionDelServlet?name=${business1.businessName}&type=${business1.businessType}" title="删除">
							 <i class="Hui-iconfont">&#xe6e2;</i></a></td>
						</tr> 
						</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript"
		src="H-ui.admin-master/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="H-ui.admin-master/lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/lib/datatables/1.10.15/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		$('.table-sort').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 8 ]
			} // 制定列不参与排序
			]
		});

		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-查看*/
		function picture_show(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-审核*/
		function picture_shenhe(obj, id) {
			layer
					.confirm(
							'审核文章？',
							{
								btn : [ '通过', '不通过' ],
								shade : false
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布', {
									icon : 6,
									time : 1000
								});
							},
							function() {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-danger radius">未通过</span>');
								$(obj).remove();
								layer.msg('未通过', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*图片-下架*/
		function picture_stop(obj, id) {
			layer
					.confirm(
							'确认要下架吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-defaunt radius">已下架</span>');
								$(obj).remove();
								layer.msg('已下架!', {
									icon : 5,
									time : 1000
								});
							});
		}

		/*图片-发布*/
		function picture_start(obj, id) {
			layer
					.confirm(
							'确认要发布吗？',
							function(index) {
								$(obj)
										.parents("tr")
										.find(".td-manage")
										.prepend(
												'<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
								$(obj)
										.parents("tr")
										.find(".td-status")
										.html(
												'<span class="label label-success radius">已发布</span>');
								$(obj).remove();
								layer.msg('已发布!', {
									icon : 6,
									time : 1000
								});
							});
		}

		/*图片-申请上线*/
		function picture_shenqing(obj, id) {
			$(obj).parents("tr").find(".td-status").html(
					'<span class="label label-default radius">待审核</span>');
			$(obj).parents("tr").find(".td-manage").html("");
			layer.msg('已提交申请，耐心等待审核!', {
				icon : 1,
				time : 2000
			});
		}

		/*图片-编辑*/
		function picture_edit(title, url, id) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}

		/*图片-删除*/
		function picture_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : '',
					dataType : 'json',
					success : function(data) {
						$(obj).parents("tr").remove();
						layer.msg('已删除!', {
							icon : 1,
							time : 1000
						});
					},
					error : function(data) {
						console.log(data.msg);
					},
				});
			});
		}
	</script>
</body>
</html>