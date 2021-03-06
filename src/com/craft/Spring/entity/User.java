package com.craft.Spring.entity;

import java.io.Serializable;

public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer u_id;    //用户编号
	private String u_name;   //用户登录名
	private Integer u_phone; //用户手机号
	private String u_sal;    //用户性别
	private String u_pwd;    //密码
	
	public String getU_sal() {
		return u_sal;
	}
	public void setU_sal(String u_sal) {
		this.u_sal = u_sal;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public Integer getU_phone() {
		return u_phone;
	}
	public void setU_phone(Integer u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
}
