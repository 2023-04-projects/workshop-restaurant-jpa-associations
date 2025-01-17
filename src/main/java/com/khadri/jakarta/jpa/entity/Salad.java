package com.khadri.jakarta.jpa.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Salad")
public class Salad {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "salad_id")
	private int saladId;

	@Column(name = "salad_name")
	private String saladName;

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

	public int getSaladId() {
		return saladId;
	}

	public void setSaladId(int saladId) {
		this.saladId = saladId;
	}

	public String getSaladName() {
		return saladName;
	}

	public void setSaladName(String saladName) {
		this.saladName = saladName;
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

	@Override
	public String toString() {
		return "Salad [saladId=" + saladId + ", saladName=" + saladName + ", price=" + price + ", quantity=" + quantity
				+ ", menuName=" + menuName + ", totalPrice=" + totalPrice + ", user=" + user + "]";
	}

}
