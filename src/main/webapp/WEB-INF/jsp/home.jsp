<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}
.back-video{
position:absolute;
right:0;
left:6;
bottom:0;
z-index:-10;



}

@media(min-aspect-ratio:16/9){
.back-video{
width: 100%;
height: 700px;}
}
@media(max-aspect-ratio:16/9){
.back-video{
width: 100%;
height: 700px;}
}


.flip-card {
  background-color: transparent;
  width: 330px;
  height: 330px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}


.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: black;
  color: white;
  transform: rotateY(180deg);
}
</style>


<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>APR Real Estate</title>
</head>
<body style="text-align: center; background-color: grey">
	<%@include file="navigation.jsp"%>
	<h4 style="color: red">${loginstatus}</h4>
	<h1 style="color: red">${message1}</h1>
	<h2>${message2}</h2>
	<!-- Slide Show -->
	<iframe width="1000"  height="1000" plays-inline src="https://www.youtube.com/embed/mgulkcaPMCY?playlist=mgulkcaPMCY&controls=0&autoplay=1&mute=1&loop=1" class="back-video">
		</iframe>
		<br><br>
		<!-- Slide Show 
	<section>
<img src="file:///C:/Users/abhishekkumar/eclipse-workspace/Real-Estate-Application/src/main/webapp/WEB-INF/lib/one.jpg">
		<img class="mySlides"
			src="Real-Estate-Application/src/main/webapp/WEB-INF/image/one.jpg"
			style="width: 100%; height: 400px"> <img class="mySlides"
			src="https://analyticsonline.in/blog/wp-content/uploads/2019/11/GUIDELINE-FOR-THE-REALESTATE-BEGIN-1024x597.jpg"
			style="width: 100%; height: 400px"> <img class="mySlides"
			src="https://www.shutterstock.com/image-photo/real-estate-agent-offer-house-260nw-363324191.jpg"
			style="width: 100%; height: 400px">
	</section>
