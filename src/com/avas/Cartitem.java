// CartItem.java
package com.avas;
public class Cartitem {
    private String itemName;
    private int quantity;
    private double price;
    private double total;

    public Cartitem(String itemName, int quantity, double price, double total) {
        this.itemName = itemName;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
    }

    // Getters and setters

    // Helper method to format the total amount with two decimal places
    public String getTotalFormatted() {
        return String.format("%.2f", total);
    }
}
