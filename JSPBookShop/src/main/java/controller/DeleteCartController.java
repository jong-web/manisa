package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDAO;
import message.ShowMessage;
import model.Cart;

@WebServlet("/JSPBookShop/deleteCart.do")
public class DeleteCartController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int cartID = Integer.parseInt(req.getParameter("cartID"));
		CartDAO dao = new CartDAO();
		int result = dao.deleteCart(cartID);
		if(result == 1) {
			// 사용자 ID로 장바구니 전체를 다시 조회
			HttpSession session = req.getSession();
			String userID = (String) session.getAttribute("userID");
			List<Cart> cartList = dao.cartList(userID);
			// 총 금액 다시 계산
			double totalAmount = 0;
			for(Cart cart : cartList) {
				totalAmount += cart.getPrice() * cart.getNum();
			}
			// JSON 응답 생성(JSON:JavaScript Object Notation)
			// JSON data 형식 { \key\ : value, \key\ : value }
			StringBuilder jsonRes = new StringBuilder();
			jsonRes.append("{");
			jsonRes.append("\"totalAmount\": ").append(totalAmount).append(",");
			// 장바구니가 비었는지 확인
			if(cartList.isEmpty()) {
				jsonRes.append("\"emptyCart\" : true");
			}else {
				jsonRes.append("\"emptyCart\" : false");
			}
			jsonRes.append("}");
			// JSON 데이터를 response 응답객체에 전달
			res.setContentType("application/json");
			res.setCharacterEncoding("UTF-8");
			res.getWriter().write(jsonRes.toString());
		}else {
			ShowMessage.alertBack(res, "장바구니에서 도서가 삭제되지 않았습니다.");
		}
	}
}