-->

	<br>
	<div style="margin-top:450px">
		<center>
			<h2
				style="font-family: Arial, Helvetica, sans-serif; font-weight: bold;">ABOUT
				US</h2>
		</center>
		<center>
			<p style="color: goldenrod;">
				--------------------------------------------------&nbsp;<i
					style="font-size: 24px" class="fa">&#xf185;</i>&nbsp;---------------------------------------------------
			</p>
		</center>
		<center>
			<p
				style="color: goldenrod; font-family: Arial, Helvetica, sans-serif;">Introduction
				of APR Realtors</p>
		</center>
	</div>
	<br>
	<div class="col-sm-5" style="margin-left: 10px;">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4OCdIEp61z8f0USNWSVmlLcsIJdzMaRy_Sg&usqp=CAU"
			alt="" style="width: 400px; height: 400px;">

	</div>
	<p
		style="margin-top: -340px; margin-left: 550px; margin-right: 50px; text-align: justify; font-family: Arial, Helvetica, sans-serif; color: rgb(66, 64, 64);">
		At APR Realtors we build long-term relationships, which allow us to
		provide personalized, clear and considered advice on all areas of
		property in all key markets. We believe personal interaction is a
		crucial part of ensuring every client is matched to the property that
		suits their needs best – be it commercial or residential. We believe
		that inspired teams naturally provide excellent and dedicated client
		service. Therefore, we have created a workplace where opinions are
		respected, where everyone is invited to contribute to the success of
		our business and where they a��re rewarded for excellence. The result
		is that our people are more motivated, ensuring your experience with
		us is the best that it can be.<br>
		<br>APR Realtors key strategic business units are Residential &
		Commercial Advisory & growing team for over 100+ real estate
		specialists.<br>
		<br>
		<br>
		<br>
		<button type="button" class="btn btn-warning"
			style="background-color: goldenrod; color: aliceblue;">ABOUT
			US</button>
	</p>
	<br>
	<br>
	<br>
	<div>
		<center>
			<h2
				style="font-family: Arial, Helvetica, sans-serif; font-weight: bold;">AWARDS
				& RECOGNITION</h2>
		</center>
		<center>
			<p style="color: goldenrod;">
				--------------------------------------------------&nbsp;<i
					style="font-size: 24px" class="fa">&#xf185;</i>&nbsp;---------------------------------------------------
			</p>
		</center>
		<center>
			<p
				style="color: goldenrod; font-family: Arial, Helvetica, sans-serif;">Awards,
				Achievments & Recognitions of the APR Realtors</p>
		</center>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<center>
						<img src="https://www.xrbia.com/images/awards/5-b.jpg" alt="" class="w3-circle" style="width: 40%">
					</center>
					<br> <br>
					<center>
						<b><h5>Real Estate Awards</h5></b>
					</center>
					<center>
						<p style="font-size: small;">Emerging Realtors</p>
					</center>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<center>
						<img src="https://www.ambujaneotia.com/wp-content/uploads/2023/01/ET_2.jpg" alt="" class="w3-circle" style="width: 38%">
					</center>
					<br> <br>
					<center>
						<b><h5>Times Realty Icon 2021</h5></b>
					</center>
					<center>
						<p style="font-size: small;">Outstanding Sales & Marketing</p>
					</center>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<center>
						<img
							src="https://img.etb2bimg.com/files/cplogo_seo-1648626583.jpg"
							alt="" class="w3-circle" style="width: 100%">
					</center>
					<br> <br>
					<center>
						<b><h5>Realty Conclave</h5></b>
					</center>
					<center>
						<p style="font-size: small;">Best Sales Performance</p>
					</center>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="card">
				<div class="card-body">
					<center>
						<img
							src="https://globeeawards.com/wp-content/uploads/2022/06/Business-Awards-PNG.png"
							alt="" class="w3-circle" style="width: 50%">
					</center>
					<br> <br>
					<center>
						<b><h5>Business Excellence</h5></b>
					</center>
					<center>
						<p style="font-size: small;">Influential Leader In Commercial
							Sales</p>
					</center>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div>
		<center>
			<h2
				style="font-family: Arial, Helvetica, sans-serif; font-weight: bold;">PROUDLY
				ASSOCIATED WITH</h2>
		</center>
		<center>
			<p style="color: goldenrod;">
				--------------------------------------------------&nbsp;<i
					style="font-size: 24px" class="fa">&#xf185;</i>&nbsp;---------------------------------------------------
			</p>
		</center>
		<center>
			<p
				style="color: goldenrod; font-family: Arial, Helvetica, sans-serif;">Exclusive
				tie-ups with India's best developers</p>
		</center>
	</div>
	<img
		src="https://imgnew.outlookindia.com/uploadimage/library/16_9/16_9_5/Godrej_1642519690.jpg"
		alt="" style="height: 100px; width: 240px; margin-left: 100px;">
	<img src="https://www.abbreviations.com/images/11831_SBTL.png" alt=""
		style="height: 100px; width: 240px; margin-left: 100px;">
	<img
		src="https://thepropertytimes.in/wp-content/uploads/2020/01/Mahagun-India-1280x720.jpeg"
		alt="" style="height: 100px; width: 240px; margin-left: 100px;">
	<img src="https://image3.mouthshut.com/images/imagesp/l/925900133s.jpg"
		alt="" style="height: 100px; width: 240px; margin-left: 60px;">
	<br>
	<br>
	<div>
		<center>
			<h2
				style="font-family: Arial, Helvetica, sans-serif; font-weight: bold;">TRENDING
				PROJECTS</h2>
		</center>
		<center>
			<p style="color: goldenrod;">
				--------------------------------------------------&nbsp;<i
					style="font-size: 24px" class="fa">&#xf185;</i>&nbsp;---------------------------------------------------
			</p>
		</center>
		<center>
			<p
				style="color: goldenrod; font-family: Arial, Helvetica, sans-serif;">Best
				Projects Trending in VIZAG</p>
		</center>
	</div>
	<br>
	<br>
	<div class="row" style="margin-left:30px">
		<div class="col-sm-4">
			<!--  
                <div class="card"style="background-size: cover;background-color: black;">
                    <div class="card-body">
                        <center><img src="https://i.ibb.co/0fRS3fL/123122.png" alt=""></center>
                        <h3 style="color:gold">Galactic City</h3>
                        <p  style="color:white">IT / ITES Office Plots at Knowledge Park V, Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>
                    </div>
                </div>
              -->
			<div class="flip-card" style="background-size: cover;background-color: black;">
				<div class="flip-card-inner">
					<div class="flip-card-front"  style="background-color: black; width: 370px; height: 340px; padding-top: 10px ">
						<img src="https://i.ibb.co/0fRS3fL/123122.png" alt="Avatar"
							style="width: 330px; height: 280px; ">
							<h3 style="color:gold; margin-top:10px">Galactic City</h3>
					</div>
					<div class="flip-card-back">
						<h3 style="color:gold; margin-top:10px">Galactic City</h3>
						<p  style="color:white">IT / ITES Office Plots at Knowledge Park V,
						 Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
		<!--  
			<div class="card"
				style="background-size: cover; background-color: black;">
				<div class="card-body">
					<center>
						<img src="https://i.ibb.co/wZqbqwj/ysjeac.png" alt="">
					</center>
					<h3 style="color: gold">Galactic City</h3>
					<p style="color: white">IT / ITES Office Plots at Knowledge
						Park V, Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>

				</div>
			</div>
			-->
			<div class="flip-card" style="background-size: cover;background-color: black;">
				<div class="flip-card-inner">
					<div class="flip-card-front"  style="background-color: black; width: 370px; height: 340px; padding-top: 10px ">
						<img src="https://i.ibb.co/wZqbqwj/ysjeac.png" alt="Avatar"
							style="width: 330px; height: 280px; ">
							<h3 style="color:gold; margin-top:10px">Galactic City</h3>
					</div>
					<div class="flip-card-back">
						<h3 style="color:gold; margin-top:6px">Galactic City</h3>
						<p  style="color:white">IT / ITES Office Plots at Knowledge Park V,
						 Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
		<!--  
			<div class="card"
				style="background-size: cover; background-color: black;">
				<div class="card-body">
					<center>
						<img src="https://i.ibb.co/nBgCcKm/jddudhd.png" alt="">
					</center>
					<h3 style="color: gold">Galactic City</h3>
					<p style="color: white">IT / ITES Office Plots at Knowledge
						Park V, Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>
				</div>
			</div>
			-->
			<div class="flip-card" style="background-size: cover;background-color: black;">
				<div class="flip-card-inner">
					<div class="flip-card-front"  style="background-color: black; width: 370px; height: 340px; padding-top: 10px ">
						<img src="https://i.ibb.co/nBgCcKm/jddudhd.png" alt="Avatar"
							style="width: 330px; height: 280px; ">
							<h3 style="color:gold; margin-top:10px">Galactic City</h3>
					</div>
					<div class="flip-card-back">
						<h3 style="color:gold">Galactic City</h3>
						<p  style="color:white">IT / ITES Office Plots at Knowledge Park V,
						 Greater Noida - 120 Sq. Yds Plots Starting from 48 Lacs*</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<!-- Band Description -->
	<section class="w3-container w3-center w3-content"
		style="max-width: 600px">
		<h2 class="w3-wide">APR Real Estate</h2>
		<p class="w3-opacity">
			<i>We love APR </i>
		</p>
		<p class="w3-justify">
			At our Website you can get List of all property .<br>Our Company
			Provide Property for Rent and Sold also.
		</p>
	</section>
	<a onclick="document.getElementById('id01').style.display='block'"
		class="w3-button w3-bar-item" style="width: 150px;">Login</a>


	<div id="id01" class="modal">

		<form class="modal-content animate" action="processLogin"
			method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span> <img
					src="https://png.pngtree.com/png-vector/20191110/ourlarge/pngtree-avatar-icon-profile-icon-member-login-vector-isolated-png-image_1978396.jpg"
					alt="Avatar" class="avatar">
			</div>

			<div class="container">
				<label for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="pwd" required> 
				<br>
				<br>

				<button type="submit">Login</button>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>
	
	
<div id="id02" class="modal">

		<form class="modal-content animate" action="addUser"
			method="post">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span> 
			</div>

			<div class="container">
				<label for="uname"><b>Username</b></label> <input type="text"
					placeholder="Enter Username" name="uname" required> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="pwd" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" > <label
					for="role"><b>Role</b></label> <select name="role" id="status">
					<option value="Broker">Broker</option>
					<option value="Customer">Customer</option>
				</select><br>
				<br>

				<button type="submit">Register</button>
				
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id02').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw" style="color:red">If you have already account ?  <a onclick="document.getElementById('id02').style.display='none';document.getElementById('id01').style.display='block'"  class="w3-button w3-bar-item">Login here</a></span>
			</div>
		</form>
	</div>

	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


	<%@include file="footer.jsp"%>

	<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 1000);
}
</script>

</body>
</html>


<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>