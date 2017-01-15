package com.craft.Spring.Dao;

import com.craft.Spring.entity.User;

/*
 * user 表数据层
 */
public interface UserDao_mvc extends BaseMapper<User>{

	//public void insertUser(User user) throws Exception;
	public User login_User(User user) throws Exception;
}
