package com.craft.Spring.Service.Impl;


import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.craft.Spring.Dao.UserDao_mvc;
import com.craft.Spring.Service.UserService;
import com.craft.Spring.entity.User;

/**
 * service user 测试业务实现层
 * @author Administrator
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao_mvc userDao;
	/*public void setUserDao(UserDao_mvc userDao) {
		this.userDao = userDao;
	}*/
	/**
	 *    添加用户
	 */
	     public void insertUser(User user) throws Exception{
    	userDao.insertUser(user);
    }
}

