package com.avas;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

/**
 * Servlet implementation class AddAwas
 */
@MultipartConfig(maxFileSize = 16177215) 
public class AddAwas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAwas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Connection con=DbConnection.connect();
		InputStream inputStream = null; // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("pdffile");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
		
		try {
			Connection conn=null;
			Long contact = null;
			
			String username=request.getParameter("username");
			String email=request.getParameter("email");
			String city=request.getParameter("city");
			String location=request.getParameter("location");
			String region=request.getParameter("region");
			//String photo="null";
			String message = null;
			 contact=Long.parseLong(request.getParameter("contact"));
			int aid=0;
			String status="Pending";
			
			
			int password=Integer.parseInt(request.getParameter("password"));
			PreparedStatement pstmt = con.prepareStatement("insert into addawas_tbl  values (?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, aid);
			pstmt.setString(2, username);
			pstmt.setLong(3, contact);		
			pstmt.setString(4, email);
			pstmt.setInt(5, password);
			pstmt.setString(6, city);
			pstmt.setString(7, location);
			pstmt.setString(8, region);
			//pstmt.setString(9, planfile);
			 pstmt.setNull(9, java.sql.Types.BLOB);
			pstmt.setString(10, status);
			System.out.println("varad");
			 if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(9, inputStream);
            }
			 int row = pstmt.executeUpdate();
             if (row > 0) {
                message = "File uploaded and saved into database";
                response.sendRedirect("Awas.jsp");
             }
       	 
			
			System.out.println("Succesfully Done");
		
	        }
	        
	          
	            // connects to the database
	        	
	        	
	          catch (SQLException ex) {
	         	//	message = "ERROR: " + ex.getMessage();
	             ex.printStackTrace();
	         }
			
			
					doGet(request, response);
	}
        }}


