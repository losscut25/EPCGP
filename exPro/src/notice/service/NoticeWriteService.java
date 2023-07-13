 package notice.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import jdbc.JDBCUtil;
import jdbc.connection.ConnectionProvider;
import notice.dao.NoticeDAO;
import notice.model.Notice;

public class NoticeWriteService {
	
	private NoticeDAO noticeDAO = new NoticeDAO();
	
	public int write(Notice notice) {
		System.out.println("NoticeWriteServiced의 write() 진입");
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			//시간 적용 
			Notice newNotice = toNotice(notice);
			Notice savedNotice = noticeDAO.insert(conn, newNotice);
			if(savedNotice==null) {
				throw new RuntimeException("fail to insert notice");
			}
			
			conn.commit();
			
			return savedNotice.getNotice_no();
		} catch (SQLException e) {
			JDBCUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
		JDBCUtil.close(conn);
		}
	}

	private Notice toNotice(Notice notice) {
		Date now = new Date();
		//(String admin_id, String n_title, String n_details, Date n_date) 
		return new Notice("admin", notice.getN_title(), notice.getN_details(), now);
	}

}
