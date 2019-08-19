<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="H-ui.admin-master/lib/html5shiv.js"></script>
<script type="text/javascript" src="H-ui.admin-master/lib/respond.min.js"></script>
<![endif]-->
<link href="H-ui.admin-master/static/h-ui/css/H-ui.min.css"
	rel="stylesheet" type="text/css" />
<link href="H-ui.admin-master/static/h-ui.admin/css/H-ui.login.css"
	rel="stylesheet" type="text/css" />
<link href="H-ui.admin-master/static/h-ui.admin/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="H-ui.admin-master/lib/Hui-iconfont/1.0.8/iconfont.css"
	rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="H-ui.admin-master/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>后台登录 CSDN</title>
</head>
<body>
	<div class="loginWraper">
		<div id="loginform" class="loginBox">
			<form class="form form-horizontal" action="LoginServlet" method="post">
				<div class="row cl">
					<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
					<div class="formControls col-xs-8">
						<input name="username" type="text" placeholder="Usernames"
							class="input-text size-L" >
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
					<div class="formControls col-xs-8">
						<input name="userpass" type="password" placeholder="Password"
							class="input-text size-L"  >
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
					<div class="formControls col-xs-8">
						<input id="t1" name="u" onblur="but()" class="input-text size-L" type="text" placeholder="验证码"
							 value="验证码:" style="width: 150px;"> 
							<span id="discode"></span>
							<a id="kanbuq" href="javascript:;" class="c" onClick="createCode()" class="c">看不清，换一张</a>
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<label for="online"> <input type="checkbox" name="online"
							id="online" value=""> 记住我
						</label>
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<button type="submit" class="btn btn-success radius size-L">&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;</button>
						<button type="reset" class="btn btn-default radius size-L">&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="footer">Copyright CSDN</div>
	<script type="text/javascript"
		src="H-ui.admin-master/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="H-ui.admin-master/static/h-ui/js/H-ui.min.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script language="javascript">
		createCode();
		var code; //在全局 定义验证码
		function createCode() { //创建验证码函数
			code = "";
			var codeLength = 4;//验证码的长度
			var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b',
					'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
					'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');//所有候选组成验证码的字符，当然也可以用中文的
			for (var i = 0; i < codeLength; i++) {
				var charIndex = Math.floor(Math.random() * 36);
				code += selectChar[charIndex];
			}
			// 设置验证码的显示样式，并显示
			document.getElementById("discode").style.fontFamily = "Fixedsys"; //设置字体
			document.getElementById("discode").style.letterSpacing = "5px"; //字体间距
			document.getElementById("discode").style.color = "#0ab000"; //字体颜色
			document.getElementById("discode").innerHTML = code; // 显示
		}
		function but() {//验证验证码输入是否正确
			var val1 = document.getElementById("t1").value;
			var val2 = code;
			if (val1 != val2) {
				alert("验证码错误!");
				document.getElementById('t1').value = "";
			}
		}
	</script>
</body>
</html>