<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "study";
	String upw = "root";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url,uid,upw);
			stmt = con.createStatement();
			String query = "select * from memberforpre";
			rs = stmt.executeQuery(query);
			
			while(rs.next()){
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				
				out.println(id + "  " + pw + "   " + name + "   " + phone ); 
			%>
			<br />
			<%
			}
			
		} catch(Exception e){
			e.printStackTrace();			
		} finally{
			try{
				if(rs != null) rs.close();
				if(con != null) con.close();
				if(stmt != null) con.close();
			} catch (Exception e2){
				e2.printStackTrace();
			}
		}
	%>


</body>
</html>