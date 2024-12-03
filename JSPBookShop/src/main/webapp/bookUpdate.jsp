<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 상세 보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link href="css/style.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<script src="https://npmcdn.com/flatpickr/dist/l10n/ko.js"></script>
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="sub-box2">
		<h2>도서 수정하기</h2>
		<form name="frm" action="bookUpdate.do" method="post" enctype="multipart/form-data" onsubmit="return valfn(this);">
			<input type="hidden" name="bookID" value="${ dto.bookID }">
			<input type="hidden" name="oldImageUrl" value="${ dto.imageUrl }">
			<table class="update-tbl">
				<tr>
					<td>도서번호</td>
					<td>${ dto.bookID }</td>
				</tr>
				<tr>
					<td>도서명</td>
					<td><input type="text" name="bookName" value="${ dto.bookName }"></td>
				</tr>
				<tr>
					<td>도서가격</td>
					<td><input type="text" name="price" value="${ dto.price }">원</td>
				</tr>
				<tr>
					<td>저자명</td>
					<td><input type="text" name="author" value="${ dto.author }"></td>
				</tr>
				<tr>
					<td>상세설명</td>
					<td><textarea class="textarea" name="description" cols="40" rows="5" placeholder="300자 이내로 작성해 주세요.">${ dto.description }</textarea></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="publisher" value="${ dto.publisher }"></td>
				</tr>
				<tr>
					<td>도서분류</td>
					<td>
						<select class="cate" name="category">
                     		<c:forEach var="cate" items="${ cateList }">
                        		<option value="${ cate }" ${ cate == dto.category ? 'selected' : '' }>
                        			${ cate }
                          		</option>
                     		</c:forEach>
                  		</select>
					</td>
				</tr>
				<tr>
					<td>재고량</td>
					<td><input type="text" name="unitsInStock" value="${ dto.unitsInStock }"></td>
				</tr>
				<tr>
					<td>총페이지수</td>
					<td><input type="text" name="totalPages" value="${ dto.totalPages }">쪽</td>
				</tr>
				<tr>
					<td>출판일</td>
					<td><input type="text" name="releaseDate" value="${ dto.releaseDate }" id="myID"></td>
				</tr>
				<tr>
					<td>도서표지<br>(이미지)</td>
					<td><input type="file" name="imageUrl" id="imageInput" onchange="preview(event)">
						<!-- 기존 이미지 파일명 표시 -->
						<div>
							<span id="fileName">${ dto.imageUrl != null ? dto.imageUrl : '선택된 파일 없음' }</span>
						</div>
						<!-- 기존 이미지 표시 -->
						<div>
							<img id="bookImage" src="images/${ dto.imageUrl }" alt="${ dto.bookName }">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="center-btn2">
						<button type="submit">도서 수정하기</button>
						<button type="reset">다시 입력</button>
						<button type="button" onclick="location.href='bookList.do'" class="main-btn">도서 목록</button>
						<button type="button" onclick="location.href='index.jsp'" class="main-btn">홈으로</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
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
		// 도서 표지 이미지 표시하고, 이미지가 변경되면 bookImage영역에 새 이미지 표시하기
		function preview(event){
			// onchange이벤트가 발생한 객체를 전달받아서 input변수에 저장
			let input = event.target;
			// 아이디가 fileName인 객체를 fileNameField변수에 저장
			let fileNameField = document.getElementById("fileName");
			// 아이디가 bookImage인 객체를 imageField변수에 저장
			let imageField = document.getElementById("bookImage");
			// 기존 이미지 파일명 표시
			if(input.files.length > 0){
				fileNameField.textContent = input.files[0].name;
			} else {
				fileNameField.textContent = "${ dto.imageUrl != null ? dto.imageUrl : '선택된 파일 없음' }";
			}
			// 기존 이미지 파일 표시하거나 새로 첨부한 이미지 표시
			// type이 file인 input 태그 또는 API 요청과 같은 인터페이스를 통해 File 또는 Blob 객체를 편리하게 처리할 수 있는 방법을 제공하는 객체
			let reader = new FileReader();
			// onload : 이벤트 핸들러, 읽기 동작이 성공적으로 완료되면 발생.
			reader.onload = function(){
				// readyState : 객체 상태를 숫자를 관리한다.
				// 2는 파일 읽기 작업이 완료 되었음을 알린다.
				if(reader.readyState === 2){
					// result : 파일 읽은 결과를 가지고 있거나 null값을 가진다.
					imageField.src = reader.result;
				}
			}
			// input입력란에 있는 파일 내용을 읽어서 dataURL형식의 문자열로 저장
			if(input.files.length > 0){
				// 파일 객체를 읽은 후 데이터 URL 표현으로 변환한다.
				reader.readAsDataURL(input.files[0]);
			}
		}
		let picker = flatpickr("#myID", {
			locale : "ko",
		});
	</script>
</body>
</html>
