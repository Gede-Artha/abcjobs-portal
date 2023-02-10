package com.abc.search;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

//import com.abc.email.UserEntity;

public interface UserRepo extends JpaRepository<User, Integer>{
	
	 @Query(value = "SELECT c FROM User c WHERE c.first_name LIKE '%' || :keyword || '%'"
			 	+ " OR c.last_name LIKE '%' || :keyword || '%'"
	            + " OR c.country LIKE '%' || :keyword || '%'"
	            + " OR c.city LIKE '%' || :keyword || '%'")
	    public List<User> search(@Param("keyword") String keyword);
	 

//	 	public UserEntity findByEmailId (String email);
//		
//		public User findByEmail (String email);
//		
//		public void updateResetTokenPassword(UserEntity userEntity);
//		
//		public UserEntity getByResetTokenPassword(String token);
//		
//		public void resetPassword(UserEntity userEntity);

}
