<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>

<title>Student Registration Form</title>

</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name (*): <form:input path="firstName" />
		<form:errors path="firstName" cssClass="error" />
		
		<br><br>
		
		Last name (*): <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		
		<br><br>
	
		<form:select path="country">
		
			<form:option value="France" label="France"/>
			<form:option value="Brazil" label="Brazil"/>
			<form:option value="Germany" label="Germany"/>
			<form:option value="Poland" label="Poland"/>
			<form:option value="Spain" label="Spain"/>
			
		</form:select>
		
		<br><br>
		
		<form:select path="country">
		
			<form:options items="${student.countryOptions}"/>
			
		</form:select>
		
		<br><br>
		
		<form:select path="country"> 
	
    		 <form:options items="${theCountryOptions}" />
    	 
    	</form:select>
    
		<br><br>
		
		Favorite language:
		
		Java <form:radiobutton path="favoriteLanguage" value="Java" />
		PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		C# <form:radiobutton path="favoriteLanguage" value="C#" />
		
		
		<br><br>

		Operating systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Windows <form:checkbox path="operatingSystems" value="Windows" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />

		<br><br>
		
		<input type="submit" value="Submit" />
		
		
		
	</form:form>
	
	
	


<hr>

	<a href="/spring-mvc-demo">Back</a>

</body>

</html>