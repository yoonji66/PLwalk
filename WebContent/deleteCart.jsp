<%@page contentType="text/html; charset=utf-8"%>
<%@page import="dto.Course"%>
<%@page import="dao.CourseRepository"%>

<%
	String id=request.getParameter("cartId");
	if(id==null || id.trim().equals("")) {
		response.sendRedirect("cart.jsp");
		return;
	}
	
	session.invalidate();

	response.sendRedirect("cart.jsp");
%>