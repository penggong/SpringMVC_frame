package com.craft.Spring.Service.Impl;


import java.util.List;

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
    	userDao.insert(user);
    }
	
	@Override
	public User selectByPk(int Pk) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public User select(User entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int deleteByPk(User entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int updateByPk(User entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<User> selectUseDyc(User entity) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public User login(User user) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(User entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}

