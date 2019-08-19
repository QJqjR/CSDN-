<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.name==null}">
 	欢迎，游客<a href="login.jsp">请登录</a>
		</c:when>
		<c:when test="${sessionScope.name=='admin'}">
 	欢迎，管理员
 	</c:when>
		<c:otherwise>
 	欢迎，${sessionScope.name}
 	</c:otherwise>
	</c:choose>
	<br>
	<c:if test="${empty requestScope.currentPage }">
	<c:redirect url="UserSearchServlet"></c:redirect>
	</c:if>
	<form action="UserSearchServlet" method="post">
	<table border="1">
		<tr>
			<td>ID</td>
			<td>用户名</td>
			<td>密码</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
		<c:forEach var="user1" items="${requestScope.userList}" varStatus="i"
			step="1">
			<tr>
				<td>${i.index+1}</td>
				<td>${user1.userName}</td>
				<td>${user1.userPass}</td>
				<td>${user1.userStatus==0?"正常":"删除"}</td>
				<td><a href="ToUpdateUserServlet?id=${user1.id}">修改</a>
				    <a href="DeleteUserServelt?id=${user1.id}">删除</a></td>
		</c:forEach>
		
		   <tr>
		  		<td colspan="5" align="center">
		  		<c:if test="${requestScope.currentPage!=1 }">
			  		<a href="UserSearchServlet?currentPage=${currentPage-1}">上一页</a>
			  	</c:if>
			  	<c:if test="${requestScope.currentPage!=totalPage }">
 					<a href="UserSearchServlet?currentPage=${currentPage+1}">下一页</a>
				</c:if>	
				</td>
			</tr>
		</table>
		</form>
</body>
</html>