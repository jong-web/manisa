package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import model.Board;

@WebServlet("/JSPBookShop/boardDetail.do")
public class BoardDetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// DB연결
		BoardDAO dao = new BoardDAO();
		// boardID를 정수형으로 받아와 저장
		int boardID = Integer.parseInt(req.getParameter("boardID"));
		dao.addVisitCount(boardID);
		// 받아온 boardID값으로 dao의 selectOne을 호출하여 나온 값을 board에 저장
		Board board = dao.selectOne(boardID);
		// DB해제
		dao.close();
		req.setAttribute("board", board);
		req.getRequestDispatcher("boardDetail.jsp").forward(req, res);
	}
}
