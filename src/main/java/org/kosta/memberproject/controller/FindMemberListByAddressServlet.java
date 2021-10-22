package org.kosta.memberproject.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.memberproject.model.MemberDAO;
import org.kosta.memberproject.model.MemberVO;

/**
 * Servlet implementation class FindMemberListByAddressServlet
 */
@WebServlet("/FindMemberListByAddressServlet")
public class FindMemberListByAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String address = request.getParameter("address");
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try {
			list = MemberDAO.getInstance().findMemberListByAddress(address);
			System.out.println(list.toString());
			
			String path = "findbyaddress-result.jsp";
			request.setAttribute("memberList", list);
			request.getRequestDispatcher(path).forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
