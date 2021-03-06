package com.craft.Spring.Action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.craft.Spring.Service.UserService;
import com.craft.Spring.entity.User;

@Controller
@RequestMapping("/User")
public class UserAction{
	@Resource
	private UserService userService;
	/*@Resource(name="userServiceId")
	public void setUserService(UserService userService) {
		this.userService = userService;
	}*/
	
	@RequestMapping(value="insert.action",method=RequestMethod.POST)
	public String insert(Model model,User user) throws Exception {
		System.out.println(user.getU_id());
		userService.insert(user);
		model.addAttribute("success", "Second成功");
		model.addAttribute("user", user);
		return "spring";
	}
	
	@RequestMapping(value="insertAjax.action",method=RequestMethod.POST)
	@ResponseBody
	public Object insertAjax(User user) throws Exception {
		System.out.println(user.getU_id());
		//userService.insertUser(user);
		user.setU_name("这是测试的名字");
		return user;
	}
	
	@RequestMapping(value="login.action",method=RequestMethod.POST)
	@ResponseBody
	public String login(String u_name,String u_pwd,User user) throws Exception {
		System.out.println("页面获取用户信息："+user.getU_id());
		System.out.println("页面获取用户信息手动："+u_name);
		user.setU_name(u_name);
		user.setU_pwd(u_pwd);
		User userInfo = userService.login(user);
		System.out.println("页面获取用户信息2："+user.getU_id());
		if(userInfo.getU_id()>0){
		    System.out.println("success login");
		}else{
			System.out.println("fail login");
		}
		return "spring";
	}
}
