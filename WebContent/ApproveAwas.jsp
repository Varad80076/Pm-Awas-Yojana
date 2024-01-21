<%@ page import="com.avas.DbConnection" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String aid=request.getParameter("aid");

Connection con=DbConnection.connect();
Statement stmt=con.createStatement();
int i=stmt.executeUpdate("update addawas_tbl set status='Approved' where aid="+aid);
if(i>0){
response.sendRedirect("ViewAwasTable.jsp");
}

%>
 
                                    
                                   
                               
</body>
</html>