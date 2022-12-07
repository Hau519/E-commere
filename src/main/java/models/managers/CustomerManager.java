package models.managers;

import models.entities.Customer;
import org.intellij.lang.annotations.Language;
import services.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class CustomerManager {

    @Language("MySQL")
    private static final String queryDisplay = "select * from customer";
    @Language("MySQL")
    private static final String queryInsert = "insert into customer(first_name, last_name, email, phone, password) values (?,?,?,?,?)";
    @Language("MySQL")
    private static final String querySearch = "select * from customer where email = ? and password = ?";
    public static HashMap<Integer, Customer> getAll(){
        HashMap<Integer, Customer> result = new HashMap<>();
        try (PreparedStatement preparedStatement = DBConnection.getInstance().preparedQuery(queryDisplay)){
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String fName = resultSet.getString("first_name");
                String lName = resultSet.getString("last_name");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String password = resultSet.getString("password");

                Customer customer = new Customer(id, fName, lName, phone, password, email);
                result.put(customer.getId(), customer);
            }
        }catch(SQLException e){
            throw new RuntimeException(e);
        }finally {
            DBConnection.getInstance().close();
        }
        return result;
    }
    public static void insertNewCustomer(Customer newCustomer){

        try (PreparedStatement preparedStatement = DBConnection.getInstance().preparedQuery(queryInsert)){
            preparedStatement.setString(1, newCustomer.getFirstName());
            preparedStatement.setString(2, newCustomer.getLastName());
            preparedStatement.setString(3, newCustomer.getEmail());
            preparedStatement.setString(4, newCustomer.getPhone());
            preparedStatement.setString(5, newCustomer.getPassword());
            preparedStatement.executeUpdate();

        }catch(SQLException e){
            throw new RuntimeException(e);
        }finally {
            DBConnection.getInstance().close();
        }
    }
    public static Customer getUserLogin(String email, String password){
        Customer user = null;
        try (PreparedStatement preparedStatement = DBConnection.getInstance().preparedQuery(querySearch)){
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fName = resultSet.getString("first_name");
                String lName = resultSet.getString("last_name");
                String phone = resultSet.getString("phone");
                user = new Customer(id, fName, lName, email, phone, password);
            }
        }catch(SQLException e){
            throw new RuntimeException(e);
        }finally {
            DBConnection.getInstance().close();
        }
        return user;
    }
}
