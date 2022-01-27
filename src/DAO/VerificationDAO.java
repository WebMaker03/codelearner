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
   public  ArrayList<Verification> showV() {
      
      ArrayList<Verification> datas=new ArrayList();
      
      try {
         conn=DBConnection.connect();
         String sql=""; // ۾  ʿ 
         pstmt=conn.prepareStatement(sql);
         
         // ۾  ʿ 


         ResultSet rs=pstmt.executeQuery();
         while(rs.next()) {
            // ۾  ʿ 

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
   
   // *          ϱ *
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
   
   
   

}