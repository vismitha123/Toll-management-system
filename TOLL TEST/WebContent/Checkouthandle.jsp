<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>
<%
String a=request.getParameter("id");



try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest","root","Vismitha123@");
	PreparedStatement st=conn.prepareStatement("delete from checkout where id=?");
	st.setString(1,a);
	int i=st.executeUpdate();
	System.out.println(i +"deleted");
	conn.close();
	response.sendRedirect("Viewsummary.jsp");
}
catch(Exception ex )
{
	System.out.println(ex);
}
%>

