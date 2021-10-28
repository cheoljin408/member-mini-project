package org.kosta.memberproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.memberproject.model.MailService;


public class SendEmailController implements Controller {
	/*
	public static void gmailSend(String email, String subject, String text) { 
	    String host = "smtp.gmail.com";
	    String user = "cheoljin408@gmail.com"; 
	    String sender = "cheolin408@gmail.com";
	    String password = "uwgbjwppycejzhlu";
	    
	    // SMTP 서버 정보를 설정한다. (ssl적용에따라 설정옵션이 달라진다. 아래는 ssl적용 안한버전이다.)
	    Properties props = new Properties(); 
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.host", host); 	
	    props.put("mail.smtp.port", 587); 
	    props.put("mail.smtp.auth", "true");
	    // TLS 설정 꼭 해줘야함!
	    props.put("mail.smtp.ssl.protocols", "TLSv1.2");
                                                                             
        //인증	    
	    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
	        protected PasswordAuthentication getPasswordAuthentication() { 
	            return new PasswordAuthentication(user, password); 
	        } 
	    }); 
	    
	    try { 
	        MimeMessage message = new MimeMessage(session); 
            //받는사람 메일
	        message.setFrom(new InternetAddress(sender)); 
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(email)); 

	        // 메일 제목 
	        message.setSubject(subject); 
	        // 메일 내용 
	        message.setText(text); 
	        // send the message 
	        Transport.send(message); 
	    } catch (MessagingException e) {
	        e.printStackTrace(); 
	    } 
	}
	*/
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MailService ms = new MailService();
		ms.gmailSend("cheoljin408@gmail.com", "test title", "test content");
		// 중혁 메일
		// ms.gmailSend("moon960427@gmail.com", "test title", "test content");
		System.out.println("성공");
		// TODO Auto-generated method stub
		return "redirect:register-result.jsp";
	}

}
