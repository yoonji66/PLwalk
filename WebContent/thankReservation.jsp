<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.net.URLDecoder"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String cartId=session.getId();
	String reservation_cartId="";
	String reservation_name="";
	String reservation_reservatingDate="";
	String reservation_contact="";
	
	Cookie cookies[]=request.getCookies();
	
	if(cookies!=null) {
		for(int i=0;i<cookies.length;i++) {
			Cookie thisCookie=cookies[i];
			String n=thisCookie.getName();
			
			if(n.equals("Reservation_cartId"))
				reservation_cartId=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
			if(n.equals("Reservation_name"))
				reservation_name=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
			if(n.equals("Reservation_contact"))
				reservation_contact=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
			if(n.equals("Reservation_reservatingDate"))
				reservation_reservatingDate=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<meta charset="UTF-8">
	<title>예약 완료</title>
</head>
<body>
	<%@include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약 완료</h1>
		</div>
	</div>
	
	<div class="container">
		<h2 class="alert alert-danger">예약해주셔서 감사합니다.</h2>
		<p> 산책은 <%out.println(reservation_reservatingDate);%>에 진행될 예정입니다! !
		<p> 예약번호:<%out.println(reservation_cartId);%>
	</div>
	
	<div class="container">
		<p> <a href="./courses.jsp" class="btn btn-secondary">&laquo; 산책 코스 목록</a>
	</div>
</body>
</html>
<%
	session.invalidate();
	
	for(int i=0;i<cookies.length;i++) {
		Cookie thisCookie=cookies[i];
		String n=thisCookie.getName();
		
		if(n.equals("Reservation_cartId"))
			thisCookie.setMaxAge(0);
		if(n.equals("Reservation_name"))
			thisCookie.setMaxAge(0);
		if(n.equals("Reservation_reservatingDate"))
			thisCookie.setMaxAge(0);
		if(n.equals("Reservation_contact"))
			thisCookie.setMaxAge(0);
	}
%>