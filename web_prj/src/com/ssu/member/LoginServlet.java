package com.ssu.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MemberServlet
 */
//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String midv = request.getParameter("mid");
		String mpwv = request.getParameter("mpw");
		
		Member m = new Member();
		MemberVO vo = m.memberLogin(midv, mpwv);
		
		if(vo.getMname() != null) {
			HttpSession session = request.getSession();
			session.setAttribute("SS_NAME", vo.getMname());
			session.setAttribute("SS_GUBUN", vo.getMgubun());
			session.setAttribute("SS_POINT", 10000);
			
			if(vo.getMgubun().equals("u")) {
				response.sendRedirect("/member_main.jsp?username="+vo.getMname());
			} else if(vo.getMgubun().equals("a")) {
				ArrayList list = m.memberList();
				request.setAttribute("LVL", list);
				request.getRequestDispatcher("/admin_main.jsp")
				.forward(request,  response);
			}
		} else {
			response.sendRedirect("/member_login.jsp");
		}
		
		
////		RequestDispatcher rd = request.getRequestDispatcher("/result.jsp");
////		rd.forward(request, response);
//		request.setAttribute("LVL", list);
//		request.getRequestDispatcher("/result.jsp").forward(request, response);
	}

}
