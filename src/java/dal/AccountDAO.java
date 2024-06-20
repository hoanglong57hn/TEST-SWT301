/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author HOANG LONG
 */
public class AccountDAO extends DBContext{

    public List<Account> getAll() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString("username"), rs.getString("password"), rs.getInt("role"));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public void insert(Account acc){
        String sql = "INSERT INTO Account (username, password, role) VALUES (?, ?, ?)";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1,acc.getUsername());
            pre.setString(2,acc.getPassword());
            pre.setInt(3,acc.getRole());
            pre.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
