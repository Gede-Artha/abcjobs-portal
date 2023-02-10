package com.abc.search;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Transactional
@Service
public class UserService {
	
	 @Autowired UserRepo repo;
	
	public List<User> search(String keyword) {
	    return repo.search(keyword);
	}



//	public User findUserById(int id (logProfile.getId_profile()); {
	//		return repo.findUserById(id);
	//	}
	
}
