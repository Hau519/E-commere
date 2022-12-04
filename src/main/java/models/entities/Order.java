package models.entities;

public class Order {
    private int id;
    private int productId;
    private int userId;
    private float total;
    private String orderDate;

    public Order(int id, int productId, int userId, float total, String orderDate) {
        this.id = id;
        this.productId = productId;
        this.userId = userId;
        this.total = total;
        this.orderDate = orderDate;
    }

    public Order(int productId, int userId, float total) {
        this.productId = productId;
        this.userId = userId;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public int getProductId() {
        return productId;
    }

    public int getUserId() {
        return userId;
    }

    public float getTotal() {
        return total;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }
}
