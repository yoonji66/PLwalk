<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<script type="text/javascript" src="resources/js/validation.js"></script>
	<title>산책 코스 등록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>'/>
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">산책 코스 등록</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right">
			<a href="?language=ko">한국어</a>|<a href="?language=en">English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>
		<form name="newCourse" action="processAddCourse.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="courseId"/></label>
				<div class="col-sm-3">
					<input type="text" id="courseId" name="courseId" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name"/></label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="location"/></label>
				<div class="col-sm-3">
					<input type="text" name="location" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description"/></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="openingTime"/></label>
				<div class="col-sm-3">
					<input type="text" id="openingTime" name="openingTime" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="price"/></label>
				<div class="col-sm-3">
					<input type="text" id="price" name="price" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="walkingTime"/></label>
				<div class="col-sm-3">
					<input type="text" id="walkingTime" name="walkingTime" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="leaderNumber"/></label>
				<div class="col-sm-3">
					<input type="text" id="leaderNumber" name="leaderNumber" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="courseImage"/></label>
				<div class="col-sm-5">
					<input type="file" name="courseImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value=<fmt:message key="button"/> onclick="CheckAddCourse()">
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
</body>
</html>