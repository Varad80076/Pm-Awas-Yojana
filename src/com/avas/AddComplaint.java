package com.avas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddComplaint
 */
public class AddComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComplaint() {
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
		try {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String complaint=request.getParameter("complaint");
			int c_id=0;
			PreparedStatement pstmt = con.prepareStatement("insert into usercomplaint_tbl  values (?,?,?,?)");
			pstmt.setInt(1, c_id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, complaint);
			
			int i=pstmt.executeUpdate();
	   if(i>0)
	   {
				response.sendRedirect("UserAddComplaint.jsp");
	   }
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
