package com.shopsys.personnel.model;

import java.io.Serializable;
/**
 * 角色表
 */
public class Role implements Serializable{
	/**
	 * 管理员类型
	 */
	private static final long serialVersionUID = 7124806791366190520L;
	public static final String CODE_ADMIN="1";//管理员
	public static final String CODE_CUSTOMER="2";//用户
	private Integer id;//主键
	private String name;//角色名称
	private String code;//角色编号
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
}
