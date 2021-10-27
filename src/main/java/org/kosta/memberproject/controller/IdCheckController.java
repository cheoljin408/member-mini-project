package org.kosta.memberproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.memberproject.model.MemberDAO;

public class IdCheckController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		boolean result = MemberDAO.getInstance().idcheck(id);
		if(result)
			return "idcheck-fail.jsp";
		else
			return "idcheck-ok.jsp";
	}
}
