package org.kosta.memberproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.memberproject.model.MemberDAO;
import org.kosta.memberproject.model.MemberVO;

public class UpdateMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("mvo") == null) {
			return "redirect:index.jsp";
		}
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		
		MemberVO vo = new MemberVO(id, password, name, address, birth, null);
		MemberDAO.getInstance().updateMember(vo);
		
		session.setAttribute("mvo", vo);
		return "redirect:update-result.jsp";
	}

}
