package com.da.st5.model;

public class UserModel {
	private int id;
	private String userName;
	private String password;
	private String fullName;
	private int status;
	private int roleid;
	
	public UserModel() {

	}

	public UserModel(int id,String userName,String password,
			String fullName,int status,int roleid) {
		this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.status = status;
        this.roleid = roleid;
        this.id =id;
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
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

	
}
