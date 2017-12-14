package com.model;

public class Employee {

	private int employeeid,infoid,tollid;
	private String password, email,contact;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(int employeeid, int infoid, int tollid, String password, String email, String contact) {
		super();
		this.employeeid = employeeid;
		this.infoid = infoid;
		this.tollid = tollid;
		this.password = password;
		this.email = email;
		this.contact = contact;
	}

	public int getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}

	public int getInfoid() {
		return infoid;
	}

	public void setInfoid(int infoid) {
		this.infoid = infoid;
	}

	public int getTollid() {
		return tollid;
	}

	public void setTollid(int tollid) {
		this.tollid = tollid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	
}
