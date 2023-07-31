package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//p434
//Connection, Statement, ResultSet 사용후 자원하는 반환 및 rollback기능 제공
public class JdbcUtil {
   // 커넥션반환
   public static void close(Connection conn) {
      try {
         if (conn != null) {
            conn.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      System.out.println("Connection자원반납");
   }

   public static void close(PreparedStatement  pstmt) {
      try {
         if(pstmt != null)
         {pstmt.close();}
      } catch (SQLException e) {
         e.printStackTrace();
      }
      System.out.println("Connection자원반납");
   }

   public static void close(ResultSet rs) {
      try {
         if (rs != null) {
            rs.close();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      System.out.println("Connection자원반납");
   }

   public static void rollback(Connection conn) {
      try {
         if (conn != null) {
            conn.rollback();
         }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      System.out.println("Connection자원반납");
   }
}