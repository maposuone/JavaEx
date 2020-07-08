<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("server:" + request.getServerName() + "<br />");
		out.println("port NO.:" + request.getServerPort() + "<br />");
		out.println("How to requset:" + request.getMethod() + "<br />");
		out.println("Protocol:" + request.getProtocol() + "<br />");
		out.println("URL:" + request.getRequestURL() + "<br />");
		out.println("URI:" + request.getRequestURI() + "<br />");
	%>
</body>
</html>