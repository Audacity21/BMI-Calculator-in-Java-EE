<%@page import="com.entity.OverWeight"%>
<%@page import="com.entity.UnderWeight"%>

<%@page import="com.entity.Healthy"%>
<%@page import="com.controller.LoginData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.entity.Calorie" %>
<%@ page import="java.util.*" %>
<%@ page import="com.model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutrition chart</title>
<script src="https://kit.fontawesome.com/21e0291c53.js" crossorigin="anonymous"></script>

<style>
body{
  	background-color: #d8efeb;
  	font-family: 'Fredoka', sans-serif;
	font-family: 'Lato', sans-serif;
  
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  margin-top: 30px;
  margin-left: 60px;
  margin-right: 60px;
  
}

#customers td, #customers th {
  border: 2px solid gray;
  padding: 8px;

  
}

#customers tr:nth-child(even){background-color: #C4DFAA;}
#customers tr:nth-child(odd){background-color: #90C8AC;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #73A9AD;
  color: white;
}

.cap{
  font-weight: bolder;
  font-size: bolder;
  color: black;
  font-family: 'Poppins',sans-serif;
  background-color: #64d6cb;
  height: 30px;
  
}

.cap h4{
margin-top:5px;
font-size: 20px;
}

a {
    text-decoration: none;
    color:#1e8449;
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

</style>


</head>

<% session.setAttribute("res", BmiModel.set); %>
<% session.setAttribute("uname", LoginData.uname); %>

<body>

<h1 style="text-align: center;">Diet chart for ${ uname }</h1>
<%

NutritionModel nr = new NutritionModel();
List<UnderWeight> list;
    list = nr.detailsunderWeight();
    
%>

 
  <table  border="1" id="customers">

    <tr>
      <th> DAY</th>
      <th> BREAKFAST</th>
      <th> MID-MEAL</th>
      <th> LUNCH</th>
      <th> EVENING</th>
      <th> DINNER</th>
    </tr>
    
   
    
     <% for(UnderWeight h: list)  { %>
    
    
      <tr>
        <td><%=h.getDay() %></td>
        <td><%=h.getBreakfast() %></td>
        <td><%=h.getMidMeal() %></td>
        <td><%=h.getLunch()  %></td>
        <td><%=h.getEvening() %></td>
        <td><%=h.getDinner() %></td>
      </tr>
      <% } %>
    
  </table>
  <input style="justify-content: center;" type="submit" value="print" onClick="window.print()"/>
</body>
</html>