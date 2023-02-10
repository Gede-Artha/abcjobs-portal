package com.abc.search;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

	
	@Entity
	@Table(name = "tb_user_profile")
	public class User {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@JoinColumn(name = "id_user")
		
	    private String resetPasswordToken;
		private int id_profile;
	
		private String first_name;
		private String last_name;
		private String country;
		private String city;
		
		public User() {

		}
		
		

		public String getResetPasswordToken() {
			return resetPasswordToken;
		}

		public void setResetPasswordToken(String resetPasswordToken) {
			this.resetPasswordToken = resetPasswordToken;
		}



		public int getId_profile() {
			return id_profile;
		}

		public void setId_profile(int id_profile) {
			this.id_profile = id_profile;
		}


		public String getFirst_name() {
			return first_name;
		}

		public void setFirst_name(String first_name) {
			this.first_name = first_name;
		}

		public String getLast_name() {
			return last_name;
		}

		public void setLast_name(String last_name) {
			this.last_name = last_name;
		}

		public String getCountry() {
			return country;
		}

		public void setCountry(String country) {
			this.country = country;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public User(int id_profile, String first_name, String last_name, String country,
				String city) {
			
			this.id_profile = id_profile;
			this.first_name = first_name;
			this.last_name = last_name;
			this.country = country;
			this.city = city;
		}



		public void setPassword(String encodedPassword) {
			
		}
		
}
