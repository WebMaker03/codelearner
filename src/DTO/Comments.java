package DTO;

public class Comments {
	private int cm_code;
	private int u_code;
	private int p_code;
	private String cm_text;

	
	public Comments() {;}
	
	public Comments(int cm_code, int u_code, int p_code, String cm_text) {
		this.cm_code = cm_code;
		this.u_code = u_code;
		this.p_code = p_code;
		this.cm_text = cm_text;
		
	}

	//getter, setter
	public int getCm_code() {
		return cm_code;
	}
	public void setCm_code(int cm_code) {
		this.cm_code = cm_code;
	}
	public int getU_code() {
		return u_code;
	}
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	public String getCm_text() {
		return cm_text;
	}
	public void setCm_text(String cm_text) {
		this.cm_text = cm_text;
	}
	
	
	
}
