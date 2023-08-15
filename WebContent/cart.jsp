<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Course"%>
<%@page import="dao.CourseRepository"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<%String cartId=session.getId();%>
	<meta charset="UTF-8">
	<title>장바구니</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">장바구니</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="./reservationInfo.jsp?cartId=<%=cartId%>" class="btn btn-success">예약하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>코스</th>
					<th>가격</th>
					<th>인원</th>
					<th>연락처</th>
					<th>소계</th>
					<th>비고</th>
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
					<td><%=course.getName()%></td>
					<td><%=course.getPrice()%>원</td>
					<td><%=course.getQuantity()%></td>
					<td><%=course.getLeaderNumber()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=course.getCourseId()%>" class="badge badge-danger">삭제</a></td>
				</tr>
				<%}%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
		</div>
		<hr>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>