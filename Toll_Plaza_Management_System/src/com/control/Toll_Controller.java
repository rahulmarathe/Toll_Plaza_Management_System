package com.control;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.model.Admin;
import com.model.Customer;
import com.model.Employee;
import com.model.Manager;
import com.model.Toll;

import com.dao.Toll_Dao;
@SessionAttributes({"userLog"})
@Controller
public class Toll_Controller {

	@Autowired
	Toll_Dao dao;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/")
	public String logout()
	{
		return "boot";	
	}
//Admin Page
	@RequestMapping("/Admin")
	public ModelAndView show(){
		return new ModelAndView("Admin","command",new Admin());
	}
//Admin Login Section
	@RequestMapping(value="/Admin_login", method=RequestMethod.POST)
	public ModelAndView login(@ModelAttribute Admin m){
		Admin a=dao.login(m.getEmail(),m.getPassword());
		if(a!=null){
			session.setAttribute("userlog", "Admin_login");
			System.out.println("session initiate");
			ModelAndView model=new ModelAndView("Admin_login");
			model.addObject("list",a);
			return model;
		}
		else
		{
			return new ModelAndView("Admin","command",new Admin());
		}
	}
//Toll Field Page
	@RequestMapping("/Toll_register")
	public ModelAndView Toll_register(){
		return new ModelAndView("Toll_register","command",new Toll());
	}
	
//Save Toll Details
	@RequestMapping(value="/Toll_save", method=RequestMethod.POST)
	public ModelAndView admin_save(@ModelAttribute Toll t){
		//System.out.println("asdf");
		dao.Toll_save(t);
		return new ModelAndView("Admin_login","command",new Toll());
	}
//Manager Field Page
	@RequestMapping("/Manager_register")
	public ModelAndView manager_register()
	{
		
		return new ModelAndView("Manager_register","command",new Manager());
	}
	//Save Manager Details
	@RequestMapping(value="/Manager_save",method=RequestMethod.POST)
	public ModelAndView Manager_save(@ModelAttribute Manager m){
		dao.Manager_save(m);
		return new ModelAndView("Admin_login","command",new Manager());
	}
//View Manager Details
	@RequestMapping("/view_manager")
	public ModelAndView manager_view(){
		List<Manager> list=dao.getManager();
		return new ModelAndView("view_manager","list",list);
	}
	
	
//View Toll Details 
	@RequestMapping("/viewtoll")
	public ModelAndView view_toll(){
		List<Toll> list=dao.getToll();
	session.setAttribute("list", list);
		return new ModelAndView("view_toll");
	}
	
//Logout Section
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session)
	{
		session.setAttribute("userlog", "Admin");
		session.invalidate();
		return new ModelAndView("Admin","command",new Admin());
	}
//Manager Login Page
	@RequestMapping("/Manager")
	public ModelAndView show1(){	
		return new ModelAndView("Manager", "command",new Manager());
	}
	
//Manager Login Section
	@RequestMapping(value="/Manager_login",method=RequestMethod.POST)
	public ModelAndView man_login(HttpSession session,@ModelAttribute Manager man){
		Manager m=dao.m_login(man.getEmail(), man.getPassword());
		if(m!=null){
			session.setAttribute("userlog", "Manager_login");
			ModelAndView model=new ModelAndView("Manager_login");
			model.addObject("list",m);
			return model;
		}
		else{
			return new ModelAndView("Manager","command",new Manager()); 
			}
	}
//Employee Register Page
	@RequestMapping("/Employee_register")
	public ModelAndView Employee_register(){
		return new ModelAndView("Employee_register","command", new Employee());
	}
//Save Employee Details
	@RequestMapping(value="/Employee_save",method=RequestMethod.POST)
	public ModelAndView Employee_save(@ModelAttribute Employee emp){
		dao.Employee_save(emp);
		return new ModelAndView("Manager_login","command",new Employee());
	}
//Vehicle Rates Page
	@RequestMapping("/Vehicle_rates")
	public ModelAndView Vehicle_rates(){
		return new ModelAndView("Vehicle_rates","command",new Manager());
	}
//Set vehicle Rates
	@RequestMapping(value="/Rates_save",method=RequestMethod.POST)
	public ModelAndView Rates_save(@ModelAttribute Manager man){
		dao.Rates_save(man);
		return new ModelAndView("Manager_login","command",new Manager());
	}
//View Toll Details 
	@RequestMapping("/view_employee")
	public ModelAndView view_emp(){
	List<Employee> list=dao.getEmployee();
	return new ModelAndView("view_employee","list",list);
	}

	//View Vehicle Rates Details 
	@RequestMapping("/view_vehicle_rates")
	public ModelAndView view_rates(){
	List<Manager> list=dao.getVehicleRates();
	return new ModelAndView("view_vehicle_rates","list",list);
	}
