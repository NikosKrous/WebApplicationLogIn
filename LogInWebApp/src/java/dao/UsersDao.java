/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import helper.Helper;
import javax.sql.DataSource;
import mapper.UsersMapper;
import model.Users;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Νίκος
 */
public class UsersDao {

    private DataSource dataSource;

    public UsersDao(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public int addUsers(Users u) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "INSERT INTO users values('" + u.getFirstname() + "', '" + u.getLastname() + "', '" + u.getEmail() + "', '" + u.getPhone() + "', '" + u.getCompany() + "', '" + u.getPassword() + "');";
        return jdbcTemplate.update(sql);
    }

    public Users checkLogin(String email, String password) {
        Users u = null;
        String sql = "SELECT * FROM users WHERE email = ?;";
        try {
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
            u = jdbcTemplate.queryForObject(
                    sql, new UsersMapper(), email);
            boolean samePassword = Helper.checkHashedPassword(password, u);
            if (samePassword == true) {
                u.setPassword(null);
                return u;
            } else {
                return null;
            }
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    public String checkUexist (String email) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        String sql = "SELECT email FROM users WHERE email = ?;";
        try {
            String mail = jdbcTemplate.queryForObject(sql, String.class, email);
            return mail;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

}
