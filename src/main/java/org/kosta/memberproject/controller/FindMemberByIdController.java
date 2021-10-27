package org.kosta.memberproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.memberproject.model.MemberDAO;
import org.kosta.memberproject.model.MemberVO;

public class FindMemberByIdController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		MemberVO vo = MemberDAO.getInstance().findMemberById(id);
		String path = null;
		if (vo == null) {
			path = "findbyid-fail.jsp";
		} else {
			path = "findbyid-ok.jsp";
			request.setAttribute("mvo", vo);
		}
		return path;
	}

}
