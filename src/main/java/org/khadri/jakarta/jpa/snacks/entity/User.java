package org.khadri.jakarta.jpa.snacks.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "Users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userId;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Snack> snacks = new ArrayList<>();

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<Snack> getSnacks() {
		return snacks;
	}

	public void setSnacks(List<Snack> snacks) {
		this.snacks = snacks;
	}

}
