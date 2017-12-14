package com.dao;

import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.itextpdf.text.Document;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.model.Admin;
import com.model.Customer;
import com.model.Employee;
import com.model.Manager;
import com.model.Toll;

public class Toll_Dao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
////////////////////////////////////Admin Section///////////////////////////////////////////////////////////////
	
//Admin Login Section
	public Admin login(String e, String p) {
		try {
			/*System.out.println(" "+e+" "+p);*/
			String sql = "select * from admin_register where Email='"+e+"' and Password='"+p+"'";
			return template.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class));
		} catch (Exception ex) {
			System.out.println("error= "+ex);
			return null;
		}
	}
//View Admin	
	public List<Admin> view_admin() {
		// TODO Auto-generated method stub
return template.query("select * from admin_register" ,new RowMapper<Admin>(){
			
			public Admin mapRow(ResultSet rs, int rows) throws SQLException {
				// TODO Auto-generated method stub
			
				Admin e=new Admin();
				e.setAdminId(rs.getInt(1));
				e.setPassword(rs.getString(2));
				e.setEmail(rs.getString(3));
				e.setContact(rs.getString(4));
				e.setInfoId(rs.getInt(5));
				return e;
			}
		
		});
	}
//Save Toll Details
	public int Toll_save(Toll t) {
		// TODO Auto-generated method stub
		String sql="insert into Toll_register values(?,?,?,?,?)";
		return template.update(sql,t.getTollid(),t.getTollname(),t.getTolladdress(),t.getTollowner(),t.getTollstartdate());
	}
//Save Manager Details
	public int Manager_save(Manager m) {
		// TODO Auto-generated method stub
		String sql="insert into Manager_register values(?,?,?,?,?,?)";
		return template.update(sql,m.getManagerid(),m.getPassword(),m.getEmail(),m.getContact(),m.getTollid(),m.getInfoid());
	}
//View Toll Deails
	public List<Toll> getToll() {
		// TODO Auto-generated method stub
		return template.query("select * from Toll_register", new RowMapper<Toll>(){
			
			@Override
			public Toll mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				Toll t=new Toll();
				t.setTollid(rs.getInt(1));
				System.out.println(" "+rs.getInt(1));
				t.setTollname(rs.getString(2));
				t.setTolladdress(rs.getString(3));
				t.setTollowner(rs.getString(4));
				t.setTollstartdate(rs.getString(5));
				return t;
			}
		});
	}
	
//View Manager Details
	public List<Manager> getManager() {
		// TODO Auto-generated method stub
		return template.query("select * from Manager_register", new RowMapper<Manager>(){
			
			@Override
			public Manager mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				Manager t=new Manager();
				t.setManagerid(rs.getInt(1));
				System.out.println(" "+rs.getInt(1));
				t.setPassword(rs.getString(2));
				t.setEmail(rs.getString(3));
				t.setContact(rs.getString(4));
				t.setTollid(rs.getInt(5));
				t.setInfoid(rs.getInt(6));
				return t;
			}
		});
	}
	
/////////////////////////////////////////Manager Section///////////////////////////////////////////////////////	

	//Manager Login Function
	public Manager m_login(String email, String password) {
		// TODO Auto-generated method stub
		
		try {
			String sql="select * from manager_register where email='"+email+"' and password='"+password+"'";	
			return template.queryForObject(sql, new BeanPropertyRowMapper<Manager>(Manager.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("error"+e);
			return null;
		}
	}
//View Manager Details
	public List<Manager> view_manager(){
		return template.query("select * from Manager_register", new RowMapper<Manager>(){
			
			public Manager mapRow(ResultSet rs, int rows) throws SQLException{
				
				Manager m=new Manager();
				m.setManagerid(rs.getInt(1));
				m.setPassword(rs.getString(2));
				m.setEmail(rs.getString(3));
				m.setContact(rs.getString(4));
				m.setTollid(rs.getInt(5));
				m.setInfoid(rs.getInt(6));
				return m;
			}
				
		});	
	}
//Save Employee Details
	public int Employee_save(Employee emp) {
		// TODO Auto-generated method stub
		String sql="insert into Employee_register values(?,?,?,?,?,?)";
		return template.update(sql, emp.getEmployeeid(),emp.getPassword(),emp.getEmail(),emp.getContact(),emp.getInfoid(),emp.getTollid());
	}
//Set Vehicle Rates
	public int Rates_save(Manager man) {
		// TODO Auto-generated method stub
		String sql="insert into Vehicle_rates values(?,?,?,?)";
		return template.update(sql,man.getTypeofvehicle(),man.getJourneytype(),man.getTollid(),man.getAmount());
	}
//Edit Manager Details
	public Manager getmanId(int managerid) {
		// TODO Auto-generated method stub
		System.out.println(" "+managerid);
		String sql="select * from manager_register where managerid=?";
		return template.queryForObject(sql, new Object[]{managerid},new BeanPropertyRowMapper<Manager>(Manager.class));
	}
//update manager data 
	public int updateman(Manager man) {
		// TODO Auto-generated method stub
		String sql="update manager_register set password='"+man.getPassword()+"',email='"+man.getEmail()+"',contact='"+man.getContact()+"' where managerid='"+man.getManagerid()+"'";
	return template.update(sql);
	}
//View Employee	
	public List<Employee> getEmployee() {
		// TODO Auto-generated method stub
		return template.query("select * from employee_register",new RowMapper<Employee>(){

			@Override
			public Employee mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				Employee em= new Employee();
				em.setEmployeeid(rs.getInt(1));
				em.setPassword(rs.getString(2));
				em.setEmail(rs.getString(3));
				em.setContact(rs.getString(4));;
				em.setInfoid(rs.getInt(5));
				em.setTollid(rs.getInt(6));
				return em;
			}});
	}
//View Vehicle Rates	
	public List<Manager> getVehicleRates() {
		// TODO Auto-generated method stub
		return template.query("select * from vehicle_rates",new RowMapper<Manager>(){

			@Override
			public Manager mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				Manager m=new Manager();
				m.setTypeofvehicle(rs.getString(1));
				m.setJourneytype(rs.getString(2));
				m.setTollid(rs.getInt(3));
				m.setAmount(rs.getInt(4));
				return m;
			}});
	}
	
