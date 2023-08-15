<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	Cookie cartId=new Cookie("Reservation_cartId", URLEncoder.encode(request.getParameter("cartId"),"UTF-8"));
	Cookie name=new Cookie("Reservation_name", URLEncoder.encode(request.getParameter("name"),"UTF-8"));
	Cookie reservatingDate=new Cookie("Reservation_reservatingDate", URLEncoder.encode(request.getParameter("reservatingDate"),"UTF-8"));
	Cookie contact=new Cookie("Reservation_contact", URLEncoder.encode(request.getParameter("contact"),"UTF-8"));

	cartId.setMaxAge(24*60*60);
	name.setMaxAge(24*60*60);
	reservatingDate.setMaxAge(24*60*60);
	contact.setMaxAge(24*60*60);
	
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(reservatingDate);
	response.addCookie(contact);

	response.sendRedirect("orderConfirmation.jsp");
%>