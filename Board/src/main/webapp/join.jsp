<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Web Board</title>
		<link rel="stylesheet" type="text/css" href="./css/join-style.css">
	</head>
	<body>
    <div class="container">
      <h1 class="content__title">Sign Up</h1>

      <form class="form join" action="joinAction.jsp" method="POST">
      
      	<div class="form__field">
          <label for="join__userid">
            <img class="icons" alt="" src="./images/icons8-user-48.png" />
          </label>
          <input
            type="text"
            id="join__userid"
            class="form__input"
            name="userId"
            placeholder="ID"
          />
        </div> 
      
        <div class="form__field">
          <label for="join__password">
            <img class="icons" alt="" src="./images/icons8-password-48.png" />
          </label>
          <input
            type="password"
            id="join__password"
            class="form__input"
            name="userPw"
            placeholder="Password"
          />
        </div>
        
        <div class="form__field">
          <label for="join__username">
            <img class="icons" alt="" src="./images/icons8-user-48.png" />
          </label>
          <input
            type="text"
            id="join__username"
            class="form__input"
            name="userName"
            placeholder="userName"
          />
        </div>
        
        <div class="form__field">
          <label for="join__useremail">
            <img class="icons" alt="" src="./images/icons8-email-48.png" />
          </label>
          <input
            type="email"
            id="join__useremail"
            class="form__input"
            name="userEmail"
            placeholder="Email"
          />
        </div>
        
        <div class="form__field">
          <label for="join__usergender">
            <img class="icons" alt="" src="./images/icons8-male-50.png" />
            <input type="checkbox" id="join__usergender" class="form__input" name="usermale" />
          </label>
          
          <label for="join__usergender">
            <img class="icons" alt="" src="./images/icons8-female-50.png" />
            <input type="checkbox" id="join__usergender" class="form__input" name="userfemale" />
          </label>
        </div>

        <div class="form__field">
          <input type="submit" value="Sign Up" />
        </div>
      </form>
    </div>
  </body>
</html>