//Delete Tolls	
	public int deletetoll(int tollid) {
		// TODO Auto-generated method stub
		String sql="delete from toll_register where tollid="+tollid+"";
		return template.update(sql);
	}
//Edit Tolls	
	public Toll getTollById(int tollid) {
		// TODO Auto-generated method stub
		String sql="select * from toll_register where tollid=?";
		return template.queryForObject(sql,new Object[]{tollid},new BeanPropertyRowMapper<Toll>(Toll.class));
	}
	public int updatetoll(Toll t) {
		// TODO Auto-generated method stub
		String sql="update toll_register set tollname='"+t.getTollname()+"',tolladdress='"+t.getTolladdress()+"',tollowner='"+t.getTollowner()+"',tollstartdate='"+t.getTollstartdate()+"' where tollid="+t.getTollid()+"";
		System.out.println("Toll Name : "+t.getTollname());
		return template.update(sql);
	}
	
//Delete Managers
	public int deleteman(int managerid) {
		// TODO Auto-generated method stub
		String sql="delete from manager_register where managerid="+managerid+"";
		return template.update(sql);	
	}

//Edit Manager
	public Manager getManagerById(int managerid) {
		// TODO Auto-generated method stub
		String sql="select * from manager_register where managerid=?";
		return template.queryForObject(sql,new Object[]{managerid},new BeanPropertyRowMapper<Manager>(Manager.class));
	}
	public int updatemanager(Manager m) {
		// TODO Auto-generated method stub
		String sql="update manager_register set password='"+m.getPassword()+"',email='"+m.getEmail()+"',contact='"+m.getContact()+"',tollid='"+m.getTollid()+"',infoid='"+m.getInfoid()+"' where managerid="+m.getManagerid()+"";
		System.out.println("Manager Email :"+m.getEmail());
		return template.update(sql);
	}
//Delete Employee
	public int deleteemp(int employeeid) {
		// TODO Auto-generated method stub
		String sql="delete from employee_register where employeeid="+employeeid+"";
		return template.update(sql);
	}
//Edit Employee	
	public Employee getEmpById(int employeeid) {
		// TODO Auto-generated method stub
		String sql="select * from employee_register where employeeid=?";
		return template.queryForObject(sql,new Object[]{employeeid},new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	public int updateemp(Employee e) {
		// TODO Auto-generated method stub
		String sql="update employee_register set password='"+e.getPassword()+"',email='"+e.getEmail()+"',contact='"+e.getContact()+"',tollid='"+e.getTollid()+"',infoid='"+e.getInfoid()+"' where employeeid="+e.getEmployeeid()+"";
		System.out.println("Manager Email :"+e.getEmail());
		return template.update(sql);	
		}
//Delete Vehicle Rates	
	/*public int deleterates(int tollid) {
		// TODO Auto-generated method stub
		String sql="delete from vehicle_rates where tollid="+tollid+"";
		return template.update(sql);
		
	}*/
	public int deleterates(int tollid, String typeofvehicle) {
		// TODO Auto-generated method stub
		String sql="delete from vehicle_rates where tollid="+tollid+" and typeofvehicle='"+typeofvehicle+"'";
		return template.update(sql);
	
	}
//Edit Vehicle rates

	
	

	
///////////////////////////////////////Customer Section/////////////////////////////////////////////////////	
	
	//Customer Login
	public Customer c_login(String email, String password) {
		// TODO Auto-generated method stub
		try {
			System.out.println(" "+email+" "+password);
			String sql = "select * from customer_register where email='"+email+"' and password='"+password+"'";
			return template.queryForObject(sql, new BeanPropertyRowMapper<Customer>(Customer.class));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
/*	public Admin login(String e, String p) {
		try {
			System.out.println(" "+e+" "+p);
			String sql = "select * from admin_register where Email='"+e+"' and Password='"+p+"'";
			return template.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class));
		} catch (Exception ex) {
			System.out.println("error= "+ex);
			return null;
		}
	}*/

	
}
