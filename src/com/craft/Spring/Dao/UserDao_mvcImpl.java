package com.craft.Spring.Dao;


import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.craft.Spring.entity.User;

/**
 * springmvc 与mybits 整合学习测试
 * @author Administrator
 *     这个类已经不在使用，被sessionTemplete取代，dao方法直接使用模板的方法
 */
@Repository
public class UserDao_mvcImpl{
	@Resource
	private SqlSessionFactory sqlSessionFactory;
	/*public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}*/

	public void insert(User user){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		sqlSession.insert("insert_User", user);
		sqlSession.close();
	}
}
