package com.khadri.jakarta.jpa.form;

public class SnackForm {

	private String itemName;

	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public SnackForm(String itemName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.itemName = itemName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getItemName() {
		return itemName;
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
		return "SnackForm [itemName=" + itemName + ", quantity=" + quantity + ", price=" + price + ", totalPrice="
				+ totalPrice + ", menuName=" + menuName + " ]";
	}

}
