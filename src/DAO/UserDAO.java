package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.Users;

public class UserDAO {
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;


   // 회원가입
   public boolean SignUp(Users user) {
      conn = DBConnection.connect();
      String sql = "insert into users(userid,userpw,u_name,email,age) values (?,?,?,?,?)";
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, user.getUserid());
         pstmt.setString(2, user.getUserpw());
         pstmt.setString(3, user.getU_name());
         pstmt.setString(4, user.getEmail());
         pstmt.setInt(5, user.getAge());
         pstmt.executeUpdate();
         return true;
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      } finally {
         try {
            pstmt.close();
            conn.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      return false;
   }

   // 로그인
   public boolean login(String userid, String userpw) {

      String sql = "select * from users where userid=?";
      try {
         conn = DBConnection.connect();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userid);
         rs = pstmt.executeQuery();
         if (rs.next()) {
            if (rs.getString("userpw").equals(userpw)) {
               System.out.println("로그인 성공입니다. ");
               return true;
            } else {
               System.out.println("비밀번호가 틀렸습니다. ");
            }
         } else {
            System.out.println("유저 정보가 없습니다.");
         }

      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
      return false;

   }

   // 회원목록 출력
   public Users showUser(String userid) {
      Users user = new Users();
      conn = DBConnection.connect();

      try {
         String sql = "select * from users where userid=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userid);
         ResultSet rs = pstmt.executeQuery();
         while (rs.next()) {
            user.setU_code(rs.getInt("u_code"));
            user.setUserid(rs.getString("userid"));
            user.setUserpw(rs.getString("userpw"));
            user.setU_name(rs.getString("u_name"));
            user.setAge(rs.getInt("age"));
            user.setEmail(rs.getString("email"));
            user.setPoint(rs.getInt("point"));
         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
      return user;
   }
   // 아이디 체크
   public boolean checkId(String userid) {
      conn = DBConnection.connect();
      String sql = "select * from users where userid=?";

      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userid);
         ResultSet rs = pstmt.executeQuery();
         if (rs.next()) {
            if (rs.getInt(1) != 0) {

               return false;

            }
         }

      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

      return true;
   }
   // 회원정보 수정
   public boolean updateUser(Users user) {		// name, email, age, id
		conn = DBConnection.connect();
		String sql = "update users set u_name=?,"
				+ " email=?,"
				+ " age=?"
				+ " where u_code=?;";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getU_name());
			pstmt.setString(2, user.getEmail());
			pstmt.setInt(3, user.getAge());
			pstmt.setInt(4, user.getU_code());
			pstmt.executeUpdate();
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return true;
	}
   	// 비밀번호 수정
	public boolean updateUserPw(Users user) {	// id, pw
		conn = DBConnection.connect();
		String sql = "update users set userpw=?"
				+ " where u_code=?;";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserpw());
			pstmt.setInt(2, user.getU_code());
			pstmt.executeUpdate();
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return true;
	}

}