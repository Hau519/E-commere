package models.entities;

import java.util.HashMap;

public class Item {
    private String name;
    private float price;
    private String unit;
    private int quantity;

    public Item(String name, float price, String unit, int quantity){
        this.name = name;
        this.price = price;
        this.unit = unit;
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public float getPrice() {
        return price;
    }

    public String getUnit() {
        return unit;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}

