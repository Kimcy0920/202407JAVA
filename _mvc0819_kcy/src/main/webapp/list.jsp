<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>신짱구 팬페이지</title>
<link rel="icon"
	href="https://i.namu.wiki/i/kToKkRvHRvUs7w0CB6YaWZurCWPkxjBvk6pshWqF5uXomNoFMNT-2XATnkQaBFLnk4FMYfrlg5moFsdCInevJdGPzDRCTqpFBxNzDEbSI8h63O_CYXN5Ial9iqtk8cjYArUCV0J5OXRFMaRAyxhjG5DetkvDi_72G26E02thNFo.svg"
	type="image/x-icon">
<script src="https://kit.fontawesome.com/c47106c6a7.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/style.css">
<script src="js/ie.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<!--
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled"
						aria-disabled="true">Disabled</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
-->
	<header>
		<div class="inner">
			<h1>
				<a href="main.jsp">짱구는 못말려</a>
			</h1>
			<ul id="gnb">
				<%
				if ((String) session.getAttribute("userId") != null) {
				%>
				<li><a href="list">게시판</a></li>
				<%
				} else {
				%>
				<div1 title="로그인 후 이용이 가능합니다.">
				<li><a href="login_notice.jsp">게시판</a></li>
				</div1>
				<%
				}
				%>
				<li><a href="webhard.jsp">자료실</a></li>
				<li><a href="products.jsp">장바구니</a></li>
				<li><a
					href="https://namu.wiki/w/%EC%A7%B1%EA%B5%AC%EB%8A%94%20%EB%AA%BB%EB%A7%90%EB%A0%A4/%EA%B7%B9%EC%9E%A5%ED%8C%90"
					target="_blank">극장판</a></li>
				<li><a
					href="https://namu.wiki/w/%ED%81%AC%EB%A0%88%EC%9A%A9%20%EC%8B%A0%EC%A7%B1/%EB%93%B1%EC%9E%A5%EC%9D%B8%EB%AC%BC"
					target="_blank">등장인물</a></li>
				<li><a
					href="https://github.com/Kimcy0920/202407JAVA/tree/master/web0805_project"
					target="_blank">홈페이지 정보</a></li>
			</ul>
			<%
			if ((String) session.getAttribute("userId") != null) {
			%>
			<ul class="util">
				<li><a><%=(String) session.getAttribute("username")%>님
						환영합니다.</a></li>
				<li><a href="logout.jsp">로그아웃</a></li>
				<li><a href="mem_update_form.jsp">회원정보 수정</a></li>
			</ul>
			<%
			} else {
			%>
			<ul class="util">
				<li><a href="login_form.jsp">로그인</a></li>
				<li><a href="signup_form.jsp">회원가입</a></li>
			</ul>
			<%
			}
			%>
		</div>
	</header>
<figure1>
	<div class="inner">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<div class="container" style="padding-top: 50;">
		<table class="table table-bordered table-hover">
			<tr>
				<th class="num">번호</th>
				<th class="title">제목</th>
				<th class="writer">작성자</th>
				<th class="regtime">작성일시</th>
				<th>조회수</th>
			</tr>

			<c:forEach var="msg" items="${msgList}">
				<tr>
					<td>${msg.num}</td>
					<td style="text-align: left;"><a
						href="view?num=${msg.num}&page=${param.page}"> ${msg.title} </a></td>
					<td>${msg.writer}</td>
					<td>${msg.regtime}</td>
					<td>${msg.hits}</td>
				</tr>
			</c:forEach>
		</table>

		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:forEach var="pgn" items="${pgnList}">
					<li class="page-item"><a class="page-link"
						href="list?page=${pgn.pageNo}"> <c:choose>
								<c:when test="${pgn.curPage}">
									<u>${pgn.display}</u>
								</c:when>
								<c:otherwise>
										${pgn.display}
									</c:otherwise>
							</c:choose>
					</a></li>
				</c:forEach>
			</ul>
		</nav>

		<button type="button" class="btn btn-outline-primary"
			onclick="location.href='write'">글쓰기</button>
	</div>
	</div>
</figure1>
	<footer>
		<div class="inner">
			<div class="upper">
				<h1>KimChangYong</h1>
				<ul>
					<li><a
						href="https://dept.du.ac.kr/computer/intro.do;jsessionid=0B24BFC3F24015BEF4E932322DA6E54A"
						target="_blank">동서울대학교 컴퓨터소프트웨어</a></li>
				</ul>
			</div>

			<div class="lower">
				<address>
					qkqhzmfjddl@naver.com & operztioncwal@gmail.com<br> TEL :
					010-8713-2971 C.P : 010-8713-2971
				</address>
				<p>2024 _mvc0819_kcy &copy; copyright all right reserved.</p>
			</div>
		</div>
	</footer>
</body>
</html>