package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.Challenges;
import DTO.MyC;
import DTO.Verification;;

public class ChallengesDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;

	public Challenges getonechal(int c_code) {
		Challenges ch = new Challenges();
		try {
			conn = DBConnection.connect();
			String sql = "select * from challenges where c_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				ch.setC_code(rs.getInt("c_code"));
				ch.setC_name(rs.getString("c_name"));
				ch.setTheme(rs.getString("theme"));
				ch.setFee(rs.getInt("fee"));
				ch.setPeriod(rs.getInt("period"));
				ch.setInfo(rs.getString("info"));
				ch.setImg(rs.getString("img"));

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
		return ch;

	}

	public boolean start_ch(Challenges ch, int u_code) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into myC(c_code,u_code,state,startD,finishD,achievementPercentage,img) values(?,?,1,now(),DATE_ADD(now(),INTERVAL ? DAY),0,null);";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ch.getC_code());
			pstmt.setInt(2, u_code);
			pstmt.setInt(3, ch.getPeriod());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
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
	
	public boolean updateUserPoint(int chFee, int u_code) {
		try {
			conn = DBConnection.connect();
			String sql = "update users set point= point-?"
					+ " where u_code=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, chFee);
			pstmt.setInt(2, u_code);

			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
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

	public ArrayList<Challenges> theme_chal(String theme) {

		ArrayList<Challenges> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from challenges where theme=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, theme);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				Challenges ch = new Challenges();
				ch.setC_code(rs.getInt("c_code"));
				ch.setC_name(rs.getString("c_name"));
				ch.setTheme(rs.getString("theme"));
				ch.setFee(rs.getInt("fee"));
				ch.setPeriod(rs.getInt("period"));
				ch.setInfo(rs.getString("info"));
				ch.setImg(rs.getString("img"));
				datas.add(ch);

			}
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
		return datas;
	}

	public boolean byebyechallenge() {
		conn = DBConnection.connect();
		PreparedStatement pstmt2 = null;
		String sql = "select * from myC where state=? and finishD <= NOW()";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setBoolean(1, true);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<MyC> myClist = new ArrayList<>();
			while (rs.next()) {
				MyC myc = new MyC();
				myc.setMc_code(rs.getInt("mc_code"));

				myClist.add(myc);
			}
			boolean success = true;
			String sql2 = "update myC set state=false where mc_code=?";
			pstmt2 = conn.prepareStatement(sql2);

			for (int i = 0; i < myClist.size(); i++) {
				pstmt2.setInt(1, myClist.get(i).getMc_code());
				success = pstmt2.execute();

			}
			return success;
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

	// 현재진행중 리스트 반환값 datas
	public ArrayList<MyC> prochal(int u_code) {
		ArrayList<MyC> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from myC where state=? and u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setBoolean(1, true);
			pstmt.setInt(2, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MyC myc = new MyC();
				myc.setMc_code(rs.getInt("mc_code"));
				myc.setC_code(rs.getInt("c_code"));
				myc.setU_code(rs.getInt("u_code"));
				myc.setState(rs.getBoolean("state"));
				myc.setStartD(rs.getString("startD"));
				myc.setFinishD(rs.getString("finishD"));
				myc.setAchievementPercentage(rs.getInt("achievementPercentage"));
				datas.add(myc);

			}
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
		return datas;

	}

	// 종료된챌린지 리스트 반환값 datas
	public ArrayList<MyC> finchal(int u_code) {
		ArrayList<MyC> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from myC where state=0 and u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, u_code);
			

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MyC myc = new MyC();
				myc.setMc_code(rs.getInt("mc_code"));
				myc.setC_code(rs.getInt("c_code"));
				myc.setU_code(rs.getInt("u_code"));
				myc.setState(rs.getBoolean("state"));
				myc.setStartD(rs.getString("startD"));
				myc.setFinishD(rs.getString("finishD"));
				myc.setAchievementPercentage(rs.getInt("achievementPercentage"));
				datas.add(myc);

			}
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
		return datas;

	}

	// 진행중 챌린지 갯수 int cnt 반환
	public int cntprochal(int u_code) {
		int cnt = 0;
		try {
			conn = DBConnection.connect();
			String sql = "select count(*)  from myc where u_code = ? and state=true";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt = rs.getInt(1);

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

		return cnt;
	}

	// 종료된 챌린지 갯수 int cnt 반환
	public int cntfinchal(int u_code) {
		int cnt = 0;
		try {
			conn = DBConnection.connect();
			String sql = "select count(*)  from myc where u_code = ? and state=false";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt = rs.getInt(1);

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

		return cnt;
	}

	public ArrayList<Challenges> getChalName(ArrayList<MyC> myC) {

		ArrayList<Challenges> Clist = new ArrayList<Challenges>();
		try {
			conn = DBConnection.connect();
			for (int i = 0; i < myC.size(); i++) {
				String sql = "select * from challenges where c_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, myC.get(i).getC_code());
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					Challenges c = new Challenges();
					c.setC_code(rs.getInt("c_code"));
					c.setC_name(rs.getString("c_name"));
					c.setFee(rs.getInt("fee"));
					c.setInfo(rs.getString("info"));
					c.setTheme(rs.getString("theme"));
					Clist.add(c);
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

		return Clist;
	}

	// myC 인증률 업데이트 하기!

	public boolean achievementUpdate(MyC myC) {
		try {
			int cnt = 0;
			int period = 0;
			int achievement = 0;
			conn = DBConnection.connect();
			String sql = "select count(*),period from verfication, myC, challenges where verfication.mc_code = myC.mc_code and myC.c_code=challenges.c_code and mc_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, myC.getMc_code());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				cnt = rs.getInt(1);
				period = rs.getInt(2);
				achievement = Math.round(cnt / period * 100);
			}
			sql = "update myC set achievementPercentage=? where mc_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);
			pstmt.setInt(2, achievement);
			return true;
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

	// mc_code로 mychallenge 받아오기
	public MyC callMyC(int u_code,int c_code) {
		MyC mc = new MyC();

		try {
			conn = DBConnection.connect();
			String sql = "select * from MyC where u_code=? and c_code=? and state=1";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			pstmt.setInt(2, c_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				mc.setMc_code(rs.getInt("mc_code"));
				mc.setC_code(rs.getInt("c_code"));
				mc.setU_code(rs.getInt("u_code"));
				mc.setState(rs.getBoolean("state"));
				mc.setStartD(rs.getString("startD"));
				mc.setFinishD(rs.getString("finishD"));
				mc.setAchievementPercentage(rs.getInt("achievementPercentage"));
				mc.setImg(rs.getString("img"));
			}
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
		return mc;

	}

	
	public MyC callMyC(int mc_code) {
		MyC mc = new MyC();
		try {
			conn = DBConnection.connect();
			String sql = "select * from MyC where mc_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mc_code);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				mc.setMc_code(rs.getInt("mc_code"));
				mc.setC_code(rs.getInt("c_code"));
				mc.setU_code(rs.getInt("u_code"));
				mc.setState(rs.getBoolean("state"));
				mc.setStartD(rs.getString("startD"));
				mc.setFinishD(rs.getString("finishD"));
				mc.setAchievementPercentage(rs.getInt("achievementPercentage"));
				mc.setImg(rs.getString("img"));

			}
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
		return mc;

	}

	// u_code 로 myC 받아오기
	public boolean checkChallengeRepeat(int u_code, int c_code) {
		boolean check = false;
		try {
			conn = DBConnection.connect();
			String sql = "select c_code from myC where u_code=?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, u_code);

			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				if (c_code == rs.getInt("c_code")) {
					check=true;
				}
			}
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
		return check;

	}
	
	public ArrayList<Integer> endPercentage( ArrayList<MyC> myc){

		   ArrayList<Integer> endPercent =new ArrayList<Integer>();
		   int period = 0;
		   int vercount =0;
		   
		   PreparedStatement pstmt2= null;
		   System.out.println("달성율 계산");
		   try {
			   conn = DBConnection.connect();
			   String sql = "select period from challenges where c_code=?";
			   pstmt = conn.prepareStatement(sql);
			   for(int i=0;i< myc.size();i++) {
				   
				   // 기간 가져오기 
				   pstmt.setInt(1, myc.get(i).getC_code());
				   ResultSet rs = pstmt.executeQuery();
				   while(rs.next()) {
					   period = rs.getInt(1);
				   }
				   
				   
				   //인증 개수 가져오기
				   String sql2= "select count(*) from verification where mc_code=?";
				   pstmt2 = conn.prepareStatement(sql2);
				   pstmt2.setInt(1, myc.get(i).getMc_code());
				   ResultSet rs1 = pstmt2.executeQuery();
				   while(rs1.next()) {
					  vercount = rs1.getInt(1);
				   }
				   
				   int endp = (int)((vercount/(double)period)*100);
				   endPercent.add(endp);
				   
			   }
			  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				pstmt2.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		   
		   return endPercent;
	   }
		
	
}
