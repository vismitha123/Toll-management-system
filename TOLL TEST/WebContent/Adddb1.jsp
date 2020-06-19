<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>
<%
	String a = request.getParameter("sname");
	String b = request.getParameter("sm");
	String c = request.getParameter("stem");
	String d = request.getParameter("sdob");
	String e = request.getParameter("spass");
	String f = request.getParameter("splz");
	String g = request.getParameter("stb");
	String h=request.getParameter("shift");
	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root",
				"Vismitha123@");
		PreparedStatement st = conn.prepareStatement(
				"insert into staff(sname,smob,stem,sdob,spass,splz,stb,shift) values (?,?,?,?,?,?,?,?)");
		st.setString(1, a);
		st.setString(2, b);
		st.setString(3, c);
		st.setString(4, d);
		st.setString(5, e);
		st.setString(6, f);
		st.setString(7, g);
		st.setString(8,h);
		int i = st.executeUpdate();
		System.out.println(i + " inserted");
		conn.close();
		response.sendRedirect("Addstaff.jsp");
	} catch (Exception ex) {
		System.out.println(ex);
	}

	
%>

