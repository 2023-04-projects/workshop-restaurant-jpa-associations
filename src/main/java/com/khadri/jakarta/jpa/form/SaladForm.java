package com.khadri.jakarta.jpa.form;

public class SaladForm {

	private String saladName;
	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public SaladForm(String saladName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.saladName = saladName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getSaladName() {
		return saladName;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public Double getPrice() {
		return price;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	@Override
	public String toString() {
		return "SaladForm [saladName=" + saladName + ", quantity=" + quantity + ", price=" + price + ", totalPrice=" + totalPrice
				+ ", menuName=" + menuName + "]";
	}
}
