<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="dto.Course"%>
<%@page import="dao.CourseRepository"%>
<%@page errorPage="exceptionNoCourseId.jsp"%>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<title>산책 코스 목록</title>
	<script type="text/javascript">
		function addToCart() {
			if(confirm("산책 예약권을 장바구니에 추가하시겠습니까?"))
				document.addForm.submit();
			else
				document.addForm.reset();
		}
	</script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">산책 코스 정보</h1>
		</div>
	</div>
	<%@include file="dbconn.jsp"%>
	<%
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String courseId=request.getParameter("id");
		String sql="select * from course where courseId=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,courseId);
		rs=pstmt.executeQuery();
		while(rs.next()) {
	%>
	<div class="container">
		<div class="row">
				<div class="col-md-6" align="left">
					<img src="./resources/images/<%=rs.getString("filename")%>" style="width:80%" align="left"/>
				</div>
			<div class="col-md-6">
				<h3><b><%=rs.getString("name")%></b></h3>
				<p><%=rs.getString("description")%>
				<p><b>주소 : </b><%=rs.getString("location")%>
				<p><b>영업 시간 : </b><%=rs.getString("openingTime")%>
				<p><b>산책 시간 : </b><%=rs.getString("walkingTime")%>
				<p><b>대표자 연락처 : </b><%=rs.getString("leaderNumber")%>
				<p><b>입장료 : </b><%=rs.getString("price")%>원
				<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("courseId")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">같이 산책하기 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
					<a href="courses.jsp" class="btn btn-secondary">산책 코스 목록 &raquo;</a>
				   </form>
			</div>
			<%
				}
			%>
			<%
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>