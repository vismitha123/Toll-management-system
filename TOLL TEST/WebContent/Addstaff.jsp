<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ADD STAFF</title>
<style>
/* Basics */
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
	width: 500px;
	height: 500px;
	top: 50%;
	left: 50%;
	margin-top: -190px;
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
	font-size: 17px;
}

input[type=text], input[type=number] {
	font-size: 14px;
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 250px;
	height: 30px;
	border: 1px solid #ccc;
	border-radius: 2px;
	font-size: 14px;
}

input[type=checkbox] {
	margin-left: 18px;
	margin-top: 30px;
}

.loginremember {
	background: #FFFFFF;
	height: 140px;
	margin-top: 10px;
}

.check {
	font-family: "Times New Roman", Times, serif;
	position: relative;
	top: -2px;
	margin-left: 2px;
	padding: 0px;
	font-size: 12px;
	color: #000000;
}

.loginbtn {
	float: left;
	margin-left: 20px;
	margin-top: 0px;
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

	<div class="loginheading">
		<h2>ADD STAFF</h2>
	</div>
	<form action="Adddb1.jsp">
		<label for="sid"> STAFF
			ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
		<input type="text" id="sid" name="sid" /><br> <label for="sname">
				STAFF NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text" id="sname"
			name="sname" /><br> <label for="stm"> STAFF MOBILE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input
				type="number" id="sm" name="sm" /><br> <label for="se">
						STAFF EMAIL:&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text" id="stem" name="stem" /><br>
						<label for="sdob"> STAFF
							DOB:&nbsp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text"
						placeholder="YYYY-MM-DD" id="sdob" name="sdob" /><br> <label
							for="spass"> STAFF PASSWORD:&nbsp;&ensp;&nbsp;</label> <input
							type="password" id="spass" name="spass" /><br> <label
								for="splz"> STAFF
									PLAZA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;</label> <input type="text"
								id="splz" name="splz" /><br> <label for="stb">
										STAFF BOOTH:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;</label> <input
									type="number" id="stb" name="stb" /><br> 
									
									<label for="stb">
										SHIFT:&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input
									type="number" id="stb" name="shift" /><br> <br>
											<div class="loginremember">
												<input type="checkbox" id="C1" name="c1" /> <label
													class="check" for="chbRemember"><h3>I CONFIRM
														THAT THE ABOVE DETAILS PROVIDED IS VERIFIED AND FOUND TO
														BE TRUE</h3></label><br> <br> <input type="submit"
														class="loginbtn" value="ADD" id="btnSubmit"
														onclick="validate()" />
											</div>
	</form>
</body>
</html>