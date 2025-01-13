package org.khadri.jakarta.jpa.salads.entity;


import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Users")
public class User {
	private int userId;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Salads> salads = new ArrayList<>();

	public int getUserId() {
		return userId;
	}
	 public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<Salads> getSalads() {
		return salads;
	}

	public void setSalads(List<Salads> salads) {
		this.salads = salads;
	}

}