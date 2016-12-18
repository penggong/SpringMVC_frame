package com.craft.Spring.Dao;

/**
 * 没有与springmvc整合之前，使用mybatis操作
 */
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.craft.Spring.entity.User;
import com.craft.Spring.util.MyBatisUtil;

public class UserDao_mybatis {

	/**
	 * add user
	 */
	public void add_User(User user) throws Exception{
		SqlSession sqlSession = MyBatisUtil.getSqlSession();
		try{
		  //sqlSession.insert("insert_User",user);
			sqlSession.update("update_User", user);
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
		  sqlSession.commit();
		}
		MyBatisUtil.closeSqlSession();
	}
	/*
	 * find by ID
	 */
	public User findById(Integer u_id) throws Exception{
		SqlSession sqlSession = MyBatisUtil.getSqlSession();
		User user= sqlSession.selectOne("selectById_User", u_id);
		return user;
	}
	/*
	 * findAll
	 */
	public List<User> findAll() throws Exception{
		SqlSession sqlSession = MyBatisUtil.getSqlSession();
		return sqlSession.selectList("selectAll_User");
	}
	/*
	 * 无条件查询所有
	 */
	public List<User> findALLWithFy(int start,int size) throws Exception{
		SqlSession sqlSession = MyBatisUtil.getSqlSession();
		Map<String,Integer> map = new LinkedHashMap<String,Integer>();
		map.put("pstart", start);
		map.put("psize",size);
		return sqlSession.selectList("selectFindALLWithFy", map);
		
	}
	public List<User> findALLByNameWithFy(String name,int start,int size) throws Exception{
		SqlSession sqlSession = MyBatisUtil.getSqlSession();
		Map<String,Object> map = new LinkedHashMap<String,Object>();
		map.put("pname", "%"+name+"%");
		map.put("pstart", start);
		map.put("psize",size);
		return sqlSession.selectList("selectFindALLByNameWithFy", map);
		
	}
	/*
	 * 修改测试
	 */
	/*public static void main(String [] args) throws Exception{
		UserDao dao = new UserDao();
		User user = new User();
		user.setU_id(4);
		user.setU_name("peng4修改");
		user.setU_phone(14444);
		user.setU_sal("1444-");
		dao.add_User(user);
		
	}*/
	
	/*
	 * select 测试  根据ID
	 */
	/*public static void main(String [] args) throws Exception{
		UserDao dao = new UserDao();
		User user = dao.findById(2);
		System.out.println(user.getU_name());
	}*/
	/*
	 * select all
	 */
	/*public static void main(String [] args) throws Exception{
		UserDao dao = new UserDao();
		List<User> userList = dao.findAll();
		for(User user :userList){
			System.out.println(user.getU_id()+":"+user.getU_name());
		}
	}*/
	/*
	 * 无条件分页
	 */
	/*public static void main(String [] args) throws Exception{
		UserDao dao = new UserDao();
		for(User user : dao.findALLWithFy(0, 2)){
			System.out.println(user.getU_name());
		}
		
	}*/
	public static void main(String [] args) throws Exception{
		UserDao_mybatis dao = new UserDao_mybatis();
		System.out.println("1.page");
		for(User user : dao.findALLByNameWithFy("peng", 0, 2)){
			System.out.println(user.getU_name());
		}
		System.out.println("2.page");
		for(User user : dao.findALLByNameWithFy("peng", 2, 2)){
			System.out.println(user.getU_name());
		}
	}
}
