<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<meta charset="utf-8">
	<title>exceptionNoPage.jsp에 프로젝트명 입력하기</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<%!String main="요청하신 페이지를 찾을 수 없습니다.";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=main%></h1>
		</div>
	</div>
	<main role="main">
		<div class="container">
			<div class="text-left">
				<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
				<p><a href="courses.jsp" class="btn btn-secondary">산책 코스 목록&raquo;</a>
			</div>
		</div>
		<%@include file="footer.jsp"%>
	</main>
</body>
</html>