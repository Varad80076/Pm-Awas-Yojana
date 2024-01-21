package com.avas;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.avas.Getsetcomment;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Comment
 */
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
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
		
		String comment=request.getParameter("comment");
		Getsetcomment obj=new Getsetcomment();
		Connection con=DbConnection.connect();
		/*String email=obj.getEmail1();*/
		int commentid=0;
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into comment_tbl values (?,?,?)");
			pstmt.setInt(1, commentid);
			pstmt.setString(2, obj.getEmail1());
			pstmt.setString(3, comment);
		int i=	pstmt.executeUpdate();
			System.out.println("succesfully done");
			if(i>0)
			{
				response.sendRedirect("ViewAdminComplaint.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
