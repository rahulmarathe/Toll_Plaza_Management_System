package com.model;

public class Customer {

	private int user_id;
	private String firstName;
	private String lastName;
	private String password;
	private String confirmPassword;
	//@Email
	private String email;
	//@NotEmpty(message = "Phone should not be blank.")
	//@Size(min = 10,max = 10)
	private Double contact;
	private String gender;
	private String city;
	private String state;
	private String country;
	private String address;
	private String birthDate;
	private int info_id;
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(int user_id, String firstName, String lastName, String password, String confirmPassword,
			String email, Double contact, String gender, String city, String state, String country, String address,
			String birthDate, int info_id) {
		super();
		this.user_id = user_id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.email = email;
		this.contact = contact;
		this.gender = gender;
		this.city = city;
		this.state = state;
		this.country = country;
		this.address = address;
		this.birthDate = birthDate;
		this.info_id = info_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Double getContact() {
		return contact;
	}

	public void setContact(Double contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public int getInfo_id() {
		return info_id;
	}

	public void setInfo_id(int info_id) {
		this.info_id = info_id;
	}
	
	
	
	
}
