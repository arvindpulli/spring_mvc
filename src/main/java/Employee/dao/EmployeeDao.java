package Employee.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Employee.dto.Employee;

@Repository 
public class EmployeeDao {

	@Autowired
	private EntityManager em;
	
	public void saveEmployee(Employee employee) {
		em.getTransaction().begin();
		em.persist(employee);
		em.getTransaction().commit();
	}
	
	public List<Employee> getAllEmployees()
	{
		Query query=em.createQuery("select e from Employee e");
		List<Employee> employees=query.getResultList();
		return employees;
	}
	
	public void deleteEmployee(int id) {
		Employee e=em.find(Employee.class, id);
		em.getTransaction().begin();
		em.remove(e);
		em.getTransaction().commit();
	}
	
	public Employee findEmployee(int id) {
		em.getTransaction().begin();
		Employee e=em.find(Employee.class, id);
		em.getTransaction().commit();
		return e;
	}
	
	public void updateEmployee(Employee emp,int id) {
		Employee existingEmp=findEmployee(id);
		if(existingEmp!=null) {
			emp.setId(id);
			em.getTransaction().begin();
			em.merge(emp);
			em.getTransaction().commit();
		}

	}
}
