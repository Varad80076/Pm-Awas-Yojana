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
String bill=request.getParameter("bill_id");
try{


Connection con=DbConnection.connect();
Statement stmt=con.createStatement();
int i=stmt.executeUpdate("delete from addbilldealer_tbl where bill_id="+bill);
if(i>0){
	System.out.println("Sucessfully done");
response.sendRedirect("ViewDealerBill.jsp");
}


 
                                    
                                   
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }
                                %>
</body>
</html>