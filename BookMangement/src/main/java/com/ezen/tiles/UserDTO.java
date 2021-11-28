package com.ezen.tiles;

public class UserDTO {

//	userno: 회원번호
//	username: 회원명
//	usertel: 전화번호
//	usermail: 이메일
//	rentable: 대출가능권수

	int userno;
	String username, usertel, usermail;
	String rentable;

	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDTO(int userno, String username, String usertel, String usermail, String rentable) {
		super();
		this.userno = userno;
		this.username = username;
		this.usertel = usertel;
		this.usermail = usermail;
		this.rentable = rentable;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsertel() {
		return usertel;
	}

	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getRentable() {
		return rentable;
	}

	public void setRentable(String rentable) {
		this.rentable = rentable;
	}

}