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
    
    <%
    	UserDAO userDAO = new UserDAO();
    	int result = userDAO.login(user.getUserId(), user.getUserPw());
    	
    	if(result == 1) {
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("location.href = 'main.jsp'");
    		script.println("</script>");
    	}
    	
    	else if(result == 0) {
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('비밀번호가 틀립니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    	
    	else if(result == -1) {
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('아이디가 존재하지 않습니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    	
    	else if(result == -2) {
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('데이터베이스 오류가 발생했습니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    %>
  </body>
</html>