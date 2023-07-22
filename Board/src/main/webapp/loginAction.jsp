<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- Import UserDAO -->
<%@ page import="user.UserDAO" %>

<!-- Import PrintWriter -->
<%@ page import="java.io.PrintWriter" %>

<!-- Setting CharacterSet Value "UTF-8" from request -->
<% request.setCharacterEncoding("UTF-8"); %>

<!-- JSP 에서 Java Beans 를 사용하기 위함 -->
<jsp:useBean id="user" class="user.User" scope="page" />

<!-- Login 페이지르부터 전달받은 값을 Setting -->
<jsp:setProperty name="user" property="userId" />
<jsp:setProperty name="user" property="userPw" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web Board</title>
		<link rel="stylesheet" type="text/css" href="./css/style.css">
	</head>
	<body>
    <h1>Welcome Login!</h1>
  </body>
</html>