package com.khadri.jakarta.jpa.form;

public class SnackForm {

	private String snackName;

	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public SnackForm(String snackName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.snackName = snackName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getSnackName() {
		return snackName;
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
		return "SnackForm [snackName=" + snackName + ", quantity=" + quantity + ", price=" + price + ", totalPrice=" + totalPrice
				+ ", menuName=" + menuName + " ]";
	}

}
