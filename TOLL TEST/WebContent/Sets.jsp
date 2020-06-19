<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>
<%
	String r = request.getParameter("sids");
	String s = request.getParameter("shifts");
	String v = request.getParameter("sname");

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root",
				"Vismitha123@");
		PreparedStatement ps = conn.prepareStatement(
				"update staff set shift=? where sid=? AND sname=?");
		ps.setString(1,s);
		ps.setString(2,r);
		ps.setString(3,v);
		int i = ps.executeUpdate();
		
		System.out.println(i + " updated");
		conn.close();
		response.sendRedirect("Setshifts.jsp");
	} catch (Exception ex) {
		System.out.println(ex);
	}
%>

