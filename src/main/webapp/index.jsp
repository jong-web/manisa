<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 쇼핑몰 - 마니사도서</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c107d57b62.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrap">
		<jsp:include page="nav.jsp"></jsp:include>
		<div class="main">
			<!-- carousel -->
			<div id="demo" class="carousel slide" data-bs-ride="carousel">
	  			<!-- 페이지네이션 -->
	  			<div class="carousel-indicators">
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
	    			<button type="button" data-bs-target="#demo" data-bs-slide-to="5"></button>
	  			</div>
  				<!-- 캐로우셀 이미지 -->
  				<div class="carousel-inner carousel-fade">
    				<div class="carousel-item cr1 active">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	    					<div class="des">
	    						<a href="#">
	    							<p>영어+긍정 마인드를 위한<br>
	    							하루 10분 필사의 시간</p>
	    							<h1>필사노트 증정</h1>
	    							<span>결제 시 선택, 사은품 추가 결제</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide1.png" alt="필사노트">
	    						</a>
	    					</div>
	    				</div>
    				</div>
    				<div class="carousel-item cr2">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	      					<div class="des">
	    						<a href="#">
	    							<p>호수가 다현의 몸을 삼켰다.<br>
	    							그런데 다현은, 누가 죽였을까?</p>
	    							<h1>홍학의 자리</h1>
	    							<span>판매가 12,600원</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide2.png" alt="독서에머물다">
	    						</a>
	    					</div>
	    				</div>	
    				</div>
    				<div class="carousel-item cr3">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	      					<div class="des">
	    						<a href="#">
	    							<p>무료배송의 부담없는 맛이 최고!</p>
	    							<h1>착한배송으로<br>즐기는 독서!</h1>
	    							<span>무배만큼 맛있는 EVENT</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide3.png" alt="무료배송">
	    						</a>
	    					</div>
	    				</div>	
    				</div>
    				<div class="carousel-item cr4">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	      					<div class="des">
	    						<a href="#">
	    							<p>짧았던 여름방학은 안녕</p>
	    							<h1>2학기도<br>신나게 달려볼까!</h1>
	    							<span>많은 친구들의 선택을 받은<br>2학기 참고서 추천!</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide4.png" alt="초중고2학기참고서">
	    						</a>
	    					</div>
	    				</div>	
    				</div>
    				<div class="carousel-item cr5">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	      					<div class="des">
	    						<a href="#">
	    							<p>『트렌드 코리아 2025』도서를<br>
	    							1권 이상 예약 구매시</p>
	    							<h1>예약 판매<br>이벤트</h1>
	    							<span>앙증뽀짝 푸른뱀 마우스 패드 증정</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide5.png" alt="트랜드코리아">
	    						</a>
	    					</div>
	    				</div>	
    				</div>
    				<div class="carousel-item cr6">
    					<div class="carousel-in d-flex align-items-center justify-content-around">
	      					<div class="des">
	    						<a href="#">
	    							<p>다양한 소재와 번뜩이는 아이디어</p>
	    							<h1>대한독립<br>출판만세</h1>
	    							<span>대한민국 독립출판도서를 응원합니다.</span>
	    						</a>
	    					</div>
	    					<div class="book-img">
	    						<a href="#">
	    							<span><i class="fa-regular fa-square"></i></span>
	    							<span><i class="fa-solid fa-chevron-left"></i></span>
	    							<span><i class="fa-solid fa-chevron-up"></i></span>
	    							<img src="img/slide6.png" alt="대한독립출판만세">
	    						</a>
	    					</div>
	    				</div>	
    				</div>
  				</div>
			</div><!-- carousel -->
			<div class="main-banner">
				<div class="banner1">
					<a href="#">
						<div class="banner-img">
							<img src="img/banner1.png" alt="배너1">
						</div>
						<div class="banner-des">
							<span>#추석맞이이벤트 #9월추천도서</span>
							<h4>달달한 9월 책과의 만남!</h4>
							<p><i class="fa-solid fa-arrow-right-long"></i></p>
						</div>
					</a>
				</div>
				<div class="banner2">
					<a href="#">
						<div class="banner-img">
							<img src="img/banner2.png" alt="배너2">
						</div>
						<div class="banner-des">
							<span>#마음에시한편 #적립금이벤트</span>
							<h4>착한배송, 1만원 이상 무료배송</h4>
							<p><i class="fa-solid fa-arrow-right-long"></i></p>
						</div>
					</a>
				</div>
			</div>
		</div><!-- main -->
		<div class="field">
			<div class="center">
				<h2>분야별 도서</h2>
				<p>찾으시는 분야의 도서를 골라보세요.</p>
				<div class="field-box">
					<ul>
						<li>
							<a href="#">
								<img src="img/icon1.png" alt="베스트셀러">
								<p>베스트셀러</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon2.png" alt="국내도서">
								<p>국내도서</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon3.png" alt="외국도서">
								<p>외국도서</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon4.png" alt="중고샵">
								<p>중고샵</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon5.png" alt="E-Book">
								<p>E-Book</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon6.png" alt="독서클럽">
								<p>독서클럽</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon7.png" alt="CD/LP/DVD">
								<p>CD/LP/DVD</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon8.png" alt="문구/GIFT">
								<p>문구/GIFT</p>	
							</a>
						</li>
						<li>
							<a href="#">
								<img src="img/icon9.png" alt="티켓">
								<p>티켓</p>	
							</a>
						</li>
					</ul>
				</div>
			</div><!-- center -->
		</div><!-- field -->
		<div class="new">
			<div class="center">
				<h2>오늘의 책이에요</h2>
				<p>2024.09.11</p>
				<div class="new-box">
					<ul>
						<li>
							<a href="#">
								<div class="new-img">
									<b><i>NEW일빵빵시리즈</i></b>
									<div class="new-img-ani">
										<img src="img/new1.jpg" alt="빵빵GO">
									</div>
								</div>
								<div class="new-des">
									<span>빵빵GO</span>
									<p>미국3살 아이처럼 연습하기</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="new-img">
									<b><i>삶에 대한 회귀</i></b>
									<div class="new-img-ani">
										<img src="img/new2.jpg" alt="인생의 의미">
									</div>
								</div>
								<div class="new-des">
									<span>인생의 의미</span>
									<p>사람은, 우리는, 나는<br>무엇으로 살아야 하는가</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="new-img">
									<b><i>영국 문학의 제왕</i></b>
									<div class="new-img-ani">
										<img src="img/new3.jpg" alt="우연은 비켜 가지 않는다">
									</div>
								</div>
								<div class="new-des">
									<span>우연은 비켜 가지 않는다</span>
									<p>삶에 대한 큰 영감을 주는<br>교수를 운명처럼 만나다.</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#">
								<div class="new-img">
									<b><i>이 책을 여섯 번 읽었다!</i></b>
									<div class="new-img-ani">
										<img src="img/new4.jpg" alt="좋은 리더를 넘어 위대한 리더로">
									</div>
								</div>
								<div class="new-des">
									<span>좋은 리더를 넘어 위대한 리더로</span>
									<p>경영 구루의 리더십 로드맵</p>
								</div>
							</a>
						</li>
					</ul>
				</div><!-- new-box -->
			</div><!-- center -->
		</div><!-- new -->
		<div class="new-more">새로운 도서 더 보기</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div><!-- wrap -->
</body>
</html>