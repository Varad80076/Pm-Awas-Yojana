<%@ page import="com.avas.DbConnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.InputStream" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Display Image</title>
</head>
<body>


<%
    String id = request.getParameter("aid");
	System.out.println(id);
    Blob image = null;

    Connection con = null;

    byte[] imgData = null;

    Statement stmt = null;

    ResultSet rs = null;

    try {
        con = DbConnection.connect();
        stmt = con.createStatement();
        rs = stmt.executeQuery("SELECT * FROM addawas_tbl WHERE aid =" + id);

        if (rs.next()) {
            image = rs.getBlob(9);
            
            InputStream pdfInputStream = image.getBinaryStream();

            // Set the content type to image/gif
            response.setContentType("image/gif");

            // Get the output stream to write image data to the response
            OutputStream o = response.getOutputStream();

            // Write the image data to the response
             byte[] buffer = new byte[4096];
             int bytesRead;
             while ((bytesRead = pdfInputStream.read(buffer)) != -1) {
                 o.write(buffer, 0, bytesRead);
             }
             pdfInputStream.close();
            o.flush();
            o.close();
        } else {
            out.println("pdf not found for the given ID: " + id);
        }
    } catch (Exception e) {
        out.println("Unable To Display pdf: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

</body>
</html>