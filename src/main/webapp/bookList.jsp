<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 목록보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="sub-box3">
		<h2>도서 목록보기</h2>
		<table>
			<tr>
				<td colspan="6" class="right-box">
					Total : ${ totalCount }
				</td>
			</tr>
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>저자명</th>
				<th>출판사</th>
				<th>출판일</th>
				<th>도서표지</th>
			</tr>
			<c:choose>
				<c:when test="${ empty bookLists }">
					<tr>
						<td colspan="6" class="center-btn">
							등록된 도서 목록이 없습니다.
						</td> 
					</tr>	
				</c:when>
				<c:otherwise>
					<c:forEach var="book" items="${ bookLists }" varStatus="status">
						<tr>
							<%-- status.index : bookLists 목록 1개의 인덱스 번호 --%>
							<td>${ totalCount-status.index }</td>
							<td>
								<a href="bookDetail.do?bookID=${ book.bookID }">${ book.bookName }</a></td>
							<td>${ book.author }</td>
							<td>${ book.publisher }</td>
							<td><fmt:formatDate value="${ book.releaseDate }" pattern="yyyy년 MM월 dd일" /></td>
							<td>
								<img src="images/${ book.imageUrl }" alt="${ book.bookName }">
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>