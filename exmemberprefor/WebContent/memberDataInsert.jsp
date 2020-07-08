<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection con;
	PreparedStatement preStmt;
	
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
			int n;
			String query = "insert into memberforpre (id, pw,name,phone) values (?,?,?,?)";
			preStmt = con.prepareStatement(query);
			
			preStmt.setString(1, "4");
			preStmt.setString(2, "4");
			preStmt.setString(3, "HYUN4");
			preStmt.setString(4, "090-1111-1111");
			n = preStmt.executeUpdate();
			
			preStmt.setString(1, "5");
			preStmt.setString(2, "5");
			preStmt.setString(3, "HYUN2");
			preStmt.setString(4, "090-2222-2222");
			n = preStmt.executeUpdate();
			
			preStmt.setString(1, "6");
			preStmt.setString(2, "6");
			preStmt.setString(3, "HYUN3");
			preStmt.setString(4, "090-3333-3333");
			n = preStmt.executeUpdate();
			
			if(n == 1){
				out.println("insert success");
			}else{
				out.println("insert fail");
			}
		} catch(Exception e){
				e.printStackTrace();
		} finally{
			try{
				if(con != null) con.close();
				if(preStmt != null) preStmt.close();
			} catch (Exception e2){
				e2.printStackTrace();
			}
		}
	%>
<br />
<a href="memberdataView.jsp">戻る</a>

</body>
</html>