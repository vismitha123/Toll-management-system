<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login Page</title>
<style>
html, body {
	padding: 0;
	margin: 0;
	width: 100%;
	height: 100%;
	font-family: "Times New Roman", Times, serif;
	background: #000000;
}

.logincontent {
	position: fixed;
	width: 360px;
	height: 300px;
	top: 50%;
	left: 50%;
	margin-top: -150px;
	margin-left: -175px;
	background: #008080;
	padding-top: 10px;
}

.loginheading {
	border-bottom: solid 1px #ECF2F5;
	padding-left: 18px;
	padding-bottom: 10px;
	color: #ffffff;
	font-size: 20px;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
}

label {
	color: #ffffff;
	display: inline-block;
	margin-left: 18px;
	padding-top: 10px;
	font-size: 15px;
}

input[type=text], input[type=password] {
	font-size: 14px;
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 300px;
	height: 35px;
	border: 1px solid #ccc;
	border-radius: 2px;
	box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f5f5;
	font-size: 14px;
}

input[type=checkbox] {
	margin-left: 18px;
	margin-top: 30px;
}

.loginremember {
	background: #ECF2F5;
	height: 70px;
	margin-top: 20px;
}

.check {
	font-family: "Times New Roman", Times, serif;
	position: relative;
	top: -2px;
	margin-left: 2px;
	padding: 0px;
	font-size: 12px;
	color: #321;
}

.loginbtn {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	padding: 6px 20px;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	background-color: #07A8C3;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3),
		to(#6EE4E8));
	background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	border-radius: 30px;
	border: 1px solid #07A8C3;
	cursor: pointer;
}

.loginbtn:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}
</style>
</head>
<body>
	<form action="Logincheck.jsp">
		<div class="logincontent">
			<div class="loginheading">Login</div>
			<label for="txtUserName"> Username:</label> <input type="text"
				id="uname" placeholder="Enter Username" name="uname" /> <label
				for="txtPassword"> Password:</label> <input type="password"
				id="password" placeholder="Enter Password" name="password" />
			<div class="loginremember">
				<input type="checkbox" id="chbRemember" name="chbRemember" /><label
					class="check" for="chbRemember">Remember me next time</label> <input
					type="submit" class="loginbtn" value="Login" id="btnSubmit"
					onclick="validate()" />
			</div>
		</div>
	</form>
	<script>
		var attempt = 3; // Variable to count number of attempts.
		// Below function Executes on click of login button.
		function validate() {
			var username = document.getElementById("uname").value;
			var password = document.getElementById("password").value;
			if ((username == "admin" && password == "1234")
					|| (username == "Vis" && password == "1234")) {
				alert("LOGIN SUCCESSFUL!!!!");
				return false;
			}
			if (username == null && password == null) {
				alert("ENTER THE USERNAME AND PASSWORD");
			}
			}
		}
	</script>


</body>
</html>
