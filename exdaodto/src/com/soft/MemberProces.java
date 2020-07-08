package com.soft;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberProces
 */
//@WebServlet("/MProces")
public class MemberProces extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberProces() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String uri = request.getRequestURI();
		String command = uri.substring(uri.lastIndexOf("/")+ 1, uri.lastIndexOf(".test"));
		
		if(command.trim().equals("register")) {
			String num = request.getParameter("num");
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");
			String addr = request.getParameter("addr");
			
			MemberDTO dto = new MemberDTO();
			dto.setNum(Integer.parseInt(num));
			dto.setNmae(name);
			dto.setTel(tel);
			dto.setAdder(addr);
			
			MemberDAO dao = new MemberDAO();
			
			boolean bool = dao.insertMember(dto);
			
			if(bool) {
				response.sendRedirect("Success.html");
			}else {
				response.sendRedirect("fail.html");
			}
		} else if (command.trim().equals("update")) {
			
		}
	}

}
