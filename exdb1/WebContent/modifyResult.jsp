<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= session.getAttribute("name") %>さんの会員情報修正しました。 <br />
	<a href="logout.jsp">LOGOUT</a> &nbsp;&nbsp <a href="modify.jsp">会員情報修正</a>
</body>
</html>