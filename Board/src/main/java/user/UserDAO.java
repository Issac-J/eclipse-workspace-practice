package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	// Database 에 연결하기 위한 객체 선언
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/webboard";
			String dbId = "test";
			String dbPw = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbId, dbPw);
		} 
		catch (Exception e) {
				e.printStackTrace();
		}
	}
	
	public int login(String userId, String userPw) {
		String SQL = "Select userPw FROM user WHERE userId = ?";
		
		try {
			// SQL Injecton 과 같은 공격을 예방하기 위하여 PreparedStatement 를 사용한다. 다른 방법도 참고.
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			// executeQuery 메소드가 실행되었을 때 정상적으로 데이터베이스와 연결을 시도하여 나오 결과에 따라...
			// rs.next() 값이 1이면 데이터베이스 연결 성공
			if(rs.next()) {
				
				// 데이터베이스에서 SQL을 사용하여 데이터를 불러온 후 입력한 값과 비교 
				if(rs.getString(1).equals(userPw))	return 1; // Success Login.
				else return 0; // Failed Login.
			}
			
			// rs.next() 값이 1이 아니면 데이터 베이스 연결 실패(-1 을 return)
			return -1;
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return -2;
	}
}

/*
 * JSP에서 회원 데이터베이스 테이블에 접근할 수 있는 객체(DAO)를 만들어야 한다. 
 * DAO 는 Database Access Object로써 실질적으로 데이터베이스에 접근하여 데이터를 불러와 저장하는 객체를 말한다. 
 */
