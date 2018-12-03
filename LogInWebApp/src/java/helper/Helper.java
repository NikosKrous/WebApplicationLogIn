/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import crypt.BCrypt;
import model.Users;

/**
 *
 * @author Νίκος
 */
public class Helper {

    public static boolean checkEmptyFields(Users u) {
        if (u.getFirstname() == null && u.getFirstname().isEmpty()) {
            return false;
        }
        if (u.getLastname() == null && u.getLastname().isEmpty()) {
            return false;
        }
        if (u.getEmail() == null && u.getEmail().isEmpty()) {
            return false;
        }
        if (u.getPassword() == null && u.getPassword().isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean checkPassword(String password, String confPassword) {
        if (password.equals(confPassword)) {
            return true;
        } else {
            return false;
        }
    }
    
    public static boolean checkHashedPassword(String password, Users u) {
        if (BCrypt.checkpw(password, u.getPassword())) {
            return true;
        } else {
            return false;
        }
    }
}
