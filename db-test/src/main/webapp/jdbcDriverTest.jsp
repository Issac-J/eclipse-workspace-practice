<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>JDBC Driver Test</title>
</head>
	<body>
		<h2>JDBC Driver Test...</h2>
		
		<%
			/*
				Null로 초기화
			*/
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		
			try {
				// Database Url, Id, Pw
				String jdbcUrl = "jdbc:mysql://localhost:3306/test";
				String DB_ID = "test";
				String DB_PW = "1234";
				
				// DriverManager에 등록
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(jdbcUrl, DB_ID, DB_PW);
				out.println("JDBC Connected!");
				
				String sql = "SELECT * FROM RESERVATION";
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				// out.println(rs.next());
				
				while(rs.next()) {
					String id = rs.getString("Id");
					String name = rs.getString("Name");
					Timestamp reserveDate = rs.getTimestamp("ReserveDate");
					String roomNum = rs.getString("RoomNum");
		%>
					<table style="text-align: center; border: solid black 1px">
						<tr>
							<td width="100"><%=id%></td>
							<td width="100"><%=name%></td>
							<td width="100"><%=reserveDate.toString()%></td>
							<td width="100"><%=roomNum%></td>
						</tr>
					</table>
		<%
				}
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
		%>
	</body>
</html>