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
	if(course==null) {
		response.sendRedirect("exceptionNoCourseId.jsp");
		return;
	}
	
	ArrayList<Course> coursesList=dao.getAllCourses();
	Course courses=new Course();
	for(int i=0;i<coursesList.size();i++) {
		courses=coursesList.get(i);
		if(courses.getCourseId().equals(id))
			break;
	}
	
	ArrayList<Course> list=(ArrayList<Course>)session.getAttribute("cartlist");
	if(list==null) {
		list=new ArrayList<Course>();
		session.setAttribute("cartlist",list);
	}
	
	int count=0;
	Course coursesQuantity=new Course();
	for(int i=0;i<list.size();i++) {
		coursesQuantity=list.get(i);
		if(coursesQuantity.getCourseId().equals(id)) {
			count++;
			coursesQuantity.setQuantity(coursesQuantity.getQuantity()+1);
		}
	}
	
	if(count==0) {
		courses.setQuantity(1);
		list.add(courses);
	}
	
	response.sendRedirect("course.jsp?id="+id);
	return;
%>