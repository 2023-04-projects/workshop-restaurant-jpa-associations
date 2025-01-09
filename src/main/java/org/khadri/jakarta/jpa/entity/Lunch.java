package org.khadri.jakarta.jpa.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Lunch {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lunch_id")
	private int lunchId;

	private String name;

	private double price;

	@ManyToMany(mappedBy = "Lunch")
	private List<Order> orders;

	public int getLunchId() {
		return lunchId;
	}

	public void setLunchId(int lunchId) {
		this.lunchId = lunchId;
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