<%@ page language="java" contentType="text/html;charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="entity.*,dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating Employee..</title>
</head>
<body bgcolor=pink style="text-align:center">
	<h1>Employee Details Updation</h1><hr color=black size=3><br><br>
	<% 
		EmployeeDAOImpl ed=new EmployeeDAOImpl();
		Employee e=ed.searchEmp(Integer.parseInt(request.getParameter("eno")));
		//invoking searchEmp() to get the Employee object with this eno
		out.print("<form action=updEmp.jsp><table border=5px align=center width=200px>");
		out.print("<tr><td>No</td><td><input type=hidden name=eno value="+e.getEno()+">"+e.getEno()+"</td></tr>");
		out.print("<tr><td>Name</td><td><input type=text name=ename value="+e.getEname()+"></td></tr>");
		out.print("<tr><td>Salary</td><td><input type=number name=salary value="+e.getSalary()+"></td></tr>");
		out.print("<tr><td>City</td><td><input type=text name=city value="+e.getCity()+"></td></tr>");
		out.print("<tr><td colspan=2><input type=submit value=Update Employee></td></tr></table><br><br></form>");
		//providing a tabular form to change the Employee details
	%>
</body>
</html>