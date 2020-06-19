<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>WELCOME ADMIN</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Times New Roman", Times, serif;
}
</style>
<body class="w3-theme-l5">
	<%
		response.setHeader("Cache-Control", "no-cache ,no-store ,must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",-1);
		if (session.getAttribute("name") == null) {
			response.sendRedirect("loginn.jsp");
		}
	%>


	<div class="w3-top">
		<div class="w3-bar w3-theme-d2 w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2 w3-teal"
				href="javascript:void(0);"><i class="fa fa-bars"></i></a> <a
				href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i
				class="fa fa-home w3-margin-right"></i>HOME</a>


		</div>
	</div>
	<a href="#"
		class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white"
		title="My Account"> <img src="/w3images/avatar2.png"
		class="w3-circle" style="height: 23px; width: 23px" alt="Avatar">
	</a>
	</div>
	</div>



		<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- Profile -->
				<div class="w3-card w3-round w3-white">
					<div class="w3-container">
						<h4 class="w3-center">My Profile</h4>
						<p class="w3-center">
							<img src="https://www.iconfinder.com/icons/299106/profile_icon"
								class="w3-circle" style="height: 106px; width: 106px"
								alt="Avatar">
						</p>
						<hr>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							ADMIN,JS TOLLS
						</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
							BANGLORE,INDIA
						</p>
						<p>
							<i
								class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
							JUNE 20, 1988
						</p>
					</div>
				</div>
				<br>
				<div>
					<center>
						<form action="Logout.jsp">
							<input type="submit" class="w3-button w3-theme" value="LOGOUT" />
						</form>
					</center>
				</div>
				<!-- End Left Column -->
			</div>
			<!-- Middle Column -->
			<div class="w3-col m7">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-teal">
							<div class="w3-container w3-padding">
								<h4 class="w3-opacity">
									<b>SET TRIP COSTS</b>
								</h4>

								<a href="Settripcosts.jsp" button type="button"
									class="w3-button w3-theme"><i class="fa fa-pencil"></i>SET</a>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="w3-col m7">
					<div class="w3-row-padding">
						<div class="w3-col m12">
							<div class="w3-card w3-round w3-teal">
								<div class="w3-container w3-padding">
									<h4 class="w3-opacity">
										<b>ADD EMPLOYEE</b>
									</h4>

									<a href="Addstaff.jsp" button type="button"
										class="w3-button w3-theme"><i class="fa fa-pencil"></i>ADD</a>
									</button>
								</div>
							</div>
						</div>
					</div>
					<br>
					<br>
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-teal">
							<div class="w3-container w3-padding">
								<h4 class="w3-opacity">
									<b>ASSIGN SHIFTS</b>
								</h4>

								<a href="Setshifts.jsp" button type="button"
									class="w3-button w3-theme"><i class="fa fa-pencil"></i>ASSIGN</a>
								</button>
							</div>
						</div>
					</div>
				</div><br><br>
				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-teal">
							<div class="w3-container w3-padding">
								<h4 class="w3-opacity">
									<b>VIEW SUMMARY</b>
								</h4>

								<a href="test.jsp" button type="button"
									class="w3-button w3-theme"><i class="fa fa-pencil"></i>VIEW</a>
								</button>
							</div>
						</div>
					</div>
				</div><br><br>
				
				</div>
			</div>
		</div>
		<br>
</body>
</html>
