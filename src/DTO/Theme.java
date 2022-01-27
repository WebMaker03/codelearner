package DTO;

public class Theme {
	
	private int t_code;
	private String t_name;
	
	public Theme() {;}
	
	public Theme(int t_code, String t_name) {
		super();
		this.t_code = t_code;
		this.t_name = t_name;
	}


	public int getT_code() {
		return t_code;
	}

	public void setT_code(int t_code) {
		this.t_code = t_code;
	}

	public String getT_name() {
		return t_name;
	}

	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	
	

}
