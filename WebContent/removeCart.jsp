<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.Course"%>
<%@page import="dao.CourseRepository"%>

<%
	String id=request.getParameter("id");
	if(id==null || id.trim().equals("")) {
		response.sendRedirect("courses.jsp");
		return;
	}
	
	CourseRepository dao=CourseRepository.getInstance();
	
	Course course=dao.getCourseById(id);
	if(course==null)
		response.sendRedirect("exceptionNoCourseId.jsp");

	ArrayList<Course> cartList=(ArrayList<Course>)session.getAttribute("cartlist");
	Course coursesQuantity=new Course();
	for(int i=0;i<cartList.size();i++) {
		coursesQuantity=cartList.get(i);
		if(coursesQuantity.getCourseId().equals(id))
			cartList.remove(coursesQuantity);
	}

	response.sendRedirect("cart.jsp");
%>