<%@page contentType="text/html; charset=utf-8"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@include file="dbconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	String filename="";
	String realFolder=C:\Users\yoonji\Desktop\2022\2학기\지능웹설계\프로젝트\walk\WebContent\resources\images";	//웹 애플리케이션상의 절대경로
	int maxSize=5*1024*1024;		//최대 업로드될 파일의 크기 5MB
	String encType="utf-8";			//인코딩 유형

	MultipartRequest multi=new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());

	String originalId=multi.getParameter("originalId");
	String courseId=multi.getParameter("courseId");
	String name=multi.getParameter("name");
	String location=multi.getParameter("location");
	String description=multi.getParameter("description");
	String openingTime=multi.getParameter("openingTime");
	String price=multi.getParameter("price");
	String walkingTime=multi.getParameter("walkingTime");
	String leaderNumber=multi.getParameter("leaderNumber");

	int Price=0;

	if(price.isEmpty())
		Price=0;
	else
		Price=Integer.valueOf(price);

	Enumeration files=multi.getFileNames();
	String fname=(String)files.nextElement();
	String fileName=multi.getFilesystemName(fname);

	PreparedStatement pstmt=null;
	ResultSet rs=null;

	String sql="select * from course where courseId=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,originalId);
	rs=pstmt.executeQuery();

	if(rs.next()) {
		if(fileName!=null) {
			sql="UPDATE course set courseId=?,name=?,location=?,description=?,openingTime=?,price=?,walkingTime=?,leaderNumber=?,filename=? WHERE courseId=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,courseId);
			pstmt.setString(2,name);
			pstmt.setString(3,location);
			pstmt.setString(4,description);
			pstmt.setString(5,openingTime);
			pstmt.setString(6,price);
			pstmt.setString(7,walkingTime);
			pstmt.setString(8,leaderNumber);
			pstmt.setString(9,fileName);
			pstmt.setString(10,originalId);
			pstmt.executeUpdate();
		}
		else {
			sql="UPDATE course set courseId=?,name=?,location=?,description=?,openingTime=?,price=?,walkingTime=?,leaderNumber=? WHERE courseId=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,courseId);
			pstmt.setString(2,name);
			pstmt.setString(3,location);
			pstmt.setString(4,description);
			pstmt.setString(5,openingTime);
			pstmt.setString(6,price);
			pstmt.setString(7,walkingTime);
			pstmt.setString(8,leaderNumber);
			pstmt.setString(9,originalId);
			pstmt.executeUpdate();
		}
	}
	if(rs!=null)
		rs.close();
	if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
		
	response.sendRedirect("editCourse.jsp?edit=update");
%>