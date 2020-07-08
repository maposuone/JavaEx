<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.soft.exbean.Student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty property="name" name="student" value="玄"/>
	<jsp:setProperty property="age" name="student" value="20"/>
	<jsp:setProperty property="grade" name="student" value="2"/>
	<jsp:setProperty property="studentNum" name="student" value="39"/>

	名前：<jsp:getProperty property="name" name="student"/><br />
	年齢：<jsp:getProperty property="age" name="student"/><br />
	学年：<jsp:getProperty property="grade" name="student"/><br />
	番号：<jsp:getProperty property="studentNum" name="student"/>
	
</body>
</html>