<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deleting Employee..</title>
</head>
<body bgcolor=pink style="text-align:center">
	<%
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		ed.deleteEmp(Integer.parseInt(request.getParameter("eno")));
		//invoking deleteEmp() with form parameter to delete the Employee
	%>
	<h1>Employee Deleted Successfully..!!</h1><br>
	<a href=index.html>Home Page</a>
	<!-- printing message and providing link for home page -->
</body>
</html>