package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.PreparableStatement;

import DTO.Challenges;
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
   
   public boolean payback(int c_code, int u_code){
	   // 챌린지에서 fee랑 기간 받아오기
	   // 그걸 나누기해서 업데이트
	   // 유저포인트에 업데이트
	   System.out.println("포인트 업데이트");
	   try {
		   conn = DBConnection.connect();
		   String sql = "select * from challenges where c_code=?";
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setInt(1, c_code);
		   ResultSet rs = pstmt.executeQuery();
		   
		   Challenges c = new Challenges();
		   while(rs.next()) {
			    c.setC_code(rs.getInt("c_code"));
				c.setFee(rs.getInt("fee"));
				c.setPeriod(rs.getInt("period"));
		   }
		   
		   int updateP = (int)(c.getFee() / c.getPeriod());
		   String sql2 = "update users set point = point+? where u_code=?";
		   PreparedStatement pstmt2=conn.prepareStatement(sql2);
		   pstmt2.setInt(1, updateP);
		   pstmt2.setInt(2, u_code);
		   pstmt2.execute();
		   
		   
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return true;
   }
   
   public ArrayList<Integer> CalcStar(int mc_code){
	   
	   ArrayList<Verification> vlist = new ArrayList<>();
	   ArrayList<Integer> vstar =null;
	   
	   System.out.println("별점 % 계산!");
	   try {
		   conn = DBConnection.connect();
		   String sql = "select * from verification where mc_code=?";
		   pstmt = conn.prepareStatement(sql);
		   pstmt.setInt(1, mc_code);
		   ResultSet rs = pstmt.executeQuery();
		   int count =0;
		   while(rs.next()) {
			    Verification v = new Verification();
			    v.setMc_code(rs.getInt("mc_code"));
			    v.setRating(rs.getInt("rating"));
			    v.setU_code(rs.getInt("u_code"));
			    count=count+1;
			    vlist.add(v);
		   }
		   int star1 =0;
		   int star2 =0;
		   int star3 =0;
		   int star4 =0;
		   int star5 =0;
		   
		   for(int i =0; i<vlist.size(); i++) {
			   if(vlist.get(i).getRating()==1) {
				   star1+=1;
			   }else if(vlist.get(i).getRating()==2) {
				   star2+=1;
			   }else if(vlist.get(i).getRating()==3) {
				   star3+=1;
			   }else if(vlist.get(i).getRating()==4) {
				   star4+=1;
			   }else if(vlist.get(i).getRating()==5) {
				   star5+=1;
			   }
		   } //각 별점 별 인증 개수 파악 완료
		  if(count!=0) {
		   int rate1 = (int)((star1/(double)count)*100);
		   int rate2 = (int)((star2/(double)count)*100);
		   int rate3 = (int)((star3/(double)count)*100);
		   int rate4 =  (int)((star4/(double)count)*100);
		   int rate5 =  (int)((star5/(double)count)*100);
		  
		   vstar = new ArrayList();
		   vstar.add(rate1);
		   vstar.add(rate2);
		   vstar.add(rate3);
		   vstar.add(rate4);
		   vstar.add(rate5);
		  }
		  else {
			  System.out.println("인증 정보가 없습니다.");
		  }
		  
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return vstar;
   }
   

}