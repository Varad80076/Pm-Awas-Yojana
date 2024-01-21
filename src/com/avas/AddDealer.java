package com.avas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDealer
 */
public class AddDealer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDealer() {
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
		doGet(request, response);
		
		Connection con=DbConnection.connect();
		try {
			int dealerid=Integer.parseInt(request.getParameter("Dealer Id"));
			String password=request.getParameter("Password");
			String email=request.getParameter("Email");
			Long contact=Long.parseLong(request.getParameter("Contact"));
			String shopname=request.getParameter("Shop Name");
			String city=request.getParameter("City");
			String region=request.getParameter("Region");
			int zip=Integer.parseInt(request.getParameter("Zip"));
			String status="pending";
			PreparedStatement pstmt = con.prepareStatement("insert into createdealer_tbl  values (?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, dealerid);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			pstmt.setString(4, shopname);
			pstmt.setLong(5, contact);
			pstmt.setString(6, region);
			pstmt.setString(7, city);
			pstmt.setInt(8, zip);
			pstmt.setString(9, status);
			pstmt.executeUpdate();
			
		
				response.sendRedirect("Dealer.jsp");
			
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
