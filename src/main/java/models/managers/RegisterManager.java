package models.managers;

import models.entities.Customer;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;

public class RegisterManager {
    public String registerUser(Customer customer){
        String fName = customer.getFirstName();
        String lName = customer.getLastName();
        String phone = customer.getPhone();
        String email = customer.getEmail();
        String password = customer.getPassword();

        try{
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Farm_db", "root", "1Freebish!");
            PreparedStatement ps;
            ps = conn.prepareStatement("insert into customer(first_name, last_name, email, phone, password) values (?,?,?,?,?)");
            ps.setString(1, fName);
            ps.setString(2, lName);
            ps.setString(3, email);
            ps.setString(4, phone);
            ps.setString(5, password);

            int i = ps.executeUpdate();

            //ps.close();
            //conn.close();

            if(i!=0)
                return "Success";
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return "Something went wrong!";
    }

}
