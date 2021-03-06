package com.shopsys.personnel.model;

/**
 * 用户表
 */
public class User implements java.io.Serializable {
	// Fields
	private static final long serialVersionUID = 35155233893839253L;
	//状态
	public static final String STATUS_NORMAL="正常";
	public static final String STATUS_DISABLE="禁用";
	//来源
	public static final String SOURCE_MANUAL="手动录入";
	public static final String SOURCE_PLATFORM="平台注册";
	public static final String SOURCE_APP="客户端注册";
	
	private Integer id;
	private String roleCode="3";//角色编号
	private String roleName;//角色名称
	private String userName;//登录账号
	private String password="123456";//密码
	private String realName;//真实姓名
	private String nickName;//昵称，显示名称
	private String email;//邮箱
	private String tel;//手机号码
	private String source;//用户来源
	private String lastLoginTime;//最后一次登录时间
	private String registerTime;//注册时间
	private String status;//账号状态
	private String introduction;//简介
	private Boolean sex;//性别
	private Integer age;//年龄
	private String birthday;//出生年月
	private String portrait;//头像,图片url
	private String address;//地址,居住地
	private String identification;//身份证号
	
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getPortrait() {
		return portrait;
	}
	public void setPortrait(String portrait) {
		this.portrait = portrait;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIdentification() {
		return identification;
	}
	public void setIdentification(String identification) {
		this.identification = identification;
	}
	
}