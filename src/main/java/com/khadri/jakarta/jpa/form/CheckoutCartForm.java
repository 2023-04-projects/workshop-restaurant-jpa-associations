package com.khadri.jakarta.jpa.form;

import java.util.ArrayList;
import java.util.List;

public class CheckoutCartForm {

	private List<SnackForm> snacks = new ArrayList<>(); 

	public List<SnackForm> getSnacks() {
		return snacks;
	}

	public void setSnacks(List<SnackForm> snacks) {
		this.snacks = snacks;
	}

}
