<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Page</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script type="text/javascript" src="js/app.js"></script>
  <!-- Bootstrap -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous"> -->

</head>
<body>
    <p style="color:pink;font-size:20px;">Send a Omikuji!</p>
    <div class="container"> 

        <form action='/process' method="post">
        <div class="form-group">
  <label for="years"></label>
  <input type="number" min="1" max="25" name="years" class="form-control" id="years"/>
  

</div>
<div class="form-group">
  <label for="city"></label>
  <input type="text" placeholder=" enter a city name" name="city" class="form-control" id="city">
</div>

<div class="form-group">
  <label for="name"></label>
  <input type="text" placeholder=" enter a real name "  name="name" class="form-control" id="name">
</div>
<div class="form-group">
  <label for="hobby"></label>
  <input type="text" placeholder=" enter a cool hobby"  name="hobby" class="form-control" id="hobby">
</div>
  <div class="form-group">
  <label for="thing"></label>
  <input type="text" name="thing" placeholder=" enter any living real thing" class="form-control" id="thing">
</div>
<div class="form-group">
  <label for="message">say something nice to a friend:</label>
  <textarea class="form-control" name="message" id="message" rows="3"></textarea>
</div>

<button> send message to friend</button>
</form>
</div>
   
</body>
</html>