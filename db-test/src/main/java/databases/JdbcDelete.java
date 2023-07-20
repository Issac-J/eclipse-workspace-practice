package databases;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;

public class JdbcDelete {

	public static void main(String[] args) {
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:mysql://localhost:3306/test";
		String id = null;
		
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			
			System.out.println("Delete value(Id) in Reservation Table");
			System.out.print("Delete Id : ");
			id = br.readLine();
			
			String sql = "Delete From reservation Where id = '" + id + "'";
			
			System.out.println(sql);
			
			Class.forName(Driver);
			conn = DriverManager.getConnection(url, "test", "1234");
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			System.out.println("Success Delete Data to Database");
			
		} 
		
		catch (Exception e) {
			System.out.println("Database Connection Failed...!");
		}
		
		finally {
			try {
				if(rs != null) rs.close();
				if(conn != null) conn.close();
				if(stmt != null) stmt.close();
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

}
