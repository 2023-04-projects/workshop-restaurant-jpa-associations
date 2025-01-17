package com.khadri.jakarta.jpa.form;

import java.util.ArrayList;
import java.util.List;

public class CheckoutCartForm {

	private List<SnackForm> snacks = new ArrayList<>();
	private List<TiffenForm> tiffen = new ArrayList<>();
	private List<DinnerForm> dinner = new ArrayList<>();
	private List<SaladForm> salads = new ArrayList<>();
	private  String  userNumber;
	
	public List<SnackForm> getSnacks() {
		return snacks;
	}

	public void setSnacks(List<SnackForm> snacks) {
		this.snacks = snacks;
	}

	public List<TiffenForm> getTiffen() {
		return tiffen;
	}

	public void setTiffen(List<TiffenForm> tiffen) {
		this.tiffen = tiffen;
	}

	public String getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(String userNumber) {
		this.userNumber = userNumber;
	}

	public List<SaladForm> getSalads() {
		return salads;
	}

	public void setSalads(List<SaladForm> salads) {
		this.salads = salads;
	}

	public void clearCart() {
		this.snacks.clear();
	}

	public List<DinnerForm> getDinner() {
		return dinner;
	}

	public void setDinner(List<DinnerForm> dinner) {
		this.dinner = dinner;
	}

}
