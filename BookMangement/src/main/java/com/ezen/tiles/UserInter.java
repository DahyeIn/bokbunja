package com.ezen.tiles;

import java.util.ArrayList;

public interface UserInter {

	public ArrayList<UserDTO> listout();

	public void maninsertdata( String username, String usertel, String usermail);

	public void manDelete(int userno);

	public void manModifydata(int userno, String username, String usertel, String usermail);

	public ArrayList<UserDTO> manSearch1(String svalue);

	public ArrayList<UserDTO> manSearch2(String svalue);
	
	public void insertrent(String username);
	
	public void returnbook(String username);
	
	public ArrayList<UserDTO> list(String username);
	
	
	
	
	
	public ArrayList<UserDTO> search(String username);
	

//	public void insertrent(String username);
//
//	public void returnbook(String username);
}
