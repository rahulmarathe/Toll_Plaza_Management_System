package com.model;

public class Manager {
private int managerid,tollid,amount,infoid;
private String email,password,contact,typeofvehicle,journeytype;
public Manager() {
	super();
	// TODO Auto-generated constructor stub
}
public Manager(int managerid, int tollid, int amount, int infoid, String email, String password, String contact,
		String typeofvehicle, String journeytype) {
	super();
	this.managerid = managerid;
	this.tollid = tollid;
	this.amount = amount;
	this.infoid = infoid;
	this.email = email;
	this.password = password;
	this.contact = contact;
	this.typeofvehicle = typeofvehicle;
	this.journeytype = journeytype;
}
public int getManagerid() {
	return managerid;
}
public void setManagerid(int managerid) {
	this.managerid = managerid;
}
public int getTollid() {
	return tollid;
}
public void setTollid(int tollid) {
	this.tollid = tollid;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public int getInfoid() {
	return infoid;
}
public void setInfoid(int infoid) {
	this.infoid = infoid;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getTypeofvehicle() {
	return typeofvehicle;
}
public void setTypeofvehicle(String typeofvehicle) {
	this.typeofvehicle = typeofvehicle;
}
public String getJourneytype() {
	return journeytype;
}
public void setJourneytype(String journeytype) {
	this.journeytype = journeytype;
}

}
