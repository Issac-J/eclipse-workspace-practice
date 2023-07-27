<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Import UserDAO -->
<%@ page import="user.UserDAO" %>

<!-- Login 페이지르부터 전달받은 값을 Setting -->
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPw" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userGender" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web Board</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
    <%
    	session.invalidate();
	   %>
	   <script>
	  		// login 페이지로 돌아가도록 한다.
	   		location.href = 'login.jsp';
	   </script>
  </body>
</html>