<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>include01.jsp page!!!</h1>
	<jsp:include page="include02.jsp" flush="true" />
	<h1> return include01.jsp page.</h1>
</body>
</html>