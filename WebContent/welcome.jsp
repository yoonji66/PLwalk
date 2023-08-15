<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Date"%>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<title>Welcome</title>
</head>

<body>
	<%@include file="menu.jsp"%>
	<%!
		String greeting="(welcome.jsp에 프로젝트명 입력하기)";
		String tagline="산책 코스 공유 사이트에 오신 것을 환영합니다!";
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3><%=tagline%></h3>
				<%
					response.setIntHeader("Refresh",10);
					Date day=new java.util.Date();
					String am_pm;
					int hour=day.getHours(), minute=day.getMinutes(), second=day.getSeconds();
				
					if(hour/12==0)
						am_pm="AM";
					else {
						am_pm="PM";
						hour-=12;
					}
					String CT=hour+":"+minute+":"+second+" "+am_pm;
					out.println("현재 접속 시각: "+CT+"\n");
				%>
				<%@include file="footer.jsp"%>
			</div>
		</div>
	</main>
</body>
</html>