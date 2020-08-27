<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.*, entity.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding Employee..</title>
</head>
<body bgcolor=pink style="text-align:center">
	<% 
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		Employee e=new Employee(Integer.parseInt(request.getParameter("eno")),request.getParameter("ename"),Integer.parseInt(request.getParameter("salary")),request.getParameter("city"));
		ed.insertEmp(e);
		//creating an Employee object from from parameters and invoking insertEmp() to insert this Employee
	%>
	<h1>Employee Inserted Successfully..!!</h1><br>
	<a href=index.html>Home Page</a>
	<!-- printing message and providing link for home page -->
</body>
</html>