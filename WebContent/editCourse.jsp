<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<title>코스 편집</title>
	<script type="text/javascript">
		function deleteConfirm(id) {
			if(confirm("해당 산책 코스를 삭제합니다!!")==true)
				location.href="./deleteCourse.jsp?id="+id;
			else
				return;
		}
	</script>
</head>
<%
	String edit=request.getParameter("edit");
%>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">코스 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
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
				<img src="resources/images/<%=rs.getString("filename")%>" style="width:10%" align="left"/>
				<h3><%=rs.getString("name")%>(<%=rs.getString("location")%>)</h3>
				<div><%=rs.getString("description")%></div>
				<p><%=rs.getString("walkingTime")%> | <%=rs.getString("leaderNumber")%>	| <%=rs.getString("price")%>원
				<p>
				<%
					if(edit.equals("update")) {
				%>
				<a href="./updateCourse.jsp?id=<%=rs.getString("courseId")%>" class="btn btn-success" role="button">수정&raquo;</a>
				<%
					}
					else if(edit.equals("delete")) {
				%>
				<a href="#" onclick="deleteConfirm('<%=rs.getString("courseId")%>')" class="btn btn-danger" role="button">삭제&raquo;</a>
				<%
					}
				%>
				<hr>
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
		<hr>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>