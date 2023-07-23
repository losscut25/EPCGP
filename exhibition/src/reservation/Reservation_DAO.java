package reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;

public class Reservation_DAO {
    // 예매 정보를 저장하는 메서드
    public void saveReservation(Reservation_DTO reservation) {
    	Connection conn=null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	String query = "INSERT INTO reservation (reservation_no, member_id, exhibition_no, price_no, address) " +
		    			"VALUES (?, ?, ?, ?, ?)";
        try {
            // 데이터베이스 연결
            conn = ConnectionProvider.getConnection();
            System.out.println("연결완료");
            // SQL 쿼리 작성
            // PreparedStatement 객체 생성
            pstmt = conn.prepareStatement(query);
            
            // 매개변수 설정
            pstmt.setInt(1, reservation.getReservation_no());
            pstmt.setString(2, reservation.getMember_id());
            pstmt.setInt(3, reservation.getExhibition_no());
            pstmt.setInt(4, reservation.getPrice_no());
            pstmt.setString(5, reservation.getAddress());
//            pstmt.setInt(1, 2); // 예약 번호 고정 값
//            pstmt.setString(2, "uu"); // 회원 ID 고정 값
//            pstmt.setInt(3, 1); // 전시회 번호 고정 값
//            pstmt.setInt(4, 20000); // 가격 번호 고정 값
//            pstmt.setString(5, "수원"); // 주소 고정 값
            // 쿼리 실행
            pstmt.executeUpdate();
            // 리소스 해제
            pstmt.close();
        } catch (SQLException e) {
        	System.out.println("연결이 되지 않았습니다.");
            e.printStackTrace();
        } finally {
            // 데이터베이스 연결 종료
        	try { if(conn != null) conn.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close(); }
			catch (Exception e) { e.printStackTrace(); }
        }
    }
    
    // 예매 정보를 업데이트하는 메서드, 예약 번호로 검색하여 업데이트
    public void updateReservation(Reservation_DTO reservation) {
    	String query = "UPDATE reservation SET member_id=?, exhibition_no=?, price_no=?, address=? " +
    			"WHERE reservation_no=?";
    	Connection conn=null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
        try {
            // 데이터베이스 연결
            conn = ConnectionProvider.getConnection();
            
            // SQL 쿼리 작성
            
            // PreparedStatement 객체 생성
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            
            // 매개변수 설정
            preparedStatement.setString(1, reservation.getMember_id());
            preparedStatement.setInt(2, reservation.getExhibition_no());
            preparedStatement.setInt(3, reservation.getPrice_no());
            preparedStatement.setString(4, reservation.getAddress());
            preparedStatement.setInt(5, reservation.getReservation_no());
            
            // 쿼리 실행
            preparedStatement.executeUpdate();
            
            // 리소스 해제
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 데이터베이스 연결 종료
        	try { if(conn != null) conn.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close(); }
			catch (Exception e) { e.printStackTrace(); }
        }
    }
    
    // 예매 정보를 삭제하는 메서드, 예약 번호로 검색하여 삭제
    public void deleteReservation(int reservation_no) {
    	String query = "DELETE FROM reservation WHERE reservation_no=?";
    	Connection conn=null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
        try {
            // 데이터베이스 연결
            conn = ConnectionProvider.getConnection();
            
            // SQL 쿼리 작성
            
            // PreparedStatement 객체 생성
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            
            // 매개변수 설정
            preparedStatement.setInt(1, reservation_no);
            
            // 쿼리 실행
            preparedStatement.executeUpdate();
            
            // 리소스 해제
            preparedStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 데이터베이스 연결 종료
        	try { if(conn != null) conn.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(pstmt != null) pstmt.close(); }
			catch (Exception e) { e.printStackTrace(); }
			try { if(rs != null) rs.close(); }
			catch (Exception e) { e.printStackTrace(); }
        }
    }
    
    // 기타 필요한 메서드들 추가 가능
}
