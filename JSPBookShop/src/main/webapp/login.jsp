<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마니사도서 - 회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<div class="sub-box">
			<div class="center">
				<h2>로그인하기</h2>
				<div class="regi-box">
					<form name="frm" action="login.do" method="post" onsubmit="return valfn(this);">
						<table class="login_tbl" border="1">
							<tr>
								<td>아이디</td>
								<td><input type="text" name="userID"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="password"></td>
							</tr>
							<tr>
								<td colspan="2" class="center-btn">
									<button type="submit">로그인</button>
									<button type="button" onclick="location.href='index.jsp'">메인</button>
								</td>
							</tr>
						</table>
					</form>
					<table>
						<tr>
							<td><button class="regi_btn" type="button" onclick="location.href='register.jsp'">회원가입</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		function valfn(form){
			if(form.userID.value == ""){
				alert("아이디를 입력하세요!");
				form.userID.focus();
				return false;
			}
			if(form.password.value == ""){
				alert("비밀번호를 입력하세요!");
				form.password.focus();
				return false;
			}
			if(form.email.value == ""){
				alert("이메일를 입력하세요!");
				form.email.focus();
				return false;
			}
		}
	</script>
</body>
</html>