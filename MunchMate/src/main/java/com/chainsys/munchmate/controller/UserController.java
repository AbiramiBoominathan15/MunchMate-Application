package com.chainsys.munchmate.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.munchmate.dao.UserDAO;
import com.chainsys.munchmate.model.Food;
import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;

import jakarta.servlet.http.HttpSession;

@Controller

public class UserController {
	@Autowired
	UserDAO userDao;

	@RequestMapping("/home")
	public static String home() {
		return "index.jsp";
	}

	@PostMapping("/register")
	public String saveUser(@RequestParam("name") String name, @RequestParam("password") String password,
			@RequestParam("phonenumber") String phonenumber, @RequestParam("city") String city,
			@RequestParam("email") String email) throws ClassNotFoundException, SQLException {
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		user.setPhoneNumber(phonenumber);
		user.setCity(city);
		user.setMailId(email);
		System.out.println(
				user.getName() + user.getPassword() + user.getPhoneNumber() + user.getCity() + user.getMailId());
		userDao.insertRegistration(user);
		return "redirect:/listofusers";

	}

	@PostMapping("/hotelregister")
	public String saveHotel(@RequestParam("hotelName") String name, @RequestParam("image") MultipartFile imageFile,
			@RequestParam("phonenumber") String phonenumber, @RequestParam("city") String city,
			@RequestParam("password") String password, @RequestParam("email") String email)
			throws  IOException {
		System.out.println("in register handle");

		if (!imageFile.isEmpty()) {
			@SuppressWarnings("unused")
			byte[] imageBytes = imageFile.getBytes();

			Hotel hotel = new Hotel();
			hotel.setHotelName(name);
			hotel.setHotelPhoneNumber(phonenumber);
			hotel.setHotelLocation(city);
			hotel.setHotelPassword(password);
			hotel.setHotelEmail(email);
			hotel.setStatus("no");
			System.out.println(hotel.getHotelName() + hotel.getHotelImage() + hotel.getHotelPhoneNumber()
					+ hotel.getHotelLocation() + hotel.getHotelPassword() + hotel.getHotelEmail());
			userDao.hotelRegistration(hotel);

			/*
			 * return "redirect:/hotels";
			 */		
		return "redirect:loginPage.jsp";
	}
		else {
			return "redirect:/error";
		}
	}
	 @GetMapping("/listofusers")
	public String listOfUsers(Model model) {
		List<User> users = userDao.getAllUsers();
		model.addAttribute("users", users);
		System.out.println(users);
		return "customerRead.jsp";
	}

	@PostMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int userId) {
		userDao.deleteUser(userId);
		return "redirect:/listofusers";
	}

	@GetMapping("/hotels")
	public String getAllHotels(Model model) {
		List<Hotel> hotels = userDao.getAllHotels();
		model.addAttribute("hotels", hotels);
		System.out.println(hotels);

		return "hotelDetails.jsp";
	}

	/*
	 * @PostMapping("/login") public String login(@RequestParam("email") String
	 * email, @RequestParam("password") String password, HttpSession session) {
	 * 
	 * if (email.equals("abiramiboominathan15@gmail.com") &&
	 * password.equals("abirami@15")) { session.setAttribute("email", email); return
	 * "redirect:/adminDashboard.jsp"; } else if (userDao.login(email, password)) {
	 * session.setAttribute("email", email);
	 * System.out.println(userDao.getUserID(email)); session.setAttribute("userid",
	 * userDao.getUserID(email));
	 * 
	 * return "redirect:/menuDisplay.jsp"; } else { session.setAttribute("message",
	 * "Invalid credentials. Please try again."); return "redirect:/loginPage.jsp";
	 * } } 134 157
	 */ 
	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {

		if (email.equals("abiramiboominathan15@gmail.com") && password.equals("abirami@15")) {
			session.setAttribute("email", email);
			return "redirect:/adminDashboard.jsp";
		} else if (userDao.login(email, password)) {
			session.setAttribute("email", email);
			session.setAttribute("userid", userDao.getUserID(email));
			return "redirect:/foods";
		} else {
			Hotel hotel = userDao.getHotelByEmail(email);
			if (hotel != null && hotel.getHotelPassword().equals(password)
					&& hotel.getStatus().equalsIgnoreCase("approved")) {
				session.setAttribute("email", email);
				session.setAttribute("hotelId", hotel.getHotelId());
	            session.setAttribute("hotelName", hotel.getHotelName()); 
				/*
				 * return "redirect:/hotelmenu.jsp";
				 */		
	            return "redirect:/hotelDashboard.jsp";
	            } 
			else {
				session.setAttribute("message", "Your hotel is not yet approved.");
				return "redirect:/loginPage.jsp";
			}
		}
	}

	@PostMapping("/updateApproval")
	public String updateApproval(@RequestParam("hotelId") int hotelId, @RequestParam("approved") String approved) {
		Hotel hotel = new Hotel();
		hotel.setHotelId(hotelId);
		hotel.setStatus(approved);
		userDao.updateHotel(hotel);

		return "redirect:/hotels";
	}
	@PostMapping("/foodregister")
	public String saveFood(@RequestParam("hotelid") int hotelId, 
			@RequestParam("hotelname") String hotelName, 

			@RequestParam("foodName") String foodName, 
			@RequestParam("foodCategory") String foodCategory, 
			@RequestParam("foodSession") String foodSession, 
	
			
			@RequestParam("foodPrice") int foodPrice, 
			@RequestParam("foodQuantity") int foodQuantity, 

			
			
			@RequestParam("image") MultipartFile imageFile)
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("in register handle");

		if (!imageFile.isEmpty()) {
			byte[] imageBytes = imageFile.getBytes();			
			Food food = new Food();
			food.setHotelId(hotelId);
			food.setHotelName(hotelName);
			food.setFoodName(foodName);
			food.setFoodCategories(foodCategory);
			food.setFoodSession(foodSession);
			food.setFoodPrice(foodPrice);
			food.setFoodQuantity(foodQuantity);
			food.setFoodImage(imageBytes);
			System.out.println(food.getHotelName()+food.getFoodName()+food.getFoodCategories()+food.getFoodSession());
			
			
			userDao.insertFood(food);

			return "redirect:/foodList";
		} else {
			return "redirect:/error";
		}
	}
    @GetMapping("/foodList")
    public String showFoodList(Model model,HttpSession session) 
    {
    	int hotelId=(int) session.getAttribute("hotelId");
        List<Food> foodList = userDao.getFoodsByHotelId(hotelId);
        model.addAttribute("foodList", foodList);
		System.out.println(foodList);

		/*
		 * return "menu.jsp";
		 * 
		 */   
		return "food";
		}
    @GetMapping("/food")
    public String showFoodList(Model model) {
        List<Food> foods = userDao.getAllFoods();
        model.addAttribute("foods", foods);
        return "food.jsp"; 
    }
    @GetMapping("/foods")
    public String showFoodListt(Model model) {
        List<Food> foods = userDao.getAllFoods();
        model.addAttribute("foods", foods);
        return "addToCart.jsp"; 
    }
    @PostMapping("/deleteHotel")
    public String deleteHotel(@RequestParam("hotelId") int hotelId) {
        try {
            userDao.deleteHotel(hotelId); 
            return "redirect:/hotels";
        } catch (Exception e) {
            return "redirect:/error";
        }
    }

}

