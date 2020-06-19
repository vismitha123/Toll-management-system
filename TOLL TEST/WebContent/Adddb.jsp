<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>

<%
	String a = request.getParameter("Vehiclecategory");
	String b = request.getParameter("Vet");
	String c = request.getParameter("vex");
	String d = request.getParameter("vn");
	String g = request.getParameter("vc");
	String e = request.getParameter("Tc");
	int i,j;

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root",
				"Vismitha123@");
		PreparedStatement st = conn.prepareStatement(
				"insert into reciept (vehiclecat,entrytoll,exittoll,vehicleno,tripchoice,cost) values (?,?,?,?,?,?)");
		PreparedStatement ps=conn.prepareStatement(
				"insert into checkout (vehiclecat,entrytoll,exittoll,vehicleno,tripchoice,cost) values (?,?,?,?,?,?)");
		st.setString(1, a);
		st.setString(2, b);
		st.setString(3, c);
		st.setString(4, d);
		st.setString(5, e);
		st.setString(6, g);
		ps.setString(1, a);
		ps.setString(2, b);
		ps.setString(3, c);
		ps.setString(4, d);
		ps.setString(5, e);
		ps.setString(6, g);
		i = st.executeUpdate();
		j=ps.executeUpdate();
		System.out.println(i + " inserted");
		conn.close();
		response.sendRedirect("Addreciept.jsp");
	} catch (Exception ex) {
		System.out.println(ex);
	}
%>





