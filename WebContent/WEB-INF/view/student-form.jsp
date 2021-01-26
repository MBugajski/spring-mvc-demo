<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>Student Registration Form</title>

</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name: <form:input path="lastName" />
		
		<br><br>
	
		<form:select path="">
		
			<form:option value="France" label="France"/>
			<form:option value="Brazil" label="Brazil"/>
			<form:option value="Germany" label="Germany"/>
			<form:option value="Poland" label="Poland"/>
			<form:option value="Spain" label="Spain"/>
			
		</form:select>
		
		<br><br>
		
		<input type="submit" value="Submit" />
		
	</form:form>
	


<hr>

	<a href="/spring-mvc-demo">Back</a>

</body>

</html>