<%@page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a href="welcome.jsp"><font color="white">Home</font></a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="./courses.jsp">산책 코스 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="./addCourse.jsp">산책 코스 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="./editCourse.jsp?edit=update">산책 코스 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="./editCourse.jsp?edit=delete">산책 코스 삭제</a></li>
			</ul>
		</div>
	</div>
</nav>