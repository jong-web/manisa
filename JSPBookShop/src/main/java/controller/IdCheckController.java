package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

@WebServlet("/JSPBookShop/idCheck.do")
public class IdCheckController extends HttpServlet {
	public IdCheckController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		MemberDAO dao = new MemberDAO();
		String userID = req.getParameter("userID");
		int result = dao.idCheck(userID);
		// request내장객체에 userID속성으로 세팅
		req.setAttribute("userID", userID);
		req.setAttribute("result", result);
		req.getRequestDispatcher("idCheck.jsp").forward(req, res);
	}
}
