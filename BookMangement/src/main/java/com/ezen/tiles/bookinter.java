package com.ezen.tiles;

import java.util.ArrayList;

public interface bookinter {

	public void insertdata(String booktitle, String bookauthor, String bookcontent, String bookpublisher, int bookstock,
			String bookcate);

	public ArrayList<bookDTO> out();

	public ArrayList<bookDTO> outnumber();

	public ArrayList<bookDTO> outcate();

	public void delete(int booknumber);

	public ArrayList<bookDTO> bookcontent(int booknumber);

	public ArrayList<bookDTO> booksearchauthor(String book);

	public ArrayList<bookDTO> booksearchtitle(String book);

	public ArrayList<bookDTO> deabanlist();

	public ArrayList<bookDTO> list(int booknumber);

	public void insertrent(int booknumber);

	public void returnbook(int booknumber);
}
