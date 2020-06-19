<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	session = request.getSession();
	session.removeAttribute("name");
	session.removeAttribute("password");
	session.invalidate();
	response.sendRedirect("loginn.jsp");
%>





