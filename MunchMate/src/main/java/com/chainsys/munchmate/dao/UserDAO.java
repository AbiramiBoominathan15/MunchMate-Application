package com.chainsys.munchmate.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chainsys.munchmate.model.Cart;
import com.chainsys.munchmate.model.Food;
import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;

@Repository

public interface UserDAO {
	public void insertRegistration(User user);

	public void hotelRegistration(Hotel hotel);

	public List<User> getAllUsers();

	public boolean login(String mailId, String password);

	public void deleteUser(int userId);

	public int getUserID(String email);

	public List<Hotel> getAllHotels();

	public Hotel getHotelById(int hotelId);

	public void updateHotel(Hotel hotel);

	public Hotel getHotelByEmail(String email);
	
	public void insertFood(Food food) ;
	
	public List<Food> getFoodsByHotelId(int hotelId);
	
	public void deleteHotel(int hotelId) ;
	
    public List<Food> getAllFoods();
    
    
    
	public void addToCart(Cart cartItem);
	
	public Food  getBase64FoodImage(int foodid) ;
	
	public List<Cart> viewCart(int userId);
	
	public void removeCartItem(int foodId);
	
	public void updateCartItemQuantity(int foodId, int quantity);

	public List<Food> searchFood(String foodName);

    public void updateFoodPrice(int foodId, int newPrice) ;

    public void updateFoodQuantity(int foodId, int newQuantity);

    public List<Cart> orderView(int hotelId);
    
    
    
    public void updateOrders(int userId) ;
    
    public void paymentUpdate(int userId, String status);
    
    public void deleteFood(int foodId);
	 public List<Food> getFoodQuantity(int foodId) ;

	  public List<Food> searchFoodByName(String foodName);
		public void updateUser(User user) ;
		public List<User> userProfile();
		public void updateFoodQuantityDecrease(int foodId, int quantity) ;

		
		public void foodQuantityDecrease( int foodId , int addedQuantity);

		public void updateDeliveryStatus(Cart cartItem);
		public List<Cart> getDeliveredOrders();

}
