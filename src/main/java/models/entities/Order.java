package models.entities;

import java.time.LocalDate;
import java.util.ArrayList;

public class Order{
    private int id;
    private String orderNumber;
    private ArrayList<ShoppingCart> productList;
    private int userId;
    private float total;
    private LocalDate orderDate;

    public Order(int id, ArrayList<ShoppingCart> productList, int userId, float total) {
        this.id = id;
        this.productList = productList;
        this.userId = userId;
        this.total = total;
        this.orderDate = java.time.LocalDate.now();
    }

    public Order(String OrderNumber, ArrayList<ShoppingCart> productList, int userId, float total) {
        this.orderNumber = OrderNumber;
        this.productList = productList;
        this.userId = userId;
        this.total = total;
        this.orderDate = java.time.LocalDate.now();
    }

    public int getId() {
        return id;
    }

    public int getUserId() {
        return userId;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public float getTotal() {
        return total;
    }

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<ShoppingCart> getProductList() {
        return productList;
    }

    public void setProductList(ArrayList<ShoppingCart> productList) {
        this.productList = productList;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }
}
