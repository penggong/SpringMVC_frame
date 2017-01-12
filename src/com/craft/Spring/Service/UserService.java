package com.craft.Spring.Service;

import com.craft.Spring.entity.User;

public interface UserService extends BaseService<User>{

	//用户增加
	public void insertUser(User user) throws Exception;
	//
	public User login(User user) throws Exception;
}
