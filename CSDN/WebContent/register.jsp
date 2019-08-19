<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="H-ui-master/static/h-ui/css/H-ui.css" />
<link rel="stylesheet" type="text/css"
	href="H-ui-master/lib/Hui-iconfont/1.0.8/iconfont.min.css" />
</style>
<title>register</title>
</head>
<body>
<div class="container ui-sortable">
			<div class="panel panel-default">
				<div class="panel-header">欢迎注册</div>
				<div class="panel-body">
					<form action="RegisterServlet" method="post" class="form form-horizontal responsive" id="demoform">
						<div class="row cl">
							<label class="form-label col-xs-3">QQ：</label>
							<div class="formControls col-xs-8">
								<input type="text" class="input-text" name="qq" id="qq" autocomplete="off"  pattern="^[1-9][0-9]{4,15}$"  >
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">用户名：</label>
							<div class="formControls col-xs-8">
								<input type="text" class="input-text" placeholder="4~16个字符，字母/中文/数字/下划线" name="username" id="username" >
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">手机：</label>
							<div class="formControls col-xs-8">
								<input type="text" class="input-text" autocomplete="off" placeholder="手机" name="telephone" id="telephone" pattern="^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$" > 
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">密码：</label>
							<div class="formControls col-xs-8">
								<input type="password" class="input-text" autocomplete="off" placeholder="密码" name="userpass" id="userpass" >
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">密码验证：</label>
							<div class="formControls col-xs-8">
								<input type="password" class="input-text" autocomplete="off" placeholder="密码" name="userpass2" id="userpass2" >
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">单选框：</label>
							<div class="formControls skin-minimal col-xs-5">
								<div class="radio-box">
									<input type="radio" id="sex-1" name="sex">
									<label for="sex-1">男</label>
								</div>
								<div class="radio-box">
									<input type="radio" id="sex-2" name="sex">
									<label for="sex-2">女</label>
								</div>
								<div class="radio-box">
									<input type="radio" id="sex-3" name="sex">
									<label for="sex-3">保密</label>
								</div>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">行业：</label>
							<div class="formControls skin-minimal col-xs-5">
								<div class="check-box">
									<input type="checkbox" id="checkbox-5" name="checkbox2">
									<label for="checkbox-5">Java开发</label>
								</div>
								<div class="check-box">
									<input type="checkbox" id="checkbox-6" name="checkbox2">
									<label for="checkbox-6">测试</label>
								</div>
								<div class="check-box">
									<input type="checkbox" id="checkbox-6" name="checkbox2">
									<label for="checkbox-6">C++服务器开发</label>
								</div>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">附件：</label>
							<div class="formControls col-xs-8">
								<span class="btn-upload form-group">
								<input class="input-text upload-url" type="text" name="uploadfile-2" id="uploadfile-2" readonly style="width:200px">
								<a href="javascript:void();" class="btn btn-primary upload-btn"><i class="Hui-iconfont">&#xe642;</i> 上传简历</a>
								<input type="file" multiple name="file-2" class="input-file">
								</span>
							</div>
						</div>
						<div class="row clearfix">
							<label class="form-label col-xs-3">所在城市：</label>
							<div class="formControls col-xs-8">
								<div class="row clearfix" style="margin-top:0">
									<div class="col-xs-6">
										<span class="select-box">
											<select class="select" size="1" name="city">
												<option value="" selected>选择省份</option>
												<option value="1">北京</option>
												<option value="2">上海</option>
												<option value="3">广州</option>
											</select>
										</span>
									</div>
									<div class="col-xs-6">
										<span class="select-box">
											<select class="select" size="1" name="city">
												<option value="" selected>选择城市</option>
												<option value="1">北京</option>
												<option value="2">上海</option>
												<option value="3">广州</option>
											</select>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">备注：</label>
							<div class="formControls col-xs-8">
								<textarea cols="" rows="" class="textarea" name="beizhu" id="beizhu"  placeholder="说点什么...最少输入10个字符"></textarea>
							</div>
						</div>
						<div class="row cl">
							<div class="col-xs-8 col-xs-offset-3">
								<input class="btn btn-primary" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
								<a href="jobshow.jsp" class="btn btn-success radius">取消</a>
							</div>
						</div>
					</form>
				</div>
			</div>
</body>
</html>