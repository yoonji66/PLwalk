<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="dto.Course"%>
<%@page import="dao.CourseRepository"%>

<%
	request.setCharacterEncoding("UTF-8");
	
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
			if(n.equals("Reservation_reservatingDate"))
				reservation_reservatingDate=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
			if(n.equals("Reservation_contact"))
				reservation_contact=URLDecoder.decode((thisCookie.getValue()),"UTF-8");
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<meta charset="UTF-8">
	<title>예약 정보</title>
</head>
<body>
	<%@include file="menu.jsp"%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">예약 정보</h1>
		</div>
	</div>
	
	<div class="container col-8 alert alert-info">
		<div class="text-center">
			<h1>영수증</h1>
		</div>
		<div class="row justify-content-between">
			<div class="col-4" align="left">
				<br> 성명: <%out.println(reservation_name);%>
				<br> 연락처: <%out.println(reservation_contact);%>
				<br>
			</div>
			<div class="col-4" align="right">
				<p><em>예약일: <%out.println(reservation_reservatingDate);%></em>
			</div>
		</div>
		<div>
			<table class="table table-hover">
				<tr>
					<th class="text-center">산책 코스</th>
					<th class="text-center">인원 수</th>
					<th class="text-center">입장료</th>
					<th class="text-center">소계</th>
				</tr>
				<%
					int sum=0;
					ArrayList<Course> cartList=(ArrayList<Course>)session.getAttribute("cartlist");
					if(cartList==null)
						cartList=new ArrayList<Course>();
					for(int i=0;i<cartList.size();i++) {
						Course course=cartList.get(i);
						int total=course.getPrice()*course.getQuantity();
						sum+=total;
				%>
				<tr>
					<td class="text-center"><%=course.getName()%></td>
					<td class="text-center"><%=course.getQuantity()%></td>
					<td class="text-center"><%=course.getPrice()%>원</td>
					<td class="text-center"><%=total%>원</td>
				</tr>
				<%}%>
				<tr>
					<td></td>
					<td></td>
					<td class="text-right"><strong>총액: </strong></td>
					<td class="text-center text-danger"><strong><%=sum%>원</strong></td>
				</tr>
			</table>
			
			<a href="./reservationInfo.jsp?cartId=<%=reservation_cartId%>" class="btn btn-secondary" role="button">이전</a>
			<a href="./thankReservation.jsp" class="btn btn-success" role="button">예약 완료</a>
			<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button">취소</a>
		</div>
	</div>
</body>
</html>