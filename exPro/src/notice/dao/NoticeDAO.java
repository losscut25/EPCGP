package notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JDBCUtil;
import notice.model.Notice;

//공지 게시판 작성, 수정, 삭제 DAO
public class NoticeDAO {
	
	
	public Notice insert(Connection conn, Notice notice) throws SQLException  {
			System.out.println("NoticeDAO- insert() 진입");
			String sql = "insert into notice (member_id, n_details, n_date, n_title) "
					+"values(?,?,?,?)";
			
			PreparedStatement pstmt = null;
			Statement stmt = null;
			ResultSet rs = null;
			int notice_no = 0;
			
			try {
				pstmt =  conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				pstmt.setString(1, notice.getAdmin_id());
				pstmt.setString(2, notice.getN_details());
				pstmt.setTimestamp(3, new Timestamp(notice.getN_date().getTime()));
				pstmt.setString(4, notice.getN_title());
				
				int insertedCount = pstmt.executeUpdate();
				System.out.println(insertedCount);
				if (insertedCount>0) {
					rs = pstmt.getGeneratedKeys();
						System.out.println(rs);
						if(rs.next()) {
							notice_no = rs.getInt(1);
							notice.setNotice_no(notice_no);
						return new Notice (notice.getAdmin_id(), notice.getN_title(), notice.getN_details(), notice.getN_date());
					}
				}			
			return null;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
	}
}	
	
