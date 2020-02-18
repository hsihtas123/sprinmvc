<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body style="background-color: lavender">
	<h1>
		<center>Welcome to Online Help Services</center>
	</h1>
	<form:form modelAttribute="register" method="post" action="register">
		<div>
			<form:label path="userName">User Name</form:label>
			<form:input path="userName" />
		</div>
		<div>
			<form:label path="contactNumber">Contact Number</form:label>
			<form:input path="contactNumber" />
			<form:errors path="contactNumber"></form:errors>
		</div>
		<div>
			<form:label path="emailId">Email Id</form:label>
			<form:input path="emailId" />
		</div>
		<div>
			<form:label path="confirmEmailId"> Confirm Email Id</form:label>
			<form:input path="confirmEmailId" />
			<form:errors path="confirmEmailId"></form:errors>
		</div>
		<div>
			<form:label path="status">status</form:label>
			<form:checkbox path="status" />
			<form:errors path="status"></form:errors>
		</div>

		<div>
			<input type="submit" value="Submit">
		</div>
	</form:form>


</body>
</html>
