package com.chainsys.munchmate.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.munchmate.dao.UserDAO;
import com.chainsys.munchmate.model.User;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;



@Controller

public class UserController {
	@Autowired
	UserDAO userDao;

	@RequestMapping("/home")
	public static String home() {
		return "index.jsp";
	}

	/*
	 * @RequestMapping("/save") public static String save() { return "success.jsp";
	 * }
	 */
	@PostMapping("/register")
	//public String saveUser(@RequestParam("name") form name
	//RequestParam("name") String name form html naming
		public String saveUser(@RequestParam("name") String name, @RequestParam("password") String password,@RequestParam("phonenumber") String phonenumber,@RequestParam("city") String city,@RequestParam("email") String email)
				throws ClassNotFoundException, SQLException {
			System.out.println("in register handle");
			User user = new User();
			user.setName(name);
			user.setPassword(password);
			user.setPhoneNumber(phonenumber);
			user.setCity(city);
			user.setMailId(email);
			System.out.println(user.getName()+user.getPassword()+user.getPhoneNumber()+user.getCity()+user.getMailId());
			userDao.insertRegistration(user);
			return "redirect:/listofusers";

		}
    @PostMapping("/login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
        boolean isValidUser = userDao.login(email, password);
        if (isValidUser) {
            session.setAttribute("email", email); 
            return "redirect:/menuDisplay.jsp";
        } else {
            session.setAttribute("message", "Invalid credentials. Please try again.");
            return "redirect:/loginPage.jsp"; 
        }
    }


}
