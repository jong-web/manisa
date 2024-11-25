<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마니사도서 - 비밀번호 확인</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="sub-box3">
	<h2>도서 수정하기 전에 비밀번호 확인하기</h2>
		<form name="frm" method="post" action="pass.do" onsubmit="return valfn(this);">
			<input type="hidden" name="bookID" value="${ param.bookID }">
			<input type="hidden" name="mode" value="${ param.mode }">
			<table class="t1" border="1">
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="2" class="center-btn">
						<button type="submit">비밀번호 확인</button>
						<button type="reset">다시 쓰기</button>
						<button type="button" onclick="location.href='bookList.do'">도서 목록</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
	function valfn(form) {
		if(form.password.value == "") {
			alert("비밀번호를 입력해 주세요.");
			form.password.focus();
			return false;
		}
	}
	</script>
</body>
</html>