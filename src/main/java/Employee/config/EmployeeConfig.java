package Employee.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"Employee"})
public class EmployeeConfig {

	@Bean
	public EntityManager entityManager() {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("amit");
		EntityManager em=emf.createEntityManager();
		return em;
	}
}
