package com.khadri.jakarta.jpa.form;

public class SnackForm {

	private String name;
	private Integer qunatity;

	private Double price;

	private Double totalPrice;

	private String type;

	public SnackForm(String name, Integer qunatity, Double price, Double totalPrice, String type) {
		super();
		this.name = name;
		this.qunatity = qunatity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.type = type;
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

	@Override
	public String toString() {
		return "SnackForm [name=" + name + ", qunatity=" + qunatity + ", price=" + price + ", totalPrice=" + totalPrice
				+ "]";
	}

}
