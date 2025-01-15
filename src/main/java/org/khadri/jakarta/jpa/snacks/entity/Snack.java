package org.khadri.jakarta.jpa.snacks.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "Snack")
public class Snack {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "snack_id")
	private int snackId;

	@Column(name = "item_name")
	private String itemName;

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

	public String getItemName() {
		return itemName;
	}

	public void setSnackName(String itemName) {
		this.itemName = itemName;
	}

	public int getSnackId() {
		return snackId;
	}

	public void setSnackId(int snackId) {
		this.snackId = snackId;
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
