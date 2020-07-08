<%@page import="exdaodto1.MemberDAO"%>
<%@page import="exdaodto1.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> dtos =memberDAO.memberSelect();
		
		for(int i = 0; i< dtos.size(); i++){
			MemberDTO dto = dtos.get(i);
			int num = dto.getNum();
			String name = dto.getName();
			String tel = dto.getTel();
			String addr = dto.getAddr();
			
			out.println(num + "  " + name + "   " + tel + "   " + addr + "<br />");
		}
		
	%>
</body>
</html>