package com.craft.Spring.Dao;

import com.craft.Spring.entity.User;

/*
 * user 表数据层
 */
public interface UserDao_mvc2 extends BaseMapper<Object>{

	public void insertUser(User user) throws Exception;
	
}
