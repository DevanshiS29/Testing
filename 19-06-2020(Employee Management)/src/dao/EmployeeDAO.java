package dao;
import java.util.List;
import entity.Employee;

public interface EmployeeDAO 
{
	void insertEmp(Employee e);
	//method for insertion
	void deleteEmp(int eno);
	//method for deletion
	void updateEmp(Employee e);
	//method for update
	Employee searchEmp(int eno);
	//method for select query
	List<Employee> dispAllEmp();
	//method for select all query
}
