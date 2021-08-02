<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Dashboard</title>
<style>
body {
	margin: 0px;
	padding: 0px;
	background-color: #1b203d;
	overflow: hidden;
	font-family: system-ui;
}

.clearfix {
	clear: both;
}

.logo {
	margin: 0px;
	margin-left: 28px;
	font-weight: bold;
	color: white;
	margin-bottom: 30px;
}

.logo span {
	color: #f7403b;
}

.sidenav {
	height: 100%;
	width: 300px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #272c4a;
	overflow: hidden;
	transition: 0.5s;
	padding-top: 30px;
}

.sidenav a {
	padding: 15px 8px 15px 32px;
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
	background-color: #1b203d;
}

.sidenav {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
	margin-left: 300px;
}

.head {
	padding: 20px;
}

.col-div-6 {
	width: 50%;
	float: left;
}

.profile {
	display: inline-block;
	float: right;
	width: 160px;
}

.pro-img {
	float: left;
	width: 40px;
	margin-top: 5px;
}

.profile p {
	color: white;
	font-weight: 500;
	margin-left: 55px;
	margin-top: 10px;
	font-size: 13.5px;
}

.profile p span {
	font-weight: 400;
	font-size: 12px;
	display: block;
	color: #8e8b8b;
}

.col-div-3 {
	width: 25%;
	float: left;
}

.box {
	width: 85%;
	height: 100px;
	background-color: #272c4a;
	margin-left: 10px;
	padding: 10px;
}

.box p {
	font-size: 35px;
	color: white;
	font-weight: bold;
	line-height: 30px;
	padding-left: 10px;
	margin-top: 20px;
	display: inline-block;
}

.box p span {
	font-size: 20px;
	font-weight: 400;
	color: #818181;
}

.box-icon {
	font-size: 40px !important;
	float: right;
	margin-top: 35px !important;
	color: #818181;
	padding-right: 10px;
}

.col-div-8 {
	width: 70%;
	float: left;
}

.col-div-4 {
	width: 30%;
	float: left;
}

.content-box {
	padding: 20px;
}

.content-box p {
	margin: 0px;
	font-size: 20px;
	color: #f7403b;
}

.content-box p span {
	float: right;
	background-color: #ddd;
	padding: 3px 10px;
	font-size: 15px;
}

.box-8, .box-4 {
	width: 95%;
	background-color: #272c4a;
	height: 330px;
}

.nav2 {
	display: none;
}

.box-8 {
	margin-left: 10px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	text-align: left;
	padding: 15px;
	color: #ddd;
	border-bottom: 1px solid #81818140;
}

.circle-wrap {
	margin: 50px auto;
	width: 150px;
	height: 150px;
	background: #e6e2e7;
	border-radius: 50%;
}

.circle-wrap .circle .mask, .circle-wrap .circle .fill {
	width: 150px;
	height: 150px;
	position: absolute;
	border-radius: 50%;
}

.circle-wrap .circle .mask {
	clip: rect(0px, 150px, 150px, 75px);
}

.circle-wrap .circle .mask .fill {
	clip: rect(0px, 75px, 150px, 0px);
	background-color: #f7403b;
}

.circle-wrap .circle .mask.full, .circle-wrap .circle .fill {
	animation: fill ease-in-out 3s;
	transform: rotate(126deg);
}

@
keyframes fill { 0% {
	transform: rotate(0deg);
}

100%
{
transform
:
 
rotate
(126deg);

            
}
}
.circle-wrap .inside-circle {
	width: 130px;
	height: 130px;
	border-radius: 50%;
	background: #fff;
	line-height: 130px;
	text-align: center;
	margin-top: 10px;
	margin-left: 10px;
	position: absolute;
	z-index: 100;
	font-weight: 700;
	font-size: 2em;
}
</style>
</head>
<body>
	<div id="mySidenav" class="sidenav">
		<p class="logo">
			<span>JK</span>-Admin
		</p>
		<a href="dashborad.jsp" class="icon-a"><i
			class="fa fa-dashboard icons"></i> &nbsp;&nbsp;Dashboard</a> <a
			href="book.html" class="icon-a"><i class="fa fa-book icons"></i>
			&nbsp;&nbsp;Books</a> <a href="author.jsp" class="icon-a"><i
			class="fa fa-users icons"></i> &nbsp;&nbsp;Author</a> <a
			href="category.jsp" class="icon-a"><i
			class="fa fa-list-alt icons"></i> &nbsp;&nbsp;Categorys</a> <a
			href="user.html" class="icon-a"><i
			class="fa fa-user-circle icons"></i> &nbsp;&nbsp;User</a> <a
			href="profile.html" class="icon-a"><i class="fa fa-user icons"></i>
			&nbsp;&nbsp;Profile</a> <a href="login.html" class="icon-a"><i
			class="fa fa-sign-out icons"></i> &nbsp;&nbsp;Sign out</a>

	</div>
	<div id="main">

		<div class="head">
			<div class="col-div-6">
				<span style="font-size: 30px; cursor: pointer; color: white;"
					class="nav">&#9776; Dashboard</span> <span
					style="font-size: 30px; cursor: pointer; color: white;"
					class="nav2">&#9776; Dashboard</span>
			</div>

			<div class="col-div-6">
				<div class="profile">

					<img src="Jatender Photo.jpeg" class="pro-img" />
					<p>
						Jatender Khatri <span>RB / CS Engineer</span>
					</p>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>

		<div class="clearfix"></div>
		<br />

		<div class="col-div-3">
			<div class="box">
				<p>
					98<br />
					<span>Total Books</span>
				</p>
				<i class="fa fa-book box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p>
					34<br />
					<span>Rent Books</span>
				</p>
				<i class="fa fa-shopping-cart box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p>
					09<br />
					<span>Pending</span>
				</p>
				<i class="fa fa-pause box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p>
					05<br />
					<span>Return Books</span>
				</p>
				<i class="fa fa-retweet box-icon"></i>
			</div>
		</div>
		<div class="clearfix"></div>
		<br />
		<br />
		<div class="col-div-8">
			<div class="box-8">
				<div class="content-box">
					<p>
						Top Selling Books <span>See All</span>
					</p>
					<br />
					<table>
						<tr>
							<th>Name</th>
							<th>Author</th>
							<th>Country</th>
						</tr>
						<tr>
							<td>Core Java An Integrated Approach (Black Book)</td>
							<td>Dr. R. Nageswara Rao</td>
							<td>Germany</td>
						</tr>
						<tr>
							<td>C++ All-in-One For Dummies, 3rd Edition</td>
							<td>John Paul Mueller</td>
							<td>Mexico</td>
						</tr>
						<tr>
							<td>An Integrated Course in Electrical Engineering</td>
							<td>J. B. Gupta</td>
							<td>Austria</td>
						</tr>
						<tr>
							<td>The Guns of August</td>
							<td>Barbara W. Tuchman</td>
							<td>UK</td>
						</tr>


					</table>
				</div>
			</div>
		</div>

		<div class="col-div-4">
			<div class="box-4">
				<div class="content-box">
					<p>
						Total Rent <span>See All</span>
					</p>

					<div class="circle-wrap">
						<div class="circle">
							<div class="mask full">
								<div class="fill"></div>
							</div>
							<div class="mask half">
								<div class="fill"></div>
							</div>
							<div class="inside-circle">34.6%</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(".nav").click(function() {
			$("#mySidenav").css('width', '70px');
			$("#main").css('margin-left', '70px');
			$(".logo").css('visibility', 'hidden');
			$(".logo span").css('visibility', 'visible');
			$(".logo span").css('margin-left', '-10px');
			$(".icon-a").css('visibility', 'hidden');
			$(".icons").css('visibility', 'visible');
			$(".icons").css('margin-left', '-8px');
			$(".nav").css('display', 'none');
			$(".nav2").css('display', 'block');
		});

		$(".nav2").click(function() {
			$("#mySidenav").css('width', '300px');
			$("#main").css('margin-left', '300px');
			$(".logo").css('visibility', 'visible');
			$(".icon-a").css('visibility', 'visible');
			$(".icons").css('visibility', 'visible');
			$(".nav").css('display', 'block');
			$(".nav2").css('display', 'none');
		});
	</script>
</body>
</html>