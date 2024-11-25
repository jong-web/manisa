package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/JSPBookShop/logout.do")
public class LogoutController extends HttpServlet {
	public LogoutController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// session 생성(기존의 session이 있으면 기존 session object를 가져온다.)
		// session에 userID값이 존재한 상태로 생성됨
		HttpSession session = req.getSession();
		// 세션을 무효화하여 로그아웃 처리
		session.invalidate();
		// 로그아웃 후 메인 페이지로 이동
		res.sendRedirect("index.jsp");
	}
}