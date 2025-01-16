package com.khadri.jakarta.jpa.form;

public class TiffenForm {

	private String tiffenName;

	private Integer quantity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public TiffenForm(String tiffenName, Integer quantity, Double price, Double totalPrice, String menuName) {
		super();
		this.tiffenName = tiffenName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getTiffenName() {
		return tiffenName;
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

	@Override
	public String toString() {
		return "TiffenForm [tiffenName=" + tiffenName + ", quantity=" + quantity + ", price=" + price + ", totalPrice="
				+ totalPrice + ", menuName=" + menuName + "]";
	}

}
