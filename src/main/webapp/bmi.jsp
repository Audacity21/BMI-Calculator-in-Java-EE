<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.controller.LoginData" %>
<%@page import="com.model.BmiModel" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet Advisor</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <script src="https://kit.fontawesome.com/21e0291c53.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka&family=Lato&display=swap" rel="stylesheet">
</head>
<% boolean t = LoginData.redir;
	session.setAttribute("res", BmiModel.set);
	String str = BmiModel.set;
	session.setAttribute("uname", LoginData.uname);
	if (!t){
		response.sendRedirect(request.getContextPath()+"/login.jsp");
	}
%>
<body>
    <div class="dash-container">
        <div class="header">
            <div class="title"></div>
            <div class="navbar">
            	<i style="font-size: 40px; padding: 20px;" class="fa-solid fa-user"></i>
                <p>${uname}</p>
                 <a href="logout.jsp"><i style="color: red; font-size: 26px; padding-left: 10px;" class="fa-solid fa-right-from-bracket"></i></a>
            </div>
        </div>
         <div class=" max-550">
    	<div class="glass-card">
			<h2>BMI calculator</h2>
		    <p>Enter your height in cm and your weight in kg</p>
		    <form id="form" action="BmiData" method="get">
		      <label for="height">Height (cm)</label>
		      <input type="number" max="200" name="t3" id="height" placeholder="180"><br><br>
		      <label for="weight">Weight (kg)</label>
		      <input type="number" max="300" name="t2" id="weight" placeholder="74.8"><br><br>
		      <input type="submit" value="Submit" class="button">
		    </form>	
    	</div>
    <div><h1>${res}</h1></div>
    
    <% if(str.contains("Underweight")) { %>
          <a href="underweight.jsp">Click here for diet chart</a>
    <% } else if(str.contains("Healthy")) { %>    
          <a href="healthy.jsp">Click here for diet chart</a>
        
    <% } else if(str.contains("Overweight")) { %> 
          <a href="overweight.jsp">Click here for diet chart</a>
    <% } else { %> 
          <a href="obesity.jsp">Click here for diet chart</a>
    <% } %>
    
    <div>
    	<h3>What is the body mass index (BMI)?</h3>
	    <p>
	      The body mass index (BMI) is a measure that uses your height and weight to work out if your weight is healthy.
	      The BMI calculation divides an adult's weight in kilograms by their height in metres squared.
	    </p>
	    <h3>BMI ranges</h3>
	    <p>
	      If your BMI is:
	      <ul style="text-align:left">
	        <li> below 18.5 – you're in the underweight range </li>
	        <li>between 18.5 and 24.9 – you're in the healthy weight range</li>
	        <li>between 25 and 29.9 – you're in the overweight range</li>
	        <li>between 30 and 39.9 – you're in the obese range</li>
	      </ul>
    </div>
	</div>
  </div>
</body>


<style>
*{
  font-family: Arial;

}
body{
  	background-image: url('v870-tang-36.jpg');
    background-repeat: no-repeat;
  	background-attachment: fixed;
  	background-size: cover;
  	font-family: 'Fredoka', sans-serif;
	font-family: 'Lato', sans-serif;
}

.button {
    color: #fff;
    background-color: #003896;
    font-family: Arial, Helvetica, sans-serif;
    cursor: pointer;
    padding: 3%;
    border: none;
    border-radius: 50px;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}
.glass-card {
	 padding: 20px;
	 border-radius: 10px;
	 background-color: #89b0ae;  
	 box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
}
.button:hover {
    background-color: #3c55c2;
    color: #fff;
}

.button:focus {
    outline: 0;
    background-color: #0d1728;
}

.header {
    display: flex;
    justify-content: space-between;
    font-size: 24px;
    color: #3A5743;
    border-radius: 20px;
}
.title {
    padding: 30px;
}
.navbar{
    display: flex;
    margin-right: 70px;
    cursor: pointer;
    align-items: center;
    align-items: right;
}

.max-550 {
    max-width: 500px;
    margin-left: 700px;
    text-align: center;
}
#imcContainer {
  width: 100%;
  border-radius: 5px;
  height: 40px;
  /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#3f51b5+0,009688+11,4caf50+21,8bc34a+29,cddc39+40,ffeb3b+51,ff5722+62,f44336+72,f44336+81,dd2a2a+90,b71c1c+100 */
  background: #3f51b5;
  /* Old browsers */
  background: -moz-linear-gradient(left, #3f51b5 0%, #009688 11%, #4caf50 21%, #8bc34a 29%, #cddc39 40%, #ffeb3b 51%, #ff5722 62%, #f44336 72%, #f44336 81%, #dd2a2a 90%, #b71c1c 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(left, #3f51b5 0%,#009688 11%,#4caf50 21%,#8bc34a 29%,#cddc39 40%,#ffeb3b 51%,#ff5722 62%,#f44336 72%,#f44336 81%,#dd2a2a 90%,#b71c1c 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(to right, #3f51b5 0%,#009688 11%,#4caf50 21%,#8bc34a 29%,#cddc39 40%,#ffeb3b 51%,#ff5722 62%,#f44336 72%,#f44336 81%,#dd2a2a 90%,#b71c1c 100%);
  /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
}

#IMCbar {
  width:0%;
  height: 40px;
  margin-top: -5px;
  border-right: 5px solid #000;
  transition: all 2s ease;
}
</style>
</html>