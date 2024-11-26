<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 검사</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<div class="popup">
		<h3>아이디 중복 확인</h3>
		<c:if test="${ result == 1 }">
			<p>${ userID } 아이디는 이미 사용 중인 아이디입니다.</p>
			<button type="button" class="close-btn" onclick="nofn()">닫기</button>
		</c:if>
		<c:if test="${ result == 0 }">
			<p>${ userID } 아이디는 사용 가능합니다.</p>
			<button type="button" class="close-btn" onclick="okfn()">닫기</button>
		</c:if>
		</div>
	<script>
		function nofn(){
			// 현재 팝업창을 띄운 부모 페이지의 form의 userID입력란 비우기
			opener.document.frm.userID.value="";
			self.close();
		}
		function okfn(){
			// 현재 팝업창을 띄운 부모 페이지의 form의 idDoubleCheck값을 idCheck로 변경
			opener.document.frm.idDoubleCheck.value = "idCheck";
			self.close();
		}
	</script>
</body>
</html>