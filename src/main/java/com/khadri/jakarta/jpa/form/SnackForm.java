package com.khadri.jakarta.jpa.form;

public class SnackForm {

	private String name;

	private Integer qunatity;

	private Double price;

	private Double totalPrice;

	private String menuName;

	public SnackForm(String name, Integer qunatity, Double price, Double totalPrice, String menuName) {
		super();
		this.name = name;
		this.qunatity = qunatity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.menuName = menuName;
	}

	public String getName() {
		return name;
	}

	public Integer getQunatity() {
		return qunatity;
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
		return "SnackForm [name=" + name + ", qunatity=" + qunatity + ", price=" + price + ", totalPrice=" + totalPrice
				+ ", menuName=" + menuName + " ]";
	}

}
