package DTO;

public class Users {
   private int u_code;
   private String userid;
   private String userpw;
   private String u_name;
   private int age;
   private String email;
   private int point;
   
   public Users() {;}
   
   public Users(String userid, String userpw) {
      this.userid =userid;
      this.userpw=userpw;
   }
   public Users(int u_code, String id, String pw, String u_name, String email, int age, int point) {
      this.u_code = u_code;
      this.userid = id;
      this.userpw = pw;
      this.u_name = u_name;
      this.email = email;
      this.age = age;
      this.point = point;
   }
   public Users(int u_code, String id, String pw, String u_name, String email, int age) {
      this.u_code = u_code;
      this.userid = id;
      this.userpw = pw;
      this.u_name = u_name;
      this.email = email;
      this.age = age;
   }
   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

	//getter, setter
	public int getU_code() {
		return u_code;
	}
	public void setU_code(int u_code) {
		this.u_code = u_code;
	}
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
}

