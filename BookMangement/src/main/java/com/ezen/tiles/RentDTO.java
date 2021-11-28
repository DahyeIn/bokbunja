package com.ezen.tiles;

public class RentDTO {
	int booknumber;
	String booktitle, bookauthor, bookpublisher, username, bookcate, rentdate, returndate;

	public RentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RentDTO(int booknumber, String booktitle, String bookauthor, String bookpublisher, String username,
			String bookcate, String rentdate, String returndate) {
		super();
		this.booknumber = booknumber;
		this.booktitle = booktitle;
		this.bookauthor = bookauthor;
		this.bookpublisher = bookpublisher;
		this.username = username;
		this.bookcate = bookcate;
		this.rentdate = rentdate;
		this.returndate = returndate;
	}

	public int getBooknumber() {
		return booknumber;
	}

	public void setBooknumber(int booknumber) {
		this.booknumber = booknumber;
	}

	public String getBooktitle() {
		return booktitle;
	}

	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}

	public String getBookauthor() {
		return bookauthor;
	}

	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}

	public String getBookpublisher() {
		return bookpublisher;
	}

	public void setBookpublisher(String bookpublisher) {
		this.bookpublisher = bookpublisher;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBookcate() {
		return bookcate;
	}

	public void setBookcate(String bookcate) {
		this.bookcate = bookcate;
	}

	public String getRentdate() {
		return rentdate;
	}

	public void setRentdate(String rentdate) {
		this.rentdate = rentdate;
	}

	public String getReturndate() {
		return returndate;
	}

	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}

}
