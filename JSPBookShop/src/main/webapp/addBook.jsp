<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 등록하기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<div class="sub-box2">
			<h2>도서 등록하기</h2>
			<form name="frm" action="addBook.do" method="post" enctype="multipart/form-data" onsubmit="return valfn(this);">
				<table>
					<tr>
						<td>도서명</td>
						<td><input type="text" name="bookName"></td>
					</tr>
					<tr>
						<td>도서가격</td>
						<td><input type="text" name="price">원</td>
					</tr>
					<tr>
						<td>저자명</td>
						<td><input type="text" name="author"></td>
					</tr>
					<tr>
						<td>상세설명</td>
						<td><textarea class="textarea" name="description" cols="40" rows="5" placeholder="300자 이내로 작성해 주세요."></textarea></td>
					</tr>
					<tr>
						<td>출판사</td>
						<td><input type="text" name="publisher"></td>
					</tr>
					<tr>
						<td>도서분류</td>
						<td>
							<select class="cate" name="category">
								<option value="소설">소설</option>
								<option value="시">시</option>
								<option value="에세이">에세이</option>
								<option value="예술">예술</option>
								<option value="종교">종교</option>
								<option value="사회">사회</option>
								<option value="과학">과학</option>
								<option value="경제">경제</option>
								<option value="환경">환경</option>
								<option value="자기계발">자기계발</option>
								<option value="어린이">어린이</option>
								<option value="청소년">청소년</option>
								<option value="요리">요리</option>
								<option value="건강">건강</option>
								<option value="IT">IT</option>
								<option value="수험서">수험서</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>재고량</td>
						<td><input type="text" name="unitsInStock"></td>
					</tr>
					<tr>
						<td>총페이지수</td>
						<td><input type="text" name="totalPages">쪽</td>
					</tr>
					<tr>
						<td>출판일</td>
						<td><input type="text" name="releaseDate"></td>
					</tr>
					<tr>
						<td>도서표지<br>(이미지)</td>
						<td><input type="file" name="imageUrl"></td>
					</tr>
					<tr>
						<td colspan="2" class="center-btn">
							<button type="submit">도서 등록</button>
							<button type="reset">다시 입력</button>
							<button type="button" onclick="location.href='index.jsp'" class="main-btn">홈으로</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		function valfn(form){
			if(form.bookName.value == ""){
				alert("도서명을 입력해 주세요.");
				form.bookName.focus();
				return false;
			}
			if(form.price.value == ""){
				alert("도서가격을 입력해 주세요.");
				form.price.focus();
				return false;
			}
			if(form.author.value == ""){
				alert("저자명을 입력해 주세요.");
				form.author.focus();
				return false;
			}
		}
	</script>
</body>
</html>