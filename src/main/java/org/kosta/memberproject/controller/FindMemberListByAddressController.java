package org.kosta.memberproject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.memberproject.model.MemberDAO;
import org.kosta.memberproject.model.MemberVO;

public class FindMemberListByAddressController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String address = request.getParameter("address");
		ArrayList<MemberVO> memberList = MemberDAO.getInstance().findMemberListByAddress(address);
		request.setAttribute("memberList", memberList);
		return "findbyaddress-result.jsp";
	}
}
