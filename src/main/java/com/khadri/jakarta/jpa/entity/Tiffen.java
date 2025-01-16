package com.khadri.jakarta.jpa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Tiffen {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "tiffen_id")
	private int tiffenId;

	@Column(name = "tiffen_name")
	private String tiffenName;

	private double price;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "menu_name")
	private String menuName;

	@Column(name = "total_price")
	private double totalPrice;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	public int getTiffenId() {
		return tiffenId;
	}

	public void setTiffenId(int tiffenId) {
		this.tiffenId = tiffenId;
	}

	public String getTiffenName() {
		return tiffenName;
	}

	public void setTiffenName(String tiffenName) {
		this.tiffenName = tiffenName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	 

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
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

}
