<%@ page import="com.avas.DbConnection" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PM Awas Yojana</title>
</head>
<body>
<% 
String Did=request.getParameter("U_id");
try{


Connection con=DbConnection.connect();
Statement stmt=con.createStatement();
int i=stmt.executeUpdate("delete from userphoto_tbl where U_id="+Did);
if(i>0){
response.sendRedirect("ViewBillAdmin.jsp");
}


 
                                    
                                   
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                                %>
</body>
</html>