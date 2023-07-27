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
    <h1>Welcome Join!</h1>
    <%
    /*
    	String id = request.getParameter("userId");
	    String pw = request.getParameter("userPw");
	    String name = request.getParameter("userName");
	    String email = request.getParameter("userEmail");
	    String gender = request.getParameter("userGender");
    	out.println("아이디: " + id);
    	out.println("비번: " + pw);
    	out.println("이름: " + name);
    	out.println("이메일: " + email);
    	out.println("성별: " + gender);
    */   
   
    	if(user.getUserId() == null || user.getUserPw() == null || user.getUserName() == null || user.getUserEmail() == null || user.getUserGender() == null) {
    		
    		PrintWriter script = response.getWriter();
    		script.println("<script>");
    		script.println("alert('입력이 안 된 사항이 있습니다.')");
    		script.println("history.back()");
    		script.println("</script>");
    	}
    	else {
    		UserDAO userDAO = new UserDAO();
    		
    		int result = userDAO.join(user);
    		
    		if(result == -1) {
    			PrintWriter  script = response.getWriter();
    			script.println("<script>");
    			script.println("alert('이미 존재하는 아이디입니다.')");
    			script.println("history.back()");
    			script.println("</script>");
    		}
    		
    		
    		else {
    			PrintWriter script = response.getWriter();
    			script.println("<script>");
    			script.println("location.href = 'login.jsp'");
    			script.println("</script>");
    			
    		}
    	}
	    %>
  </body>
</html>