
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SET TRIP COSTS</title>
</head>
<body>
	<%@ page import="java.sql.ResultSet"%>
	<%@ page import="java.sql.Statement"%>
	<%@ page import="java.sql.Connection"%>
	<%@ page import="java.sql.DriverManager"%>
	<style>
	
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	font-family: "Times New Roman", Times, serif;
	-webkit-font-smoothing: antialiased;
	background: #000000;
}

h2 {
	text-align: center;
	font-size: 22px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: white;
	padding: 30px 0;
}

h1 {
	text-align: center;
	font-size: 30px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: white;
	padding: 30px 0;
}
input[type=text] {
  background-color:  #fffff;
  color: black;
  font-size: 16px;
  font-weight: bold;
  border-radius:6px 6px 6px 6px;
  text-align:center;
  height:28px;
  font-family: "Times New Roman", Times, serif;
  border: 0px solid;
} 
input[type=number] {
  background-color:  #fffff;
  color: black;
  font-size: 16px;
  font-weight: bold;
  border-radius:6px 6px 6px 6px;
  text-align:center;
  height:28px;
  border:0px solid;
  font-family: "Times New Roman", Times, serif;
} 

/* Table Styles */
.table-wrapper {
	margin: 10px 70px 70px;
	box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
}

.fl-table {
	border-radius: 5px;
	font-size: 16px;
	font-weight: normal;
	border: none;
	border-collapse: collapse;
	width: 100%;
	max-width: 100%;
	white-space: nowrap;
	background-color: white;
}

.fl-table td, .fl-table th {
	text-align: center;
	padding: 8px;
}

.fl-table td {
	border-right: 1px solid #f8f8f8;
	font-size: 16px;
}

.fl-table thead th {
	color: #ffffff;
	background: #4FC3A1;
}

.fl-table thead th:nth-child(odd) {
	color: #ffffff;
	background: #324960;
}

.fl-table tr:nth-child(even) {
	background: #F8F8F8;
}

.loginbtn {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	padding: 6px 20px;
	font-size: 12px;
	font-weight: bold;
	color: #fff;
	background-color: #4FC3A1;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#07A8C3),
		to(#6EE4E8));
	background-image: -moz-linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	background-image: linear-gradient(top left 90deg, #07A8C3 0%, #6EE4E8 100%);
	border-radius: 30px;
	border: 1px solid #000000;
	cursor: pointer;
}
</style>
	<h1>SET TRIP COSTS</h1>
	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>FROM</th>
					<th>TO</th>
					<th>VEHICLE CATEGORY</th>
					<th>ONE WAY</th>
					<th>TWO WAY</th>
					<th>SUBMIT</th>
				</tr>
			</thead>

			<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/tolltest";
String username="root";
String password="Vismitha123@";
String query="select * from tripcosts";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
int i=0;
while(rs.next())
{
	%>
			<form action="Setcost.jsp">
				<tr>
					<td><input type="number" name="fromt" value=
						<%=rs.getString("fromt") %>></td>
					<td><input type="number" name="tot"
						value=<%=rs.getString("tot") %>></td>
					<td><input type="text" name="vehiclecat"
						value=<%=rs.getString("vehiclecat") %>></td>
					<td><input type="number" value=<%=rs.getString("oneway") %>
						name="one"></td>
					<td><input type="number" value=<%=rs.getString("twoway") %>
						name="two"></td>
					<td><div>
							<input type="submit" class="loginbtn" value="SUBMIT" name="CO" />
						</div></td>
				</tr>
			</form>
			<%

}
%>
		</table>
		</form>
		<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
out.println("<h1> error: "+ e.getMessage()+"</h1>");

}
%>
	
</body>
</html>


