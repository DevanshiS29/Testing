<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="entity.*,dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Updated</title>
</head>
<body bgcolor=pink style="text-align:center">
	<% 
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		Employee e=new Employee(Integer.parseInt(request.getParameter("eno")),request.getParameter("ename"),Integer.parseInt(request.getParameter("salary")),request.getParameter("city"));
		ed.updateEmp(e);
		//creating an Employee object with from parameters and invoking updateEmp() with it to update the employee
	%>
	<h1>Employee Updated Successfully..!!</h1><br><br>
	<a href=index.html>Home Page</a>
	<!-- printing message and providing link for home page -->
</body>
</html>