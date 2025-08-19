package com.icbt.model;

import java.io.Serializable;
import java.util.List;

public class Bill implements Serializable {
    private int billId;
    private Customer customer;
    private List<Item> items;
    private double totalAmount;

    // Constructor
    public Bill(int billId, Customer customer, List<Item> items, double totalAmount) {
        this.billId = billId;
        this.customer = customer;
        this.items = items;
        this.totalAmount = totalAmount;
    }

    // Getters and setters
    public int getBillId() { return billId; }
    public void setBillId(int billId) { this.billId = billId; }

    public Customer getCustomer() { return customer; }
    public void setCustomer(Customer customer) { this.customer = customer; }

    public List<Item> getItems() { return items; }
    public void setItems(List<Item> items) { this.items = items; }

    public double getTotalAmount() { return totalAmount; }
    public void setTotalAmount(double totalAmount) { this.totalAmount = totalAmount; }
}
