

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>

<%
	String a = request.getParameter("uname");
	String b = request.getParameter("password");
	
try {
	
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root","Vismitha123@");
		PreparedStatement st = conn.prepareStatement("select * from stafflogin where sname=? AND spass=?");
		PreparedStatement ps=conn.prepareStatement("select * from adminlogin where aname=? AND apass=?");
		st.setString(1, a);
		st.setString(2, b);
		ps.setString(1,a);
		ps.setString(2, b);
		ResultSet rs= st.executeQuery();
		ResultSet rr=ps.executeQuery();
		if(rs.next()){
			session = request.getSession();
			session.setAttribute("name", a);
			session.setAttribute("password", b);
			response.sendRedirect("Welcomestaff.jsp");
			}
		if(rr.next()){
			session = request.getSession();
			session.setAttribute("name", a);
			session.setAttribute("password", b);
			response.sendRedirect("Welcomeadmin.jsp");
			}
		conn.close();
	} 
	catch (Exception ex) {
		System.out.println(ex);
		response.sendRedirect("loginn.jsp");
	}
%>


</body>
</html>




