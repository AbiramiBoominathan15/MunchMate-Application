package com.chainsys.munchmate.model;

import java.util.Arrays;

public class Hotel {
	public int hotelId;
	
	
	public String hotelName;
	public String hotelLocation;
	public String hotelPhoneNumber;
	
	
	public String hotelEmail;
	public String hotelPassword;
	public byte[] hotelImage;
	public String status;

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	


	
	
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelLocation() {
		return hotelLocation;
	}
	public void setHotelLocation(String hotelLocation) {
	
		
		this.hotelLocation = hotelLocation;
	}
	public String getHotelPhoneNumber() {
		return hotelPhoneNumber;
	}
	public void setHotelPhoneNumber(String hotelPhoneNumber) {
		this.hotelPhoneNumber = hotelPhoneNumber;
	}
	
	
	public String getHotelEmail() {
		return hotelEmail;
	}
	public void setHotelEmail(String hotelEmail) {
		this.hotelEmail = hotelEmail;
	}
	public String getHotelPassword() {
		return hotelPassword;
	}
	public void setHotelPassword(String hotelPassword) {
		this.hotelPassword = hotelPassword;
	}
	public byte[] getHotelImage() {
		return hotelImage;
	}
	public void setHotelImage(byte[] hotelImage) {
		this.hotelImage = hotelImage;
	}
	@Override
	public String toString() {
		return "Hotel [hotelId=" + hotelId + ", hotelName=" + hotelName + ", hotelLocation=" + hotelLocation
				+ ", hotelPhoneNumber=" + hotelPhoneNumber + ", hotelEmail=" + hotelEmail + ", hotelPassword="
				+ hotelPassword + ", hotelImage=" + Arrays.toString(hotelImage) + ", getHotelId()=" + getHotelId()
				+ ", getHotelName()=" + getHotelName() + ", getHotelLocation()=" + getHotelLocation()
				+ ", getHotelPhoneNumber()=" + getHotelPhoneNumber() + ", getHotelEmail()=" + getHotelEmail()
				+ ", getHotelPassword()=" + getHotelPassword() + ", getHotelImage()=" + Arrays.toString(getHotelImage())
				+ "]";
	}
	public Hotel(int hotelId, String hotelName, String hotelLocation, String hotelPhoneNumber, String hotelEmail,
			String hotelPassword, byte[] hotelImage) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
		this.hotelLocation = hotelLocation;
		this.hotelPhoneNumber = hotelPhoneNumber;
		this.hotelEmail = hotelEmail;
		this.hotelPassword = hotelPassword;
		this.hotelImage = hotelImage;
	}
	public Hotel() {
		// TODO Auto-generated constructor stub
	}
}
