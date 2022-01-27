package DTO;

public class Post {
	private int p_code;
	private int u_code;
	private int c_code;
	private String p_title;
	private String p_text;
	
	
	public Post() {;}
	
	public Post(int p_code, int u_code, int c_code, String p_title, String p_text) {
		this.p_code = p_code;
		this.u_code = u_code;
		this.c_code = c_code;
		this.p_title = p_title;
		this.p_text = p_text;
	}


	//getter, setter
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public int getU_code() {
		return u_code;
	}
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public String getP_text() {
		return p_text;
	}
	public void setP_text(String p_text) {
		this.p_text = p_text;
	}

	public String getP_title() {
		return p_title;
	}

	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	
	
}
