package com.avas;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendEmail
 */
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
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
	try{	String dealerId = request.getParameter("Did");
	    String email = request.getParameter("Email");
	    String password = request.getParameter("Password");
	    System.out.println(dealerId+email+password);

	    // Your email credentials
	    String host =  "smtp.gmail.com";
	    String username = "badgujarvarad800@gmail.com";
	    String passwordForEmail = "irbkznpfitsibngp";

	    // Set the sender's email address and display name
	    String fromEmail = "badgujarvarad800@gmail.com";
	    String fromName = "Varad";

	    // Set the recipient's email address
	    String toEmail = email;

	    // Email subject and content
	    String subject = "Dealer Account Approval";
	    String body = "Dear Dealer,\n\nYour account has been approved. Please use the following credentials to log in:\n\n"
	            + "Username: " + email + "\n"
	            + "Password: " + password + "\n\n"
	            + "Thank you.\n\nBest Regards,\n" + "Your Company Name";

	    // Create properties for the email configuration
	    Properties props = new Properties();
	    props.put("mail.smtp.host", host);
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");

	    // Create a new session with the properties and authentication
	    Session session_1 = Session.getInstance(props, new javax.mail.Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, passwordForEmail);
	        }
	    });

	    // Create the email message
	    Message message = new MimeMessage(session_1);
	    message.setFrom(new InternetAddress(fromEmail, fromName));
	    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
	    message.setSubject(subject);
	    message.setText(body);

	    // Send the email
	    Transport.send(message);

	    // Update the dealer status as "Approved" in your database or do any other required actions

	    // Redirect back to the dealer table page
	    response.sendRedirect("Dealer.jsp");
	} catch (Exception e) {
	    e.printStackTrace();
	    // Handle the exception or display an error message if email sending fails
	    // You can also redirect to an error page here
	    response.sendRedirect("Error.jsp");
	}
		doGet(request, response);
	}

}
