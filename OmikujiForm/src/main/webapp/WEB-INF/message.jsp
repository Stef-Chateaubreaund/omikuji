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
<title>Message Page</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
	
 
</head>
<body>
    <div class="container"> 
    
        <h1 >Here's Your Omikuji!</h1>
        <div class="bg-primary">
          <p>In  <c:out value="${years}"/> years, you will be in 
        <c:out value="${city}"></c:out>
        with
        <c:out value="${name}"></c:out>
        as your roommate
        <c:out value="${hobby}"></c:out>
        for a living. The next time you see a
        <c:out value="${thing}"></c:out>
        Also,         
        <c:out value="${message}"></c:out>
        </p>
        </div>
      
        <a href="/">voltar</a>
    </div> <!-- End of Container -->
</body>
</html>