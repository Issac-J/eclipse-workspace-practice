package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JdbcSelect {

	public static void main(String[] args) {
		
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		// JDBC 연결에 필요한 객체 선언
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		// 연결할 Database Setting 값(DB주소, DBId, DBPw)	
		String jdbcUrl = "jdbc:mysql://localhost:3306/test";
		
		// Database 에 전달할 Query
		// String sql = "SELECT * FROM reservation";
		
		try {
			// Class.forName("com.mysql.cj.jdbc.Driver");
			Class.forName(Driver);
			conn = DriverManager.getConnection(jdbcUrl, "test", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM reservation");
			
			System.out.println("Id\t\tName\t\tReserveDate\t\tRoomNum");
			
			while(rs.next()) {
				System.out.print(rs.getLong("id") + "\t\t");
				System.out.print(rs.getString("Name") + "\t\t");
				System.out.print(rs.getTimestamp("ReserveDate") + "\t\t");
				System.out.print(rs.getString("RoomNum") + "\t\t");
				System.out.print("\n");
			}
		}
		
		catch(Exception e) {
			System.out.println("Database Connection Failed!");
			e.printStackTrace();
		}
		
		finally {
			try {
				if(rs != null) rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			} 
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
		
	}

}
