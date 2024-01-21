<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String did=request.getParameter("Did");
String Email=request.getParameter("Email");
String password=request.getParameter("Password");
System.out.println(did+Email+password);
String subject="PM AWAS YOJANA";
String host="smtp.gmail.com";  



Properties props = new Properties();  
props.put("mail.smtp.host", "smtp.gmail.com"); 
props.put("mail.smtp.auth", "true"); 
props.put("mail.debug", "false");
props.put("mail.smtp.port", "587");
props.setProperty("mail.smtp.protocol", "smtps");
props.setProperty("mail.smtp.starttls.enable", "true");
props.setProperty("mail.smtp.ssl.enable", "true");  


Session session1= Session.getInstance(props, new javax.mail.Authenticator() {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication("badgujarvarad800@gmail.com","ogjprhbqoupqrxba");
    }
});
//Compose the message  
try {  
MimeMessage message = new MimeMessage(session1);  
message.setFrom(new InternetAddress("badgujarvarad800@gmail.com"));  
message.addRecipient(Message.RecipientType.TO,new InternetAddress(Email));        
message.setSubject(subject);       
String emailMessage = "Hey, Dealer! Your request has been approved. Your Dealer USERNAME: " + Email   + " | Additional Information: Please contact our support team for further assistance. Your password is: " + password;
message.setContent(emailMessage,"text/html" );

//send the message  
Transport.send(message);  

System.out.println("message sent successfully...");  

response.sendRedirect("Dealer.jsp");

} catch (MessagingException e) { System.out.println("Not send"); }


%>