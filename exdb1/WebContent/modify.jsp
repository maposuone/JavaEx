<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%!
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		
		String name, id, pw, phone1, phone2, phone3, gender;		
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		id = (String)session.getAttribute("id");
	
		String query = "select * from member where id = '" + id + "'";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","study","root");
		statement = connection.createStatement();
		resultSet = statement.executeQuery(query);
		
		while(resultSet.next()){
			name = resultSet.getString("name");
			pw = resultSet.getString("pw");
			phone1 = resultSet.getString("phone1");
			phone2 = resultSet.getString("phone2");
			phone3 = resultSet.getString("phone3");
			gender = resultSet.getString("gender");
		}
	%>
	
	<form action="ModifyOk" method="POST">
		NM : <input type="text" name="name" size="10" value=<%=name %>><br />
		Id : <%=id %><br />
		PW : <input type="text" name="pw" size="10"><br />
		TL : <select name="phone1">
			<option value="080">080</option>
			<option value="090">090</option>
			<option value="100">100</option>
			<option value="110">110</option>
			<option value="120">120</option>
		</select>
		<input type="text" name="phone2" size="5" value=<%=phone2 %>>-<input type="text" name="phone3" size="5" value=<%=phone3 %>>
		<%
			if(gender.equals("man")){
		%>
				性別：<input type="radio" name="gender" value="man" checked="checked">男&nbsp:<input type="radio" name="gender" value="women">女<br />
		<%
			}else{
		%>
				性別： <input type="radio" name="gender" value="man">男&nbsp:<input type="radio" name="gender" value="women" checked="checked">女<br />
		<%
			}
		%>
		<input type="submit" value="情報修正"><input type="reset" value="CANCEL">
	</form>
	
</body>
</html>