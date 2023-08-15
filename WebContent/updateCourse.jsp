<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<title>코스 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">코스 수정</h1>
		</div>
	</div>
	<%@include file="dbconn.jsp"%>
	<%
		String centerId=request.getParameter("id");
	
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from course where courseId=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,centerId);
		rs=pstmt.executeQuery();
		if(rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<img src="./resources/images/<%=rs.getString("filename")%>" alt="image" style="width:50%" align="left"/>
			</div>
			<div class="col-md-3">
				<form name="newCourse" action="./processUpdateCourse.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<input type="hidden" name="originalId" class="form-control" value='<%=rs.getString("courseId")%>'>
					<div class="form-group row">
						<div class="form-group row">
							<label class="col-lg-8">코스 식별 코드</label>
							<div class="col-lg-8">
								<input type="text" id="courseId" name="courseId" class="form-control" value='<%=rs.getString("courseId")%>'>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">코스명</label>
							<div class="col-lg-8">
								<input type="text" name="name" class="form-control" value="<%=rs.getString("name")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">주소</label>
							<div class="col-lg-8">
								<input type="text" name="location" class="form-control" value="<%=rs.getString("location")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">상세 설명</label>
							<div class="col-lg-12">
								<textarea name="description" cols="100" rows="5" class="form-control"><%=rs.getString("description")%></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">개장 시간</label>
							<div class="col-lg-8">
								<input type="text" id="openingTime" name="openingTime" class="form-control" value="<%=rs.getString("openingTime")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">입장료</label>
							<div class="col-lg-8">
								<input type="text" name="price" id="price" class="form-control"  value="<%=rs.getString("price")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">산책 시간</label>
							<div class="col-lg-8">
								<input type="text" id="walkingTime" name="walkingTime" class="form-control" value="<%=rs.getString("walkingTime")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">대표자 연락처</label>
							<div class="col-lg-8">
								<input type="text" name="leaderNumber" id="leaderNumber" class="form-control" value="<%=rs.getString("leaderNumber")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-lg-8">이미지</label>
							<div class="col-lg-8">
								<input type="file" name="courseImage" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-lg-offset-2 col-lg-10">
								<input type="submit" class="btn btn-primary" value="수정">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
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
</body>
</html>