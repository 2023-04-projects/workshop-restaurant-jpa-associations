package com.khadri.jakarta.jpa.form;

public class LunchForm {

	private String lunchName;

	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public LunchForm(String lunchName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.lunchName = lunchName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getLunchName() {
		return lunchName;
	}

	public void setLunchName(String lunchName) {
		this.lunchName = lunchName;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	@Override
	public String toString() {
		return "LunchForm [lunchName=" + lunchName + ", quantity=" + quantity + ", price=" + price + ", totalPrice="
				+ totalPrice + ", menuName=" + menuName + "]";
	}
}
