package entity;
import javax.persistence.*;
//to use annotations
@Entity
@Table(name = "employee_dao")
public class Employee 
{
	@Id
	@Column(name = "eno")
	private int eno;

	@Column(name = "ename",length=20)
	private String ename;

	@Column(name = "salary")
	private int salary;

	@Column(name = "city",length=20)
	private String city;
	//instance variables
	
	public Employee() {}	//no argument constructor
	
	public Employee(int eno, String ename, int salary, String city) 
	{
		this.eno = eno;
		this.ename = ename;
		this.salary = salary;
		this.city = city;
	}
	//parameterized constructor
	
    public int getEno() {
		return eno;
	}

	public void setEno(int eno) {
		this.eno = eno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	//getters and setters for instance variables
}