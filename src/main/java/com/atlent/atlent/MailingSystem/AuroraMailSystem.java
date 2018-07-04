package com.atlent.atlent.MailingSystem;

import com.atlent.atlent.dto.MailDto;
import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

@Component
public class AuroraMailSystem {


    private String userName = "auroradevops@gmail.com";

    private String password = "Mahamodara1234";

    public void reportException(Exception e) {
        MailDto dto = new MailDto();
        dto.setSubject("Error Detected!");
        dto.setMessage(e.toString());
        sendMail(dto);
    }

    public void sendMail(MailDto mailDto) {

        String message = mailDto.getMessage();

        String Exception_Message = message + "\n  --- Atlent System Mathara(AuroraDevOps)";

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(userName, password);
                    }
                });

        Message msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress(userName, false));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sanjuchandimal.net@gmail.com,dhanushka@akvasoft.com"));
            msg.setSubject(mailDto.getSubject());
            msg.setContent(Exception_Message, "text/html");
            msg.setSentDate(new Date());

            MimeBodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setContent(Exception_Message, "text/html");

            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);
            MimeBodyPart attactPart = new MimeBodyPart();

            attactPart.attachFile("C:\\Users\\Akvasoft\\Documents\\Dhanushka\\error.jpg");
            multipart.addBodyPart(attactPart);
            msg.setContent(multipart);
            Transport.send(msg);

        } catch (MessagingException e1) {
            e1.printStackTrace();
        } catch (IOException e1) {
            e1.printStackTrace();
        }


    }
}
