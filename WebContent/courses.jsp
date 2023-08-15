<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<title>산책 코스 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">산책 코스 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="left">
			<%@include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				String sql="select * from course";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col-md-12" align="left">
				<img src="./resources/images/<%=rs.getString("filename")%>" style="width:10%" align="left"/>
				<h3><%=rs.getString("name")%>(<%=rs.getString("location")%>)</h3>
				<div><%=rs.getString("description")%></div>
				<div align="right">
					<a href="course.jsp?id=<%=rs.getString("courseId")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
				</div>
				<p><%=rs.getString("walkingTime")%> | <%=rs.getString("leaderNumber")%>	| <%=rs.getString("price")%>원<hr>
			</div>
			<%
				}
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
			%>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>