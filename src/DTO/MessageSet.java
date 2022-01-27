package DTO;

import java.util.ArrayList;

public class MessageSet {
	// post + comments
	private Post message;
	private ArrayList<Comments> clist=new ArrayList();
	
	public Post getMessage() {
		return message;
	}
	public void setMessage(Post message) {
		this.message = message;
	}
	public ArrayList<Comments> getClist() {
		return clist;
	}
	public void setClist(ArrayList<Comments> clist) {
		this.clist = clist;
	}
	
	
	

}
