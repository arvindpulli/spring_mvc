package Employee.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Employee.dao.EmployeeDao;
import Employee.dto.Employee;

@Controller 
public class EmployeeController {

	@Autowired
	private EmployeeDao dao;
	
	
	@RequestMapping("/reg")
	public  ModelAndView register() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("register.jsp");
		mv.addObject("employee", new Employee());
		return mv;
	}
	
	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute Employee e) {
		ModelAndView mv=new ModelAndView();
		dao.saveEmployee(e);
		List<Employee> employees=dao.getAllEmployees();
		mv.setViewName("display.jsp");
		mv.addObject("emps",employees);
		return mv;	
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam int id) {
		dao.deleteEmployee(id);
		ModelAndView mv=new ModelAndView();
		List<Employee> emps=dao.getAllEmployees();
		mv.setViewName("display.jsp");
		mv.addObject("emps",emps);
		return mv;
	}
	
	@RequestMapping("/edit")
	public ModelAndView view(@RequestParam int id) {
		ModelAndView mv=new ModelAndView();
		Employee existingEmp =dao.findEmployee(id);
		mv.setViewName("edit.jsp");
		mv.addObject("existingEmp",existingEmp);
		return mv;
	}
	
	@RequestMapping("/update")
	public ModelAndView update(@ModelAttribute Employee e) {
		ModelAndView mv=new ModelAndView();
		dao.updateEmployee(e, e.getId());
		List<Employee> employees=dao.getAllEmployees();
		mv.setViewName("display.jsp");
		mv.addObject("emps",employees );
		return mv;
	}
}
