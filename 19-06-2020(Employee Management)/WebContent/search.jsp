<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entity.*, dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searching Employee..</title>
</head>
<body bgcolor=pink style="text-align:center">
	<h1>Employee Search Successful..!!</h1><hr color=black size=3><br><br>
	<!-- printing message -->
	<% 
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		Employee e=ed.searchEmp(Integer.parseInt(request.getParameter("eno")));
		//invoking searchEmp() with the eno to search the employee
		out.print("<table border=5px align=center width=500px>");
		out.print("<tr><td>No</td><td>"+e.getEno()+"</td></tr>");
		out.print("<tr><td>Name</td><td>"+e.getEname()+"</td></tr>");
		out.print("<tr><td>Salary</td><td>"+e.getSalary()+"</td></tr>");
		out.print("<tr><td>City</td><td>"+e.getCity()+"</td></tr>");
		out.print("</table><br><br>");
		//printing the details in tabular form
	%>
	<a href=index.html>Home Page</a>
	<!-- providing link for home page -->
</body>
</html>