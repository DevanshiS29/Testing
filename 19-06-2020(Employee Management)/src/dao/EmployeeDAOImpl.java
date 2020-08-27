package dao;
import java.util.List;
import org.hibernate.Session;
import entity.Employee;

public class EmployeeDAOImpl implements EmployeeDAO
{
	private Session ses;
	//Session object to be used by methods for getting current session
	
	public EmployeeDAOImpl()	//no argument constructor
	{
		ses=SessionUtil.getSession();
		//invoking method to get current session from SessionUtil class
	}

	@Override
	public void insertEmp(Employee e) 
	//method for insertion
	{
		ses.save(e);
		ses.getTransaction().commit();
		//saving the Employee in the table and committing
	}

	@Override
	public void deleteEmp(int eno)
	//method for deletion
	{
		Employee e=(Employee) ses.get(Employee.class, eno);
		//retrieving the Employee by id
		ses.delete(e);
		ses.getTransaction().commit();
		//deleting the Employee from the table and committing
	}

	@Override
	public void updateEmp(Employee e)
	//method for update
	{
		ses.update(e);
		ses.getTransaction().commit();
		//updating the Employee in the table and committing
	}

	@Override
	public Employee searchEmp(int eno)
	//method for searching
	{
		Employee e=(Employee) ses.get(Employee.class, eno);
		//retrieving the Employee by id
		return e;
		//returning the Employee found
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> dispAllEmp() 
	//method for displaying all employees
	{
		List<Employee> list=ses.createQuery("from Employee").list();
		return list;
		//retrieving all Employee records in a list and returning it
	}
}
