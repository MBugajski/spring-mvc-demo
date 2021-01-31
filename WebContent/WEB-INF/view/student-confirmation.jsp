<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>

<title>Student Confirmation</title>

</head>

<body>

	The student is confirmed: ${student.firstName} ${student.lastName} 
	
	<br><br>

	Year of study: ${student.year}

	<br><br>
	
	Student ID: ${student.studentId}
	
	<br><br>

	Postal code: ${student.postalCode}
	
	<br><br>
	
	Country: ${student.country}
	
	<br><br>
	
	Favorite language: ${student.favoriteLanguage}
	
	<br><br>
	
	Operating systems:
	
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}">
			<li>${temp}</li>
		</c:forEach>
	</ul>

<hr>

	<a href="/spring-mvc-demo">Back</a>
	
</body>

</html>