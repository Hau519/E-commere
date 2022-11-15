package models.entities;

public class Products {
    private static int id = 1000;
    private String name;
    private float price;
    private int availableQuantity;
    private Category category;
    private String description ="";

    public Products(String name, float price, int quantity, Category category, String des){
        id = id + 1;
        this.name = name;
        this.price = price;
        this.availableQuantity = quantity;
        this.description = des;
    }
}
