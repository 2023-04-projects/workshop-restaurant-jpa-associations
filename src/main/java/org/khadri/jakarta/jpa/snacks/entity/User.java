package org.khadri.jakarta.jpa.snacks.entity;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

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
