package com.model;

public class Toll {

	private int tollid;
	private String tollname,tolladdress,tollowner,tollstartdate;
	
	public Toll() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Toll(int tollid, String tollname, String tolladdress, String tollowner, String tollstartdate) {
		super();
		this.tollid = tollid;
		this.tollname = tollname;
		this.tolladdress = tolladdress;
		this.tollowner = tollowner;
		this.tollstartdate = tollstartdate;
	}

	public int getTollid() {
		return tollid;
	}

	public void setTollid(int tollid) {
		this.tollid = tollid;
	}

	public String getTollname() {
		return tollname;
	}

	public void setTollname(String tollname) {
		this.tollname = tollname;
	}

	public String getTolladdress() {
		return tolladdress;
	}

	public void setTolladdress(String tolladdress) {
		this.tolladdress = tolladdress;
	}

	public String getTollowner() {
		return tollowner;
	}

	public void setTollowner(String tollowner) {
		this.tollowner = tollowner;
	}

	public String getTollstartdate() {
		return tollstartdate;
	}

	public void setTollstartdate(String tollstartdate) {
		this.tollstartdate = tollstartdate;
	}

	

}
