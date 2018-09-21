package com.kh.dok.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Member implements java.io.Serializable{
	private String mid;
	private String email;
	private String user_pwd;
	private String user_name;
	private Date birthday;
	private String gender;
	private String phone;
	private String user_class;
	private String status;
	private String login_class;
	private String blacklist_status;
	private Date join_date;
	private Date withdraw_date;
	private String nickname;
	
	public Member(){}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUser_class() {
		return user_class;
	}

	public void setUser_class(String user_class) {
		this.user_class = user_class;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLogin_class() {
		return login_class;
	}

	public void setLogin_class(String login_class) {
		this.login_class = login_class;
	}

	public String getBlacklist_status() {
		return blacklist_status;
	}

	public void setBlacklist_status(String blacklist_status) {
		this.blacklist_status = blacklist_status;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public Date getWithdraw_date() {
		return withdraw_date;
	}

	public void setWithdraw_date(Date withdraw_date) {
		this.withdraw_date = withdraw_date;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Member(String mid, String email, String user_pwd, String user_name, Date birthday, String gender,
			String phone, String user_class, String status, String login_class, String blacklist_status, Date join_date,
			Date withdraw_date, String nickname) {
		super();
		this.mid = mid;
		this.email = email;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.birthday = birthday;
		this.gender = gender;
		this.phone = phone;
		this.user_class = user_class;
		this.status = status;
		this.login_class = login_class;
		this.blacklist_status = blacklist_status;
		this.join_date = join_date;
		this.withdraw_date = withdraw_date;
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", email=" + email + ", user_pwd=" + user_pwd + ", user_name=" + user_name
				+ ", birthday=" + birthday + ", gender=" + gender + ", phone=" + phone + ", user_class=" + user_class
				+ ", status=" + status + ", login_class=" + login_class + ", blacklist_status=" + blacklist_status
				+ ", join_date=" + join_date + ", withdraw_date=" + withdraw_date + ", nickname=" + nickname + "]";
	}

	
}
