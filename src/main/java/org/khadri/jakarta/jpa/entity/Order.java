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
@Table(name = "Orders")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = " order_id")
	private int orderId;

	@Column(name = " iteam_name")
	private String iteamName;

	private int quantity;

	@Column(name = " total_price")
	private double totalPrice;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@ManyToMany
	@JoinTable(name = "order_lunch", joinColumns = @JoinColumn(name = "order_id"), inverseJoinColumns = @JoinColumn(name = "lunch_id"))
	private List<Lunch> lunch;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getIteamName() {
		return iteamName;
	}

	public void setIteamName(String iteamName) {
		this.iteamName = iteamName;
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

	public List<Lunch> getLunch() {
		return lunch;
	}

	public void setLunch(List<Lunch> lunch) {
		this.lunch = lunch;
	}
}
