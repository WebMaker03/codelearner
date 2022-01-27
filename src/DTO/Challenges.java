package DTO;

public class Challenges {
	private int c_code;
	private String c_name;
	private String theme;
	private int fee;
	private int period;
	private String info;
	private String img;
	
	
	
	public Challenges() {;}
	
	
	public Challenges(int c_code, String c_name, String theme, int fee, int period, String info, String img) {
		this.c_code = c_code;
		this.c_name = c_name;
		this.theme = theme;
		this.fee = fee;
		this.period = period;
		this.info= info;
		this.img = img;
	}


	public int getC_code() {
		return c_code;
	}


	public void setC_code(int c_code) {
		this.c_code = c_code;
	}


	public String getC_name() {
		return c_name;
	}


	public void setC_name(String c_name) {
		this.c_name = c_name;
	}


	public String getTheme() {
		return theme;
	}


	public void setTheme(String theme) {
		this.theme = theme;
	}


	public int getFee() {
		return fee;
	}


	public void setFee(int fee) {
		this.fee = fee;
	}


	public int getPeriod() {
		return period;
	}


	public void setPeriod(int period) {
		this.period = period;
	}


	public String getInfo() {
		return info;
	}


	public void setInfo(String info) {
		this.info = info;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}

	

	
	
}
