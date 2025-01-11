package org.khadri.jakarta.jpa.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	// @Column(name = " orderId")
	private int orderId;

	@Column(name = " saladName")
	private String name;

	private int quantity;

	// @Column(name = " total_price")
	private double totalPrice;

	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;

	@ManyToMany
	@JoinTable(name = "orderSalad", joinColumns = @JoinColumn(name = "orderId"), inverseJoinColumns = @JoinColumn(name = "saladId"))
	private List<Salads> salad;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getSaladName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Salads> getSalad() {
		return salad;
	}

	public void setSalad(List<Salads> salad) {
		this.salad = salad;
	}
}