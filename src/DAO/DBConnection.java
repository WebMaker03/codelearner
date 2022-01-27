package DAO;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
   static Connection conn=null;
   
   public static Connection connect() {
      try {   
         // JNDI(네이밍) 서비스를 통해 DataSource 객체를 lookup()
         Context initContext = new InitialContext(); // 컨텍스트 객체를 생성
         String path="java:/comp/env/";
         String dePath="jdbc/mysql"; // JNDI 등록한 이름☆
         DataSource ds = (DataSource) initContext.lookup(path+dePath);
         conn = ds.getConnection();
      } catch (Exception e) {
         e.printStackTrace();
      }
      return conn;
   }
}
