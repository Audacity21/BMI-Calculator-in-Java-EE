<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
</head>
<body>
	<section class="section-login">
  <div class="container">
    <div class="form-container">

      <form class="form" action="LoginData" method="get">
        <div class="form-control">
          <input type="text" name="t1" class="input username" placeholder="Username" required />
        </div>
        <div class="form-control">
          <input type="password" name="t2" class="input password" placeholder="Password" required />
        </div>
        <button type = "submit" class="btn btn-login">Log In</button>
      </form>

      <div class="sign-up">
        <h2 class="text">Don't have an Account?</h2>
        <a href="register.jsp"><button class="btn btn-sign-up">Sign Up</button></a>
      </div>

    </div>
  </div>
</section>
</body>
<style>
	@import url("https://fonts.googleapis.com/css2?family=Signika+Negative:wght@300;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body,
.section-login .form-container .form input,
.section-login .form-container .form button {
  font-family: "Signika Negative", sans-serif;
}

.section-login {
  	background-image: url('v870-tang-36.jpg');
    background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover;
  	font-family: 'Fredoka', sans-serif;
	font-family: 'Lato', sans-serif;
}
.section-login .container {
  padding-left: 15px;
  padding-right: 15px;
  max-width: 800px;
  margin: 0 auto;
  min-height: 100vh;

  display: flex;
  align-items: center;
  justify-content: center;
  margin-left: 650px;
}
.section-login .form-container {
  background-color: #876546;
  padding: 2.5rem 1.5rem;
  flex: 1;
  position: relative;
  min-height: 300px;

  display: flex;
  justify-content: flex-end;
}

.section-login .form-container .form {
  background-color: #fff;
  width: 55%;
  padding: 2rem 1.5rem;
  position: absolute;
  top: 50%;
  left: 1.5rem;
  transform: translateY(-50%);
  min-height: 400px;
  height: 60vh;
  max-height: 700px;

  display: flex;
  flex-direction: column;
  justify-content: center;
  box-shadow: 0 0 25px -5px rgba(0, 0, 0, 0.4);
}

.section-login .form-container .form .form-control {
  margin-bottom: 10px;
}

.section-login .form-container .form .input {
  width: 100%;
  padding: 10px 12px;
  font-weight: 600;
  font-size: 16px;
  border: 1px solid #999;
  outline: none;
  transition: box-shadow 0.2s linear;
}
.section-login .form-container .form .input:focus {
  box-shadow: 0 0 10px -2px rgba(0, 0, 0, 0.1);
}
.section-login .form-container .btn {
  font-size: 18px;
  padding: 12px;
  border-radius: 0px;
  font-weight: bold;
  color: white;
  cursor: pointer;
}
.section-login .form-container .form .btn-login {
  margin-top: 25px;
  border: 1px solid #ca955d;
  background-color: #ca955d;
  box-shadow: 0 5px 15px -5px rgba(0, 0, 0, 0.4);
  transition: box-shadow 0.2s linear;
}
.section-login .form-container .form .btn-login:hover {
  box-shadow: none;
}

.section-login .form-container .sign-up {
  width: 35%;
  text-align: center;
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
}
.section-login .form-container .sign-up .text {
  color: #fff;
  font-size: 28px;
}
.section-login .form-container .sign-up .btn-sign-up {
  padding-left: 20px;
  padding-right: 20px;
  background-color: transparent;
  border: 2px solid white;
  margin-top: 15px;
  font-size: 16px;
  transition: box-shadow 0.2s linear;
}
.section-login .form-container .sign-up .btn-sign-up:hover {
  background-color: rgba(255, 255, 255, 0.5);
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
}

@media screen and (max-width: 600px) {
  .section-login {
    padding: 100px 0;
  }
  .section-login .form-container {
    display: block;
    width: 90%;
    max-width: 400px;
  }
  .section-login .form-container .form,
  .section-login .form-container .sign-up {
    position: static;
    transform: initial;
    width: initial;
  }
  .section-login .form-container .form {
    width: 130%;
    position: relative;
    left: 50%;
    transform: translateX(-50%);
  }
  .section-login .form-container .sign-up {
    margin-top: 50px;
  }
}

</style>
</html>