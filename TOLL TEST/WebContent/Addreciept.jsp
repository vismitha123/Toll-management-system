<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>ADD RECIEPT</title>
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

.custom-select {
	position: relative;
	background-color: #FFFFFF;
	font-size: 14px;
	padding-left: 10px;
	margin: 10px;
	margin-top: 12px;
	margin-left: 18px;
	width: 250px;
	height: 30px;
	border: 1px solid #ccc;
	border-radius: 2px;
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
	color: #fff;
}

.loginbtn {
	float: left;
	margin-left: 20px;
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

	<div class="loginheading">
		<h2>ADD RECIEPT</h2>
	</div>
	<form action="Adddb.jsp" name="myForm" onsubmit="return(validate());">
		<label for="txtUserName"> VEHICLE
			CATEGORY:&ensp;&nbsp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&ensp;</label> <select name="Vehiclecategory" id="vc">
			<option value="TWOWHEELER">TWO WHEELER</option>
			<option value="LMV">LMV</option>
			<option value="CAR">CAR/BUS/TRUCK</option>
			<option value="MULTIAXLE">MULTI AXLE</option>

		</select> <br> <br> <label for="Vet"> VEHICLE ENTRY
					TOLL:&ensp;&nbsp;</label> <input type="number" id="Vet" name="Vet" /><br>

					<label for="vex"> VEHICLE EXIT TOLL :&ensp;&nbsp;&ensp;&nbsp;</label> <input
					type="number" id="vex" name="vex" /><br> <label for="vn">
							VEHICLE NUMBER:&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&nbsp;&ensp;</label> <input
						type="text" id="vn" name="vn" /><br> <label for="tc">
								TRIP CHOICE:&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&nbsp;&ensp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&nbsp;&ensp;</label> 
								<select name="Tc">
								<option value="one">ONE WAY</option>
								<option value="two">TWO WAY</option>
						</select><br>
						<label for="vc"> COST :&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&ensp;&nbsp;&ensp;</label> <input
					type="number" id="vc" name="vc" /><br>
					<br><br><br><br><br><br><br><br><br><br><br>
					<div class="loginremember">
					<input type="submit" class="loginbtn" value="SUBMIT "id="btnSubmit" />
</div>
</form>
<script type="text/javascript">
function gettc()
{ 
	var a=document.myForm.vc.value;
	var b=document.myForm.Vet.value;
	var c=document.myForm.vex.value;
	var d=document.myForm.tc.value;
	if(a=="TWOWHEELER")
		{
		alert("twowheeler");
		}
	}




</script>

</body>
</html>