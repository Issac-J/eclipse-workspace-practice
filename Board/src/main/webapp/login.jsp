<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web Board</title>
		<link rel="stylesheet" type="text/css" href="./css/login-style.css">
	</head>
	<body>
    <div class="container">
      <h1 class="content__title">LogIn</h1>

      <form class="form login" action="loginAction.jsp" method="POST">
        <div class="form__field">
          <label for="login__userid">
            <img class="icons" alt="" src="./images/icons8-user-48.png" />
          </label>
          <input
            type="text"
            id="login__userid"
            class="form__input"
            name="userId"
            placeholder="userid"
          />
        </div>

        <div class="form__field">
          <label for="login__password">
            <img class="icons" alt="" src="./images/icons8-password-48.png" />
          </label>
          <input
            type="password"
            id="login__password"
            class="form__input"
            name="userPw"
            placeholder="Password"
          />
        </div>

        <div class="form__field">
          <input type="submit" value="Sign In" />
        </div>
        
        <div class="form__field">
          <a class="signup" href="./join.jsp">Sign Up</a>
        </div>
      </form>
    </div>
  </body>
</html>