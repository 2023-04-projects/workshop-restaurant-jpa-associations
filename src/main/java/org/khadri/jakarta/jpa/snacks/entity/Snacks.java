package org.khadri.jakarta.jpa.snacks.entity;


import jakarta.persistence.*;
import java.util.List;

@Entity
public class Snacks {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="snack_id")
    private int snackId;

    private String name;

    private double price;

    @ManyToMany(mappedBy = "snacks")
    private List<Order> orders;

    public int getSnackId() {
        return snackId;
    }

    public void setSnackId(int snackId) {
        this.snackId = snackId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }
}

