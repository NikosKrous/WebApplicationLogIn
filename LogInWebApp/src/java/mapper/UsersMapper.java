/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Users;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Νίκος
 */
public class UsersMapper implements RowMapper<Users> {

    @Override
    public Users mapRow(ResultSet rs, int i) throws SQLException {
        Users u = new Users();
        u.setFirstname(rs.getString(1));
        u.setLastname(rs.getString(2));
        u.setEmail(rs.getString(3));
        u.setPhone(rs.getString(4));
        u.setCompany(rs.getString(5));
        u.setPassword(rs.getString(6));
        return u;
    }
    
    
}
