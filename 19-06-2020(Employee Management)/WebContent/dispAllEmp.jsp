<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entity.*, dao.*,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Displaying All Employees</title>
</head>
<body bgcolor=pink style="text-align:center">
	<h1>Employees Details</h1><hr color=black size=3px><br><br>
	<% 
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		List<Employee> list=ed.dispAllEmp();
		//invoking dispAllEmp() to get the list of Employees
		
		out.print("<table border=5px align=center width=500px><tr><th>No</th><th>Name</th><th>Salary</th><th>City</th></tr>");
		for(Employee e:list)
		{
			out.print("<tr><td>"+e.getEno()+"</td><td>"+e.getEname()+"</td><td>"+e.getSalary()+"</td><td>"+e.getCity()+"</td></tr>");	
		}
		out.print("</table><br><br>");
		//printing all the details of employees in tabular form
	%>
	<a href=index.html>Home page</a>
	<!--providing link for home page -->
</body>
</html>