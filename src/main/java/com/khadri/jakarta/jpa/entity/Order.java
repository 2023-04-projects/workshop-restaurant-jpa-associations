package com.khadri.jakarta.jpa.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity 
@Table(name = "Orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private int orderId;

	@Column(name = "item_name")
	private String itemName;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "total_price")
	private double totalPrice;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToMany
	@JoinTable(name = "order_snack", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "snack_id"))
	private List<Snack> snacks;

	@ManyToMany
	@JoinTable(name = "order_tiffen", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "tiffen_id"))
	private List<Tiffen> tiffens;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
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

	public List<Snack> getSnacks() {
		return snacks;
	}

	public void setSnacks(List<Snack> snacks) {
		this.snacks = snacks;
	}

	public List<Tiffen> getTiffens() {
		return tiffens;
	}

	public void setTiffens(List<Tiffen> tiffens) {
		this.tiffens = tiffens;
	}
}
