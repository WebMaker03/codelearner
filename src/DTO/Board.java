package DTO;

public class Board {
	private int b_code;
	private int c_code;
	
	
	
	public Board() {;}
	
	
	public Board(int b_code, int c_code) {
		this.b_code = b_code;
		this.c_code = c_code;
	}


	//getter, setter
	public int getB_code() {
		return b_code;
	}
	public void setB_code(int b_code) {
		this.b_code = b_code;
	}
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
}
