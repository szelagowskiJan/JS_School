
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head class="w3-display-container w3-content w3-wide"
	style="max-width:1500px;" id="home">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<h1>
	<b>JS</b> <span class="w3-hide-small w3-text-black">School</span>
</h1>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
			<a href="menu1#home" class="w3-bar-item w3-button"><b>JS</b>
				School</a>
		</div>
	</div>

	<div>
		<h2>Course pupil list</h2>
		<table border=1 class=" w3-margin-top w3-center">
			<tr class=" w3-margin-top w3-center">
				<th>Id</th>
				<th>name</th>
				<th class=" w3-margin-top w3-center">email</th>
				<th>numberPhone</th>
				<th class=" w3-margin-top w3-center">comment</th>

			</tr>
			<c:forEach items="${pupils}" var="pupil">
				<tr class=" w3-margin-top w3-center">
					<td>${pupil.id}</td>
					<td>${pupil.name}</td>

					<td>${pupil.email}</td>
					<td>${pupil.numberPhone}</td>
					<td>${pupil.comment}</td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>