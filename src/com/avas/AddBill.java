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
 * Servlet implementation class AddBill
 */
public class AddBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBill() {
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
			int bill_id=0;
			String username=request.getParameter("username");
			String item1=request.getParameter("item1");
			String item2=request.getParameter("item2");
			Long quantity1=Long.parseLong(request.getParameter("quantity1"));
			Long quantity2=Long.parseLong(request.getParameter("quantity2"));
			Long cost1=Long.parseLong(request.getParameter("cost1"));
			Long cost2=Long.parseLong(request.getParameter("cost2"));
			String status="pending";
			Long total=(quantity1*cost1)+(quantity2*cost2);
			PreparedStatement pstmt = con.prepareStatement("insert into addbilldealer_tbl  values (?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, bill_id);
			pstmt.setString(2, username);
			pstmt.setString(3, item1);		
			pstmt.setString(4, item2);
			pstmt.setLong(5, quantity1);
			pstmt.setLong(6, quantity2);
			pstmt.setLong(7, cost1);
			pstmt.setLong(8, cost2);
			pstmt.setLong(9, total);
			pstmt.setString(10, status);
			
			
			int i=pstmt.executeUpdate();
			System.out.println("Succesfully Done");
		if(i>0){
				response.sendRedirect("AddDealerBill.jsp");
		}
		else
		{
			response.sendRedirect("AddDealerBill.jsp");
		}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
		
	}

}
