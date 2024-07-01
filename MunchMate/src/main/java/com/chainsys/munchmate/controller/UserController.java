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

import com.chainsys.munchmate.dao.HotelDAO;
import com.chainsys.munchmate.dao.UserDAO;
import com.chainsys.munchmate.model.Hotel;
import com.chainsys.munchmate.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class UserController {
	@Autowired
	UserDAO userDao;
	HotelDAO hotelDAO;

	@RequestMapping("/home")
	public static String home() {
		return "index.jsp";
	}

	/*
	 * @RequestMapping("/save") public static String save() { return "success.jsp";
	 * }
	 */
	@PostMapping("/register")
	// public String saveUser(@RequestParam("name") form name
	// RequestParam("name") String name form html naming
	public String saveUser(@RequestParam("name") String name, @RequestParam("password") String password,
			@RequestParam("phonenumber") String phonenumber, @RequestParam("city") String city,
			@RequestParam("email") String email) throws ClassNotFoundException, SQLException {
		System.out.println("in register handle");
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
			throws ClassNotFoundException, SQLException, IOException {
		System.out.println("in register handle");

		if (!imageFile.isEmpty()) {
			byte[] imageBytes = imageFile.getBytes();

			Hotel hotel = new Hotel();
			hotel.setHotelName(name);
			hotel.setHotelImage(imageBytes);
			hotel.setHotelPhoneNumber(phonenumber);
			hotel.setHotelLocation(city);
			hotel.setHotelPassword(password);
			hotel.setHotelEmail(email);
			hotel.setStatus("no");
			System.out.println(hotel.getHotelName() + hotel.getHotelImage() + hotel.getHotelPhoneNumber()
					+ hotel.getHotelLocation() + hotel.getHotelPassword() + hotel.getHotelEmail());
			userDao.hotelRegistration(hotel);

			return "redirect:/hotels";
		} else {
			return "redirect:/error";
		}
	}

	/*
	 * @PostMapping("/login") public String login(@RequestParam("email") String
	 * email, @RequestParam("password") String password, Model model, HttpSession
	 * session) { boolean isValidUser = userDao.login(email, password); if
	 * (isValidUser) { session.setAttribute("email", email); return
	 * "redirect:/menuDisplay.jsp"; } else { session.setAttribute("message",
	 * "Invalid credentials. Please try again."); return "redirect:/loginPage.jsp";
	 * } }
	 */ @GetMapping("/listofusers")
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

	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {

		if (email.equals("abiramiboominathan15@gmail.com") && password.equals("abirami@15")) {
			session.setAttribute("email", email);
			return "redirect:/adminDashboard.jsp";
		} else if (userDao.login(email, password)) {
			session.setAttribute("email", email);
			System.out.println(userDao.getUserID(email));
			session.setAttribute("userid", userDao.getUserID(email));

			return "redirect:/menuDisplay.jsp";
		} 
		else {
			session.setAttribute("message", "Invalid credentials. Please try again.");
			return "redirect:/loginPage.jsp";
		}
	}
	
    @PostMapping("/updateApproval")
    public String updateApproval(@RequestParam("hotelId") int hotelId, @RequestParam("approved") String approved) {
    	Hotel hotel=new Hotel();
			hotel.setHotelId(hotelId);
		    hotel.setStatus(approved);
		    userDao.updateHotel(hotel);

        return "redirect:/hotels";
    }


}
