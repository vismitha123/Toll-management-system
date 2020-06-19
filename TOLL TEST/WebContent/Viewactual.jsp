<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import=" java.sql.*,java.util.*"%>

<%
int i;
int a=1;
String c="id";
int e=2;
int d;
int h=0,m;

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tolltest", "root",
				"Vismitha123@");
		PreparedStatement st = conn.prepareStatement("select count from entc where id=?");
		CallableStatement cs=conn.prepareCall("{call tolltest.exitcount()}");
		PreparedStatement ps=conn.prepareStatement("select count from entc where id=?");
		CallableStatement csa=conn.prepareCall("{call tolltest.vehiclesonroad()}");
		PreparedStatement psa=conn.prepareStatement("select count from entc where id=?");
		PreparedStatement pa=conn.prepareStatement("Select sum(cost) from reciept");
		st.setInt(1,a);
		ResultSet rs=st.executeQuery();
		while(rs.next())
		{
		i=rs.getInt(1);
		System.out.println(i + " entry count");
		}
		cs.execute();
		ps.setInt(1,e);
		ResultSet rr=ps.executeQuery();
		while(rr.next())
		{
		d=rr.getInt(1);
		System.out.println(d + " exit count");
		}
		csa.execute();
		psa.setInt(1,h);
		ResultSet rrr=psa.executeQuery();
		while(rrr.next())
		{
		 int f=rrr.getInt(1);
		System.out.println(f + " is the number of vehicles on road");
		}
		ResultSet rsa=pa.executeQuery();
		while(rsa.next())
		{
			m=rsa.getInt(1);
			System.out.println(m);
		}
		
		conn.close();
		
		} 
	catch (Exception ex) {
		System.out.println(ex);
	}
%>
