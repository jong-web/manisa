package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import message.ShowMessage;

@WebServlet("/JSPBookShop/login.do")
public class LoginController extends HttpServlet {
	public LoginController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// session내장객체에서 session정보를 가져와서 session변수에 저장
		HttpSession session = req.getSession();
		// 로그인 페이지로 오기 전에 사용자가 요청한 URL을 session에 저장
		String prevPage = req.getHeader("Referer");
		if(prevPage != null && !prevPage.contains("/login.do")) {
			session.setAttribute("prevPage", prevPage);
		}
		// login.jsp에서 입력한 userID, password, email객체를 받아 req, res에 넣는다.
		// req.getRequestDispatcher("login.jsp").forward(req, res);
		res.sendRedirect("login.jsp");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String userID = req.getParameter("userID");
		String password = req.getParameter("password");
		MemberDAO dao = new MemberDAO();
		int result = dao.login(userID, password);
		// 만약 result값이 1이면 로그인 성공이므로 세션에 사용자 아이디를 저장
		if(result == 1) {
			// 생성한 session에 login.jsp에서 입력한 userID값을 넣음
			session.setAttribute("userID", userID);
			// 세션 내장객체에서 prevPage 속성값을 가져와서 prevPage변수에 저장
			String prevPage = (String)session.getAttribute("prevPage");
			// 만약 prevPage가 null이 아니라면 prevPage속성값을 제거하고, parvPage로 이동
			if(prevPage != null) {
				session.removeAttribute("prevPage");
				res.sendRedirect(prevPage);
			// prevPage값이 null이면 index페이지로 이동	
			}else {
				res.sendRedirect("index.jsp");
			}
		} else {
			ShowMessage.alertBack(res, "아이디 또는 비밀번호가 맞지 않습니다.");
		}
	}
}
