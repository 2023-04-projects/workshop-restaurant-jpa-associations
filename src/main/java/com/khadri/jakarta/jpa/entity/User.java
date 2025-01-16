package com.khadri.jakarta.jpa.entity;

import jakarta.persistence.*;
import java.util.ArrayList;
import java.util.List;

import com.khadri.jakarta.jpa.form.SnackForm;

@Entity
@Table(name = "Users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userId;

	@Column(name = "phone_number")
	private Long phoneNumber;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Snack> snacks = new ArrayList<>();

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Tiffen> tiffen = new ArrayList<>();
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Dinner> dinner = new ArrayList<>();


	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public List<Snack> getSnacks() {
		return snacks;
	}

	public void setSnacks(List<Snack> snacks) {
		this.snacks = snacks;
	}

	public List<Tiffen> getTiffen() {
		return tiffen;
	}

	public void setTiffen(List<Tiffen> tiffen) {
		this.tiffen = tiffen;
	}

	public List<Dinner> getDinner() {
		return dinner;
	}

	public void setDinner(List<Dinner> dinner) {
		this.dinner = dinner;
	}
	

}