//Delete Tolls
	@RequestMapping(value="/deletetoll/{tollid}",method=RequestMethod.GET)
	public ModelAndView deletetoll(@PathVariable int tollid){
		dao.deletetoll(tollid);
		return new ModelAndView("redirect:/viewtoll");	
	}
//Edit Tolls
	@RequestMapping(value="/edittoll/{tollid}")
	public ModelAndView edittoll(@PathVariable int tollid){
		Toll t=dao.getTollById(tollid);
		System.out.println("Toll Id: "+tollid);
		return new ModelAndView("edittollform","command",t);
	}
	
	@RequestMapping(value="/editsavetoll",method=RequestMethod.POST)
	public ModelAndView updatetoll(@ModelAttribute("toll") Toll t){
		dao.updatetoll(t);
		return new ModelAndView("redirect:/viewtoll");
	}
	
//Delete Manager
	@RequestMapping(value="/deleteman/{managerid}",method=RequestMethod.GET)
	public ModelAndView deleteman(@PathVariable int managerid){
		dao.deleteman(managerid);
		System.out.println("Manager Id :"+managerid);
		return new ModelAndView("redirect:/view_manager");
	}

//Edit Manager Details
	@RequestMapping(value="/editman/{managerid}")
	public ModelAndView editman(@PathVariable int managerid){
		Manager m=dao.getManagerById(managerid);
		return new ModelAndView("editmanform","command",m);
	}
	
	@RequestMapping(value="/editsaveman",method=RequestMethod.POST)
	public ModelAndView updateman1(@ModelAttribute("man") Manager m){
		dao.updatemanager(m);
		return new ModelAndView("redirect:/view_manager");
		
	}
//Delete Employee
	@RequestMapping(value="/deleteemp/{employeeid}",method=RequestMethod.GET)
	public ModelAndView deleteemp(@PathVariable int employeeid){
		dao.deleteemp(employeeid);
		System.out.println("Email :"+employeeid);
		return new ModelAndView("redirect:/view_employee");
	}
//Edit Employee Details
		@RequestMapping(value="/editemp/{employeeid}")
		public ModelAndView editemp(@PathVariable int employeeid){
			Employee e=dao.getEmpById(employeeid);
			return new ModelAndView("editempform","command",e);
		}
		
		@RequestMapping(value="/editsaveemp",method=RequestMethod.POST)
		public ModelAndView updateemp(@ModelAttribute("emp") Employee e){
			dao.updateemp(e);
			return new ModelAndView("redirect:/view_employee");
			
		}
//Delete Vehicle Rates
	@RequestMapping(value="/deleterates/{tollid},{typeofvehicle}",method=RequestMethod.GET)
		public ModelAndView deleterates(@PathVariable int tollid, @PathVariable String typeofvehicle){
		dao.deleterates(tollid,typeofvehicle);
		System.out.println("Toll Id: "+tollid+", Type of Vehicle:"+typeofvehicle);
		return new ModelAndView("redirect:/view_vehicle_rates");
	}
//Edit Vehicle rates	

	/*//View Toll Details 
	@RequestMapping("/view_employee")
	public ModelAndView view_emp(){
	List<Employee> list=dao.getEmployee();
	return new ModelAndView("view_employee","list",list);
	}
*/
	
//Print Tolls
	@RequestMapping(value="/tollprint",method=RequestMethod.GET)
	public ModelAndView printtolls(){
		
		return new ModelAndView("tollpdf");
	}

	
//** CUSTOMER SECTION **//
	
	//Customer Login
	@RequestMapping("/Customer")
	public ModelAndView LoginForm(){
		return new ModelAndView("Customer","command",new Customer());
	}

	//Customer Login
	
	@RequestMapping(value="/Customer_login", method=RequestMethod.POST)
	public ModelAndView c_login(@ModelAttribute Customer cust){
		Customer c=dao.c_login(cust.getEmail(),cust.getPassword());
		if(c!=null){
			session.setAttribute("userlog", "Customer_login");
			System.out.println("Session Initiate");
			ModelAndView model=new ModelAndView("Customer_login");
			model.addObject("list",c);
			return model;
		} else {
			return new ModelAndView("Customer","command",new Customer());
		}
	}	
	//Tolls Search
	@RequestMapping("/Toll_search")
	public ModelAndView Toll_search(){
		return new ModelAndView("Toll_search","command",new Customer());
	}
	
	
}
