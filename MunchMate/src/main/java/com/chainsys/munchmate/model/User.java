package com.chainsys.munchmate.model;

public class User {
	public int userId;
	
	
	public String name;
	
	
	public String phoneNumber;
	public String password;
	public String city;
	public String mailId;

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		
		
		
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		
		
		this.password = password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public User(int userId, String name, String phoneNumber, String password, String city, String mailId) {
		super();
		this.userId = userId;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.city = city;
		this.mailId = mailId;
	}
	public User() {
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", name=" + name + ", phoneNumber=" + phoneNumber + ", password=" + password
				+ ", city=" + city + ", mailId=" + mailId + ", getUserId()=" + getUserId() + ", getName()=" + getName()
				+ ", getPhoneNumber()=" + getPhoneNumber() + ", getPassword()=" + getPassword() + ", getCity()="
				+ getCity() + ", getMailId()=" + getMailId() + "]";
	}

}
