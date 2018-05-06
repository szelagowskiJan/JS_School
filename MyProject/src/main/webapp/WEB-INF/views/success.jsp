
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<!-- Header -->
<head class="w3-display-container w3-content w3-wide"
	style="max-width:1500px;" id="home">
<h1>
	<b>JS</b> <span class="w3-hide-small w3-text-black">School</span>
</h1>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
			<a href="menu1#home" class="w3-bar-item w3-button"><b>JS</b>
				School</a>
		</div>
	</div>


	<div class="w3-content w3-padding" style="max-width: 1564px">

		<div class="w3-row-padding">
			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-display-container">
					<div class="w3-display-topleft w3-black w3-padding"></div>
					<img src="/school/w3images/conversation.jpg" alt="House"
						style="width: 100%">
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-display-container">
					<div class="w3-display-topleft w3-black w3-padding"></div>
					<img src="/school/w3images/colorkred.jpg" alt="House"
						style="width: 100%">
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-display-container">
					<div class="w3-display-topleft w3-black w3-padding"></div>
					<img src="/school/w3images/laptop.jpg" alt="House"
						style="width: 100%">
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom">
				<div class="w3-display-container">
					<div class="w3-display-topleft w3-black w3-padding"></div>
					<img src="/school/w3images/result.jpg" alt="House"
						style="width: 100%">
				</div>
			</div>
		</div>






		<div class="container ">
			<h2>Personal data</h2>
			<p>The reservation ended successfully. If you have entered
				correct personal details, you should get a message on your email</p>
			<table class="table table-condensed">
				<thead>
					<tr>
						<th class=" w3-margin-top w3-center">Name</th>
						<th class=" w3-margin-top w3-center">Email</th>
						<th class=" w3-margin-top w3-center">Phone</th>
						<th class=" w3-margin-top w3-center">Level</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class=" w3-margin-top w3-center">${name}</td>
						<td class=" w3-margin-top w3-center">${email}</td>
						<td class=" w3-margin-top w3-center">${numberPhone}</td>
						<td class=" w3-margin-top w3-center">${level}</td>
					</tr>

				</tbody>
			</table>
		</div>



		<div class="w3-display-block-level w3-margin-top w3-center">
			<h1 class="w3-xxxlarge w3-text-white">
				<span class="w3-paddingw3-white w3-opacity-min"><p>JS
						School</p> </span>
			</h1>
		</div>

		<div class="w3-display-block-level w3-margin-top w3-center">
			<h1 class="w3-xxxlarge w3-text-white">
				<span class="w3-padding w3-opacity-min"><p>JS School</p> </span>
			</h1>
		</div>


		<div class="w3-display-block-level w3-margin-top w3-center">
			<h1 class="w3-xxxlarge w3-text-white">
				<span class="w3-padding  w3-opacity-min"><p>JS School</p> </span>
			</h1>
		</div>


		<div>
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6924.342122868775!2d20.707595937645316!3d52.15024306920391!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471949833bccae33%3A0x1fc34ceda37eb7c9!2sKwiatowa+14%2C+05-840+Brwin%C3%B3w!5e0!3m2!1sen!2spl!4v1521179690404"
				width="100%" height="250" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>



		<footer class="w3-center w3-black w3-padding-16">
			<p>
				Author: <a target="_blank" class="w3-text-green">Jan Szelągowski</a>
			</p>
		</footer>
</body>
</html>