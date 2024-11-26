<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<link href="css/boardStyle.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>문의 게시판</h2>
		<form method="get">
			<table>
				<tr>
					<td class="center-box list-search">
						<select name="searchField">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="title+content">제목+내용</option>
						</select>
						<input type="text" name="searchWord">
						<input type="submit" value="검색">
					</td>
				</tr>
			</table>
		</form>
		<table class="boardList-tbl">
			<tr>
				<td colspan="6" class="right-box">
					total : ${ map.total } 
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>
					<a title="제목순 정렬" href="?sortObj=title&sortOrder=${map.sortOrder == 'asc' ? 'desc' : 'asc'}">제목</a>				
				</th>
				<th>
					<a title="작성자순 정렬" href="?sortObj=userID&sortOrder=${map.sortOrder == 'asc' ? 'desc' : 'asc'}">작성자</a>
				</th>
				<th>
					<a title="조회순 정렬" href="?sortObj=visitcount&sortOrder=${map.sortOrder == 'asc' ? 'desc' : 'asc'}">조회수</a>
				</th>
				<th>
					<a title="작성일순 정렬" href="?sortObj=postDate&sortOrder=${map.sortOrder == 'asc' ? 'desc' : 'asc'}">작성일</a>
				</th>
				<th>첨부</th>
			</tr>
			<c:choose>
				<%-- 게시글이 없으면 메시지 표시 --%>
				<c:when test="${ empty boardList }">
					<tr>
						<td colspan="6" class="center-box">
							등록된 게시글이 없습니다.
						</td>
					</tr>
				</c:when>
				<%-- 게시글이 있으면 메시지 표시 --%>
				<c:otherwise>
					<c:forEach var="list" varStatus="loop" items="${ boardList }">
						<tr>
							<td>
								${ map.total - ((map.pageNum - 1 ) * map.pageSize) - loop.index }
							</td>
							<td>
								<a href="boardDetail.do?boardID=${ list.boardID }">${ list.title }</a>
							</td>
							<td>${ list.userID }</td>
							<td>${ list.visitcount }</td>
							<td>${ list.postDate }</td>
							<td>
								<c:if test="${ not empty list.ofile }">
									<a href="download.do?ofile=${ list.ofile }&sfile=${ list.sfile }&boardID=${ list.boardID}">다운로드</a>
								</c:if>
							</td>	
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<tr>
				<td colspan="6" class="right-box">
					<c:choose>
						<c:when test="${ not empty sessionScope.userID }">
							<button type="button" onclick="location.href='boardWrite.jsp'">글쓰기</button>
						</c:when>
						<c:otherwise>
							<button type="button" onclick="location.href='login.do'">로그인 후 글쓰기 가능</button>
						</c:otherwise>
					</c:choose>	
					
				</td>
			</tr>
			<tr>
				<td colspan="6" class="center-box">
					<!-- 페이지 번호 표시 -->
					${ map.pagingVar }
				</td>
			</tr>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>