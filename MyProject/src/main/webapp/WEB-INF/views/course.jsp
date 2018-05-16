
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<head class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
    <h1><b>JS</b> <span class="w3-hide-small w3-text-black">School</span></h1>
 


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


	<div class="w3-top">
		<div class="w3-bar w3-white w3-wide w3-padding w3-card">
			<a href="menu1#home" class="w3-bar-item w3-button"><b>JS</b>
				School</a>
		</div>
	</div>

	<div class=" w3-margin-top w3-center">
		<h1 class="w3-xxxlarge w3-text-black">
			<span class=" w3-white "><p>Start of the course</p> </span>
		</h1>
	</div>

	<div class=" w3-margin-top w3-center">
		<h1 class="w3-xxxlarge w3-text-black">
			<span class=" w3-white "><p id="timeToCourse"></p> </span>
		</h1>
	</div>

	<div class=" w3-margin-top w3-center">
		<h1 class="w3-xxxlarge w3-text-black">
			<span class=" w3-white ">
			<p>Sign up today</p> </span>
		</h1>
	</div>



<div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Personal details</h3>
    <p>Provide your personal details.</p>
    <form action="successCourse" target="_blank" method="post" >
    <input class="w3-input" type="hidden" required id="reservation" name="reservation" value="">
      <input class="w3-input" type="text" placeholder="Name" required name="name">
      <input class="w3-input w3-section" type="text" placeholder="Email" required name="email">
      <input class="w3-input w3-section" type="text" placeholder="Phone" required name="numberPhone">
      <input class="w3-input w3-section" type="text" placeholder="Comment" required name="comment">
      <input class=" w3-section" type="checkbox" required name="mail"> Notifications by mail?
      <br>
      <button class="w3-button w3-black w3-section" type="submit">
         SEND MESSAGE
      </button>
    </form>
  </div>


<div ><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6924.342122868775!2d20.707595937645316!3d52.15024306920391!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471949833bccae33%3A0x1fc34ceda37eb7c9!2sKwiatowa+14%2C+05-840+Brwin%C3%B3w!5e0!3m2!1sen!2spl!4v1521179690404" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe></div>

<footer class="w3-center w3-black w3-padding-16">
  <p>Author: <a  target="_blank" class="w3-text-green">Jan Szelągowski</a></p>
</footer>

	<script>
		// Set the date we're counting down to
		var countDownDate = new Date("July 28, 2018 16:00:00").getTime();

		// Update the count down every 1 second
		var x = setInterval(
				function() {

					// Get todays date and time
					var now = new Date().getTime();

					// Find the distance between now an the count down date
					var distance = countDownDate - now;

					// Time calculations for days, hours, minutes and seconds
					var days = Math.floor(distance / (1000 * 60 * 60 * 24));
					var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
							/ (1000 * 60 * 60));
					var minutes = Math.floor((distance % (1000 * 60 * 60))
							/ (1000 * 60));
					var seconds = Math.floor((distance % (1000 * 60)) / 1000);

					// Display the result in the element with id="timeToCourse"
					document.getElementById("timeToCourse").innerHTML = days
							+ "d " + hours + "h " + minutes + "m " + seconds
							+ "s ";

					// If the count down is finished, write some text
					if (distance < 0) {
						clearInterval(x);
						document.getElementById("timeToCourse").innerHTML = "Start Course";
					}
				}, 1000);
	</script>


</body>
</html>