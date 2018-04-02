package pl.coderslab.mail;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

import javax.mail.MessagingException;

public class SendEmail {

	public void send(String name, String mail, String level) throws MessagingException {

		class myAuthenticator extends Authenticator {
			String username = "testTeacherSchool@gmail.com";
			String password = "schooL12";

			@Override
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		}
		try {
			Properties prop = System.getProperties();
			Authenticator auth = new myAuthenticator();
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.user", "testTeacherSchool@gmail.com");
			prop.put("mail.smtp.password", "schooL12");
			prop.put("mail.smtp.auth", "true");

			Session session = Session.getInstance(prop, auth);

			session.setDebug(true);
			Message message = new MimeMessage(session);

			message.setText("Hello " + name + " \n"
					+ "Thank you for booking on the \"JS School\" website. If you have any questions, please send me a message at: szelagowski.jan1@gmail.com.\n"
					+ "You have marked learning options: " + level + " \n"
					+ " In case of urgent contact, please call 509 - 865 - 862.\n" + "Greetings,\n" + "JS School");

			message.setSubject("Registration at JS School");

			Address address = new InternetAddress("testTeacherSchool@gmail.com");
			Address addressOdbiorcy = new InternetAddress(mail);

			message.setFrom(address);

			message.addRecipient(Message.RecipientType.TO, addressOdbiorcy);
			message.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", "testTeacherSchool@gmail.com", "schooL12");
			transport.sendMessage(message, message.getAllRecipients());

			transport.close();

		} catch (NoSuchProviderException e) {
		}

	}

	public void sendToMy(String numberPhone, String name, String level) throws MessagingException {

		class myAuthenticator extends Authenticator {
			String username = "testTeacherSchool@gmail.com";
			String password = "schooL12";

			@Override
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		}
		try {
			Properties prop = System.getProperties();
			Authenticator auth = new myAuthenticator();
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.user", "testTeacherSchool@gmail.com");
			prop.put("mail.smtp.password", "schooL12");
			prop.put("mail.smtp.auth", "true");

			Session session = Session.getInstance(prop, auth);
			session.setDebug(true);
			Message message = new MimeMessage(session);

			message.setText("You have another student: " + name + " \n" + " His number is: " + numberPhone + " \n"
					+ "The topic is selected: " + level + " \n" + "You must be an amazing teacher if" + " \n"
					+ "you have so many students.\n Congratulations");

			message.setSubject("Registration at JS School");

			Address address = new InternetAddress("testTeacherSchool@gmail.com");
			Address addressOdbiorcy = new InternetAddress("testTeacherSchool@gmail.com");

			message.setFrom(address);

			message.addRecipient(Message.RecipientType.TO, addressOdbiorcy);
			message.saveChanges();
			Transport transport = session.getTransport("smtp");
			transport.connect("smtp.gmail.com", "testTeacherSchool@gmail.com", "schooL12");
			transport.sendMessage(message, message.getAllRecipients());

			transport.close();

		} catch (NoSuchProviderException e) {

		}

	}

}