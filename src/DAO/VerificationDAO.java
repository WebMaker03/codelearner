package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.Verification;

public class VerificationDAO {

   Connection conn;
   PreparedStatement pstmt;
   
   // * 인증 등록 *
   public boolean insertV(Verification ver) {
      conn=DBConnection.connect();
      String sql="insert into verification(u_code,mc_code,v_date,v_text,rating) values (?,?,now(),?,?)";
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setInt(1, ver.getU_code());
         pstmt.setInt(2, ver.getMc_code());
         pstmt.setString(3, ver.getV_text());
         pstmt.setInt(4, ver.getRating());
         pstmt.executeUpdate();
         return false;
      }
      catch(Exception e) {
         e.printStackTrace();
      }
      finally {
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
   
   // * 인증 조회 *

   public  ArrayList<Verification> showV(int u_code, int mc_code) {
      ArrayList<Verification> datas=new ArrayList();
      
      try {
         conn=DBConnection.connect();
         String sql="select * from verification where u_code=? and mc_code=? order by v_date desc";
         pstmt=conn.prepareStatement(sql);
         pstmt.setInt(1, u_code);
         pstmt.setInt(2, mc_code);
         
         ResultSet rs=pstmt.executeQuery();
         while(rs.next()) {
            Verification v = new Verification();
            v.setV_code(rs.getInt("v_code"));
            v.setU_code(rs.getInt("u_code"));
            v.setMc_code(rs.getInt("mc_code"));
            v.setV_date(rs.getString("v_date"));
            v.setV_text(rs.getString("v_text"));
            v.setRating(rs.getInt("rating"));
            datas.add(v);

         }
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      finally {
         try {
            pstmt.close();
            conn.close();
         } catch (SQLException e) {
            
            e.printStackTrace();
         }
      }
      return datas;
      
   }
   

   public boolean deleteV(int v_code) {
      
      try {
         conn=DBConnection.connect();
         String sql="delete from message where c_code=?";
         pstmt=conn.prepareStatement(sql);
         pstmt.setInt(1, v_code);
         pstmt.executeUpdate();
      }
      catch(Exception e) {
         e.printStackTrace();
         return false;
      }
      finally {
         try {
            pstmt.close();
            conn.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
      }
      return true;
      
   }
   
   // 한 챌린지당 날짜 중복 안되게 검사하는 메서드
   

   public boolean CheckVerification(int mc_code ) {

	   try {
		   conn = DBConnection.connect();
		   String sql = "select * from verification where date(v_date) = date(now()) and mc_code=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, mc_code);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			return false; // false = 중복됐다는 뜻
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally {
		try {
			conn.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	   
	   return true;
   }
   
   
   

}