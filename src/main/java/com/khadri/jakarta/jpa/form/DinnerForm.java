package com.khadri.jakarta.jpa.form;

public class DinnerForm {
	private String dinnerName;

	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public DinnerForm(String dinnerName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.dinnerName = dinnerName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getDinnerName() {
		return dinnerName;
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
		return "DinnerForm [dinnerName=" + dinnerName + ", quantity=" + quantity + ", price=" + price + ", totalPrice="
				+ totalPrice + ", menuName=" + menuName + " ]";
	}

}


