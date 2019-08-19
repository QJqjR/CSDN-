<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content=""/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/fontawesome-all.css">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
	<link href="http://maxcdn.bootstrapcdn.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>
<body>
	<div id="bg">
		<canvas></canvas>
		<canvas></canvas>
		<canvas></canvas>
	</div>
	<h1>欢迎登陆</h1>
	<div class="sub-main-w3">
		<form action="UserLoginServlet" method="post">
			<h2>Login Now
				<i class="fas fa-level-down-alt"></i>
			</h2>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-user"></i>
					Username
				</label>
				<font color="orange">&nbsp;&nbsp;${error }</font>
				<input placeholder="Username" name="username" type="text" value="${cookie.username.value }" />
			</div>
			<div class="form-style-agile">
				<label>
					<i class="fas fa-unlock-alt"></i>
					Password
				</label>
				<input placeholder="Password" name="userpass" type="password" value="${cookie.userpass.value }" />
				
			</div>
			<div class="wthree-text">
				<ul>
					<li>
						<a href="register.jsp">注册</a>
					</li>
					<li>
						<a href="#">忘记密码?</a>
					</li>
				</ul>
			</div>
			<input type="submit" value="登录">
		</form>
	</div>
	<div class="footer">
		<p>Copyright &copy; 2018.Company name All rights reserved.</p>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/canva_moving_effect.js"></script>
</form>
</body>
</html>