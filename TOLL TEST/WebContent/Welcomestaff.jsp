<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Welcome Staff</title>
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

		<div class="w3-row">

			<div class="w3-col m3">

				<div class="w3-card w3-round w3-white">
					<div class="w3-container">
						<h4 class="w3-center">My Profile</h4>
						<p class="w3-center">
							<img src="/w3images/avatar3.png" class="w3-circle"
								style="height: 106px; width: 106px" alt="Avatar">
						</p>
						<hr>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							${name}
						</p>
						<p>
							<i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>
							EMPLOYEE,JS TOLLS
						</p>
						<p>
							<i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
							BANGLORE,INDIA
						</p>
						<p>
							<i
								class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
							April 1, 1988
						</p>
					</div>
				</div>
				<br>
				<div>
					<center>
						<form action="Logout.jsp">
							<input type="submit" class="w3-button w3-theme" value="LOGOUT">
								</form>
					</center>
0				</div>






				<!-- End Left Column -->
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-teal">
							<div class="w3-container w3-padding">
								<h6 class="w3-opacity">CLICK HERE TO ADD ENTRIES</h6>
								<a href="Addreciept.jsp" button type="button"
									class="w3-button w3-theme"><i class="fa fa-pencil"></i> ADD</a>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br> <br> <br>

				<div class="w3-col m7">
					<div class="w3-row-padding">
						<div class="w3-col m12">
							<div class="w3-card w3-round w3-teal">
								<div class="w3-container w3-padding">
									<h6 class="w3-opacity">CLICK HERE TO CHECKOUT ENTERED
										VEHICLES</h6>
									<a href="Viewsummary.jsp" button type="button"
										class="w3-button w3-theme"><i class="fa fa-pencil"></i>CHECK</a>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>






			</div>



		</div>


	</div>
	<br>







</body>
</html>
