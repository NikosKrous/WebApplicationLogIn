/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import crypt.BCrypt;
import dao.UsersDao;
import helper.Helper;
import model.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Νίκος
 */
@Controller
@RequestMapping(value = "/users")
@SessionAttributes("users")

public class UsersController {

    @Autowired
    private UsersDao usersDao;

    @RequestMapping(value = "/form.htm", method = RequestMethod.GET)
    public String logIn(ModelMap model) {
        Users u = new Users();
        model.addAttribute("users", u);
        return "login";
    }

    @RequestMapping(value = "/registrationcheck.htm", method = RequestMethod.POST)
    public String registrationForm(ModelMap model, Users u) {
        if (Helper.checkEmptyFields(u)) {
            model.addAttribute("message", "Please fill in the required fields.");
            model.addAttribute("users", u);
            return "login";
        }
        boolean samePassword = Helper.checkPassword(u.getPassword(), u.getConfpassword());
        if (samePassword == true) {
            String uexist = usersDao.checkUexist(u.getEmail());
            if (uexist == null) {
                String hashpass = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt());
                u.setPassword(hashpass);
                usersDao.addUsers(u);
                return "successfulreg";
            } else {
                model.addAttribute("message", "This email already exists. Please type a different email.");
                model.addAttribute("users", u);
                return "login";
            }
        } else {
            model.addAttribute("message", "Passwords must be the same.");
            model.addAttribute("users", u);
            return "login";
        }
    }
    
    @RequestMapping(value = "/logincheck.htm", method = RequestMethod.POST)
    public String loginForm(ModelMap model, @RequestParam("email") String email, @RequestParam("password") String password) {
        Users u = usersDao.checkLogin(email, password);
        if (u == null) {
            model.addAttribute("message", "Incorrect email or password!");
            model.addAttribute("users", new Users());
            return "login";
        } else {
            model.addAttribute(u);
            return "successfullogin";
        }
    }
}


