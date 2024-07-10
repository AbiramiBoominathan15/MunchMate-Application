package com.chainsys.munchmate.model;

import java.util.Arrays;



public class Cart {
	public String foodName;
    private byte[]foodImage; 
	public int quantity;
	
	
	public int hotelId;
	public int cartItemId;
	public int userId;
	public int foodId;
	public double totalPrice;
	public String foodSession;
	
	
	public double overAllPrice;


	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
	
		
		this.foodName = foodName;
	}
	public byte[] getFoodImage() {
		return foodImage;
	}
	public void setFoodImage(byte[] foodImage) {
		this.foodImage = foodImage;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getHotelId() {
	
		
		
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFoodId() {
		return foodId;
	}
	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getFoodSession() {
		return foodSession;
	}
	public void setFoodSession(String foodSession) {
		this.foodSession = foodSession;
	}
	public double getOverAllPrice() {
		return overAllPrice;
	}
	public void setOverAllPrice(double overAllPrice) {
		this.overAllPrice = overAllPrice;
	}
	@Override
	public String toString() {
		return "Cart [foodName=" + foodName + ", foodImage=" + Arrays.toString(foodImage) + ", quantity=" + quantity
				+ ", hotelId=" + hotelId + ", cartItemId=" + cartItemId + ", userId=" + userId + ", foodId=" + foodId
				+ ", totalPrice=" + totalPrice + ", foodSession=" + foodSession + ", overAllPrice=" + overAllPrice
				+ ", getFoodName()=" + getFoodName() + ", getFoodImage()=" + Arrays.toString(getFoodImage())
				+ ", getQuantity()=" + getQuantity() + ", getHotelId()=" + getHotelId() + ", getCartItemId()="
				+ getCartItemId() + ", getUserId()=" + getUserId() + ", getFoodId()=" + getFoodId()
				+ ", getTotalPrice()=" + getTotalPrice() + ", getFoodSession()=" + getFoodSession()
				+ ", getOverAllPrice()=" + getOverAllPrice() + "]";
	}
	public Cart(String foodName, byte[] foodImage, int quantity, int hotelId, int cartItemId, int userId, int foodId,
			double totalPrice, String foodSession, double overAllPrice) {
		super();
		this.foodName = foodName;
		this.foodImage = foodImage;
		this.quantity = quantity;
		this.hotelId = hotelId;
		this.cartItemId = cartItemId;
		this.userId = userId;
		this.foodId = foodId;
		this.totalPrice = totalPrice;
		this.foodSession = foodSession;
		this.overAllPrice = overAllPrice;
	}
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	public void setMealTime(String foodSession2) {
		// TODO Auto-generated method stub
		
	}
}
