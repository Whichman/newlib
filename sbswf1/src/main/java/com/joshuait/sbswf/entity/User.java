package com.joshuait.sbswf.entity;

import java.util.Date;

public class User {
	private Long id;
	private String userLogin;
	private String userPass;
	private String userNicename;
	private String userEmail;
	private Date userRegistered;
	private String userActivationKey;
	private Integer userStatus;
	private String displayName;
	private Long postAuthor;
	private Long h;

	public Long getH() {
		return h;
	}

	public void setH(Long h) {
		this.h = h;
	}

	public String getUserActivationKey() {
		return userActivationKey;
	}

	public void setUserActivationKey(String userActivationKey) {
		this.userActivationKey = userActivationKey;
	}

	public Long getPostAuthor() {
		return postAuthor;
	}

	public void setPostAuthor(Long postAuthor) {
		this.postAuthor = postAuthor;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserLogin() {
		return userLogin;
	}

	public void setUserLogin(String userLogin) {
		this.userLogin = userLogin;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserNicename() {
		return userNicename;
	}

	public void setUserNicename(String userNicename) {
		this.userNicename = userNicename;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserRegistered() {
		return userRegistered;
	}

	public void setUserRegistered(Date userRegistered) {
		this.userRegistered = userRegistered;
	}

	public String getUserActivation_key() {
		return userActivationKey;
	}

	public void setUserActivation_key(String userActivationKey) {
		this.userActivationKey = userActivationKey;
	}

	public Integer getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", userLogin=" + userLogin + ", userPass=" + userPass + ", userNicename="
				+ userNicename + ", userEmail=" + userEmail + ", userRegistered=" + userRegistered
				+ ", userActivationKey=" + userActivationKey + ", userStatus=" + userStatus + ", displayName="
				+ displayName + ", postAuthor=" + postAuthor + "]";
	}

}
