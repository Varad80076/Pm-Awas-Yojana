package com.avas;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddUserPhoto
 */

@MultipartConfig(
		 location="E:\\user_photo",
		 maxFileSize = 16177215) 
public class AddUserPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserPhoto() {
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
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            System.out.println(filePart.getSize());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
		 
		try {
			Connection conn=null;
			Long contact = null;
			
			String username=request.getParameter("username");
			String email=request.getParameter("email");
			
			
			//String photo="null";
			String message = null;
			 
			int U_id=0;
			String status="Pending";
			
			
			
			PreparedStatement pstmt = con.prepareStatement("insert into userphoto_tbl  values (?,?,?,?)");
			pstmt.setInt(1, U_id);
			pstmt.setString(2, username);
					
			pstmt.setString(3, email);
			
			
			//pstmt.setString(9, planfile);
			System.out.println("hi");
			
			 if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                pstmt.setBlob(4, inputStream);
            }
			 int row = pstmt.executeUpdate();
             if (row > 0) {
                message = "File uploaded and saved into database";
                
                response.sendRedirect("UserSubmitPhoto.jsp");
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
