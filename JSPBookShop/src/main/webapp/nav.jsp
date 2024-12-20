<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<div class="container header">
		<a class="navbar-brand" href="index.jsp">
			<img src="img/logo.png" alt="로고">
		</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
	     	<span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="addBook.do">도서 등록</a>
				</li>
				<li class="nav-item">
				    <a class="nav-link" href="bookList.do">도서 목록</a>
				</li>
				<li class="nav-item">
				    <a class="nav-link" href="boardList.do">문의 게시판</a>
				</li>
			</ul>
	    </div>
	    <div class="top-menu">
			<ul class="navbar-nav">
			<%
				// session에서 로그인 여부 확인
				// HttpSession loginSession = request.getSession();
				// LoginController.session.userID.value를 String userID에 넣음
				String userID = (String)session.getAttribute("userID");
				if(userID != null) {
					%>
					<!-- 브라우저에 아이디와 로그아웃 아이콘 표시 -->
					<li class="nav-item">
						<span class="nav-link"><%= userID %>님 반갑습니다.</span>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="logout.do"><i class="fa-solid fa-arrow-right-from-bracket"></i></a>
					</li>
					<%
				} else {
					%>
					<li class="nav-item"><a href="login.jsp" class="nav-link">
						<i class="fa-solid fa-user"></i>
					</a></li>
					<li class="nav-item"><a href="register.jsp" class="nav-link">
						<i class="fa-solid fa-user-plus"></i>
					</a></li>
					<%
				}
			%>
				<li class="nav-item"><a href="cartView.do" class="nav-link">
					<i class="fa-solid fa-cart-shopping"></i>
				</a></li>
				<li class="nav-item"><a href="#" class="nav-link">
					<i class="fa-solid fa-magnifying-glass"></i>
				</a></li>
			</ul>
		</div>
	</div>
</nav><!-- header -->
