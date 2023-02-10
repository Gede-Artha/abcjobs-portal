package com.abc.register;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_users")
public class RegisterUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_user;
	
	private String email;
	private String password;
	
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
	private RegisterProfile profile;

	public RegisterUser() {

	}

	public RegisterUser(String email, String password, RegisterProfile profile) {
		super();
		this.email = email;
		this.password = password;
		this.profile = profile;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RegisterProfile getProfile() {
		return profile;
	}

	public void setProfile(RegisterProfile profile) {
		this.profile = profile;
	}
	
	
}
