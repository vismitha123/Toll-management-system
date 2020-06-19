<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>
<%
	String a = request.getParameter("fromt");
	String b = request.getParameter("tot");
	String c = request.getParameter("vehiclecat");
	String d = request.getParameter("one");
	String e = request.getParameter("two");

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root",
				"Vismitha123@");
		PreparedStatement st = conn.prepareStatement(
				"update tripcosts set oneway=? , twoway=? where fromt=? and tot=? and vehiclecat=?");
		st.setString(1, d);
		st.setString(2, e);
		st.setString(3, a);
		st.setString(4, b);
		st.setString(5, c);
		int i = st.executeUpdate();
		System.out.println(i + " updated");
		conn.close();
		response.sendRedirect("Settripcosts.jsp");
	} catch (Exception ex) {
		System.out.println(ex);
	}
%>

