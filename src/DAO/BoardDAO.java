package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DTO.*;

public class BoardDAO {

	Connection conn;
	PreparedStatement pstmt;

	public ArrayList<MessageSet> getAll(int cnt) {

		ArrayList<MessageSet> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from post limit 0,?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, cnt);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				MessageSet ms = new MessageSet();
				Post p = new Post();
				p.setP_code(rs.getInt("p_code"));
				p.setU_code(rs.getInt("u_code"));
				p.setC_code(rs.getInt("c_code"));
				p.setP_title(rs.getString("p_title"));
				p.setP_text(rs.getString("p_text"));

				ArrayList<Comments> clist = new ArrayList();

				String sql2 = "select * from comments where cm_code=? order by date desc";
				pstmt = conn.prepareStatement(sql2);
				pstmt.setInt(1, rs.getInt("cm_code"));
				ResultSet rs2 = pstmt.executeQuery();
				
				while(rs2.next()) {
					Comments cm = new Comments();
					cm.setCm_code(rs2.getInt("cm_code"));
					cm.setU_code(rs2.getInt("u_code"));
					cm.setP_code(rs2.getInt("p_code"));
					cm.setCm_text(rs2.getString("cm_text"));
					clist.add(cm);
					
				}
				rs2.close();
				
				
				ms.setMessage(p);
				// ms.setRlist(ct);
				
				datas.add(ms);

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
	public ArrayList<Post> c_b_all(int u_code, int c_code){
		ArrayList<Post> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from post where u_code=? and c_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, u_code);
			pstmt.setInt(2, c_code);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				Post p = new Post();
				p.setP_code(rs.getInt("p_code"));
				p.setU_code(rs.getInt("u_code"));
				p.setC_code(rs.getInt("c_code"));
				p.setP_title(rs.getString("p_title"));
				p.setP_text(rs.getString("p_text"));
				datas.add(p);
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
		
		
		return datas;
		
	} 
	public ArrayList<Users> getCwriters( ArrayList<Comments> clist){ //u_code 작성자이름 comment에 u_code
	      
	      ArrayList<Users> userlist = new ArrayList();
	      try {
	         conn = DBConnection.connect();
	         String sql = "select * from users where u_code=?";
	         pstmt = conn.prepareStatement(sql);
	         
	         for(int i=0;i<clist.size();i++) {
	            int u_code= clist.get(i).getU_code();
	            pstmt.setInt(1, u_code);
	            ResultSet rs =pstmt.executeQuery();
	            while(rs.next()) {
	               Users u = new Users();
	               u.setAge(rs.getInt("age"));
	               u.setU_name(rs.getString("u_name"));
	               u.setU_code(rs.getInt("u_code"));
	               u.setUserid(rs.getString("userid"));
	               u.setEmail(rs.getString("email"));
	               userlist.add(u);
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
	      
	      
	      return userlist;
	   
	   }
	
	  public ArrayList<Comments> getAllcomments( int p_code){
	      ArrayList<Comments> datas = new ArrayList();
	      try {
	         conn = DBConnection.connect();
	         String sql = "select * from comments where p_code=?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, p_code);
	         ResultSet rs =pstmt.executeQuery();
	         
	         while(rs.next()) {
	            Comments c = new Comments();
	            c.setP_code(rs.getInt("p_code"));
	            c.setU_code(rs.getInt("u_code"));
	            c.setCm_code(rs.getInt("cm_code"));
	            c.setCm_text(rs.getString("cm_text"));
	            
	            datas.add(c);
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
	      return datas;
	   }

	
	public Post getOneP(int p_code) {
		
		Post p = new Post();
		
		try {
			conn = DBConnection.connect();
			String sql = "select * from post where p_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_code);
			pstmt.executeQuery();
			
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				p.setP_code(rs.getInt("p_code"));
				p.setU_code(rs.getInt("u_code"));
				p.setC_code(rs.getInt("c_code"));
				p.setP_title(rs.getString("p_title"));
				p.setP_text(rs.getString("p_text"));
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
		
		return p;
		}
	}
	
public Comments getOneCM(int cm_code) {
		
		Comments cm = new Comments();
		
		try {
			conn = DBConnection.connect();
			String sql = "select * from comments where cm_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cm_code);
			pstmt.executeQuery();
			
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				
				cm.setCm_code(rs.getInt("cm_code"));
				cm.setP_code(rs.getInt("p_code"));
				cm.setU_code(rs.getInt("u_code"));
				cm.setCm_text(rs.getString("cm_text"));
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
		
		return cm;
		}
	}

	public boolean insertP(Post p) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into post (u_code, c_code, p_title, p_text) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p.getU_code());
			pstmt.setInt(2, p.getC_code());
			pstmt.setString(3, p.getP_title());
			pstmt.setString(4, p.getP_text());
			pstmt.executeUpdate();
		} catch (Exception e) {
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

	public boolean updateP_title(String p_title, int p_code) {
		try {
			conn = DBConnection.connect();
			String sql = "update post set p_title=? where p_code=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_title);
			pstmt.setInt(2, p_code);
			pstmt.executeUpdate();
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

	public boolean updateP_text(String p_text, int p_code) {
		try {
			conn = DBConnection.connect();
			String sql = "update post set p_text=? where p_code=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p_text);
			pstmt.setInt(2, p_code);
			pstmt.executeUpdate();
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
	
	
	public boolean delP(int p_code) {
		try {
			conn = DBConnection.connect();
			String sql = "delete from post where p_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_code);
			pstmt.executeUpdate();
		} catch (Exception e) {
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

	// ��ü�Խù� ����, ��۰��� �о���°�, �޼�����
	public int cntP(int c_code) {
		int cnt=0;
		try {
			conn=DBConnection.connect();
			String sql = "select count(*) from post, board where post.b_code = board.b_code and board.b_code =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c_code);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				cnt= rs.getInt(1);
				
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

	public int cntCM(int p_code) {
		int cnt=0;
		try {
			conn=DBConnection.connect();
			String sql = "select count(*) from comments where p_code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_code);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				cnt= rs.getInt(1);
				
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

	public boolean insertCM(Comments cm) {
		try {
			conn = DBConnection.connect();
			String sql = "insert into comments (u_code, p_code, cm_text) values(?,?,?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, cm.getU_code());
			pstmt.setInt(2, cm.getP_code());
			pstmt.setString(3, cm.getCm_text());
			pstmt.executeUpdate();
		} catch (Exception e) {
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

	public boolean delCM(int cm_code) {
		try {
			conn = DBConnection.connect();
			String sql = "delete from comments where cm_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cm_code);
			pstmt.executeUpdate();
		} catch (Exception e) {
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
	public ArrayList<Post> c_b( int c_code){
		ArrayList<Post> datas = new ArrayList();
		try {
			conn = DBConnection.connect();
			String sql = "select * from post where c_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c_code);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				Post p = new Post();
				p.setP_code(rs.getInt("p_code"));
				p.setU_code(rs.getInt("u_code"));
				p.setC_code(rs.getInt("c_code"));
				p.setP_title(rs.getString("p_title"));
				p.setP_text(rs.getString("p_text"));
				datas.add(p);
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
		
		
		return datas;
		
	}
	
	

}
