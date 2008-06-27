/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

	public Mail(String smtpServer) {
		m_sSmtpServer = smtpServer;
	}

	public void send(String recipients[], String subject, String message,
			String from) throws MessagingException {
		boolean debug = false;
		Properties props = new Properties();
		props.put("mail.smtp.host", m_sSmtpServer);
		Session session = Session.getDefaultInstance(props, null);
		session.setDebug(debug);
		Message msg = new MimeMessage(session);
		InternetAddress addressFrom = new InternetAddress(from);
		msg.setFrom(addressFrom);
		InternetAddress addressTo[] = new InternetAddress[recipients.length];
		for (int i = 0; i < recipients.length; i++)
			addressTo[i] = new InternetAddress(recipients[i]);

		msg.setRecipients(javax.mail.Message.RecipientType.TO, addressTo);
		msg.addHeader("MyHeaderName", "myHeaderValue");
		msg.setSubject(subject);
		msg.setContent(message, "text/plain");
		Transport.send(msg);
	}

	private String m_sSmtpServer;
	
	public static void main(String args[]){
		Mail mail = new Mail("localhost");
		String to[] = new String[]{"leo@meruvian.com"};
		try {
			mail.send(to, "Test", "Ini testing doank", "pirate_153@yahoo.com");
			System.out.println("success send mail");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}