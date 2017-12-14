package com.model;

public class Admin {
	private int AdminId,InfoId;
	private String Email,Password,Contact;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(int adminId, int infoId, String email, String password, String contact) {
		super();
		AdminId = adminId;
		InfoId = infoId;
		Email = email;
		Password = password;
		Contact = contact;
	}
	public int getAdminId() {
		return AdminId;
	}
	public void setAdminId(int adminId) {
		AdminId = adminId;
	}
	public int getInfoId() {
		return InfoId;
	}
	public void setInfoId(int infoId) {
		InfoId = infoId;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	
}
