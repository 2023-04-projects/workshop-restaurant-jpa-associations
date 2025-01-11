package org.khadri.jakarta.jpa.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Salads {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "saladId")
	private int id;

	private String name;

	private double price;

	@ManyToMany(mappedBy = "salad")
	private List<Order> order;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public List<Order> getOrder() {
		return order;
	}

	public void setOrders(List<Order> order) {
		this.order = order;
	}
}