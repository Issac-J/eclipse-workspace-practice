package databases;

import java.io.*;
import java.sql.*;

public class JdbcInsert {

	public static void main(String[] args) {
		
		String Driver = "com.mysql.cj.jdbc.Driver";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:mysql://localhost:3306/test";
		
		String sql = "insert into reservation(id, name, reserveDate, roomNum) values";
		String id, name, reserveDate, roomNum;
		
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
			
			System.out.println("Add Reservation Data...");
			System.out.print("Input Id(Number) : ");
			id = br.readLine();
			
			System.out.print("Input Name(String) : ");
			name = br.readLine();
			
			System.out.print("Input reserveDate(Date) : ");
			reserveDate = br.readLine();
			
			System.out.print("Input roomNum(Number) : ");
			roomNum = br.readLine();
			
			/*
			System.out.print(id + "\t");
			System.out.print(name + "\t");
			System.out.print(reserveDate + "\t");
			System.out.print(roomNum + "\t");
			 */
			
			sql += "('" + id + "', '" + name + "', '" + reserveDate + "', '" + roomNum + "')";
			System.out.println(sql);
			
			Class.forName(Driver);
			conn = DriverManager.getConnection(url, "test", "1234");
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			System.out.println("Success Insert Data to Database");
			
		}
		
		catch (Exception e) {
			System.out.println("Database Connection Failed...!");
		}
		
		// 연결 해제
		finally {
			try {
				if(rs != null) rs.close();
				if(conn != null) conn.close();
				if(stmt != null) stmt.close();
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}

}
