package com.craft.Spring.Test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.craft.Spring.Dao.UserDao_mvc;
import com.craft.Spring.entity.User;



/**
 * 单元测试
 * @author Administrator
 *
 */
public class ConnectionTest {

	@Test
	public void test1() throws Exception{
		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml"});
		UserDao_mvc usermvc = (UserDao_mvc) ac.getBean("userDao_mvc");
		User user =new User();
		user.setU_id(17);
		user.setU_name("test17");
		user.setU_phone(22);
		user.setU_sal("男");
		System.out.println(user.getU_name());
		//usermvc.insertUser(user);
	
	}
}
