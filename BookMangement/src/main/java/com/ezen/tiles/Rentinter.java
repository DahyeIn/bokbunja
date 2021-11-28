package com.ezen.tiles;

import java.util.ArrayList;

public interface Rentinter {

	public void insertrent(int booknumber, String booktitle, String bookauthor, String bookpublisher, String username,
			String bookdate);

	public ArrayList<RentDTO> dblist();

	public void returnbook(int booknumber, String username);
}
