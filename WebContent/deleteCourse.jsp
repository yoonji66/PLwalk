<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<%@include file="dbconn.jsp"%>
<%
	String courseId=request.getParameter("id");
	
	String sql="select * from course";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();

	if(rs.next()) {
		sql="delete from course where courseId=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,courseId);
		pstmt.executeUpdate();
	}
	else
		out.println("일치하는 산책 코스가 없습니다.");
	
	if(rs!=null)
		rs.close();
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
		
	response.sendRedirect("editCourse.jsp?edit=delete");
%>