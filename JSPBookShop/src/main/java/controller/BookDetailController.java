package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import model.Book;

@WebServlet("/JSPBookShop/bookDetail.do")
public class BookDetailController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		BookDAO dao = new BookDAO();
		// bookList.jsp페이지에서 매개변수로 넘긴 bookID변수의 값을(String으로 넘어온다.)
		// 정수형으로 형변환하여 bookID변수에 저장
		int bookID = Integer.parseInt(req.getParameter("bookID"));
		Book dto = dao.selectOne(bookID);
		req.setAttribute("dto", dto);
		req.getRequestDispatcher("bookDetail.jsp").forward(req, res);
	}
}
