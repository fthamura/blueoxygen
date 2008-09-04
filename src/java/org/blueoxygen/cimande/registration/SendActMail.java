package org.blueoxygen.cimande.registration;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URL;
import java.nio.Buffer;

import org.apache.commons.mail.HtmlEmail;
import org.apache.struts2.ServletActionContext;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.apache.velocity.exception.MethodInvocationException;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.blueoxygen.cimande.security.User;
import org.blueoxygen.util.PropertyLooker;
import org.blueoxygen.util.StringUtils;

public class SendActMail {
	public boolean send(User user) throws ResourceNotFoundException, ParseErrorException, MethodInvocationException, Exception {
		if (user != null) {
			HtmlEmail mail = new HtmlEmail();
			
			mail.setHostName(PropertyLooker.get("email.smtp.server"));
			mail.setSmtpPort(25);
//			if (PropertyLooker.get("email.smtp.username") != null
//					|| !"".equalsIgnoreCase(PropertyLooker
//							.get("email.smtp.username"))) {
//				mail.setAuthentication(PropertyLooker.get("email.smtp.username"),
//						PropertyLooker.get("email.smtp.password"));
//			}
			mail.addTo(user.getEmail(), user.getName().getFirst() + " " + user.getName().getLast());
			mail.setFrom(PropertyLooker.get("application.activation.from.email"), PropertyLooker.get("application.activation.from.name"));
			mail.setSubject("Registration Notification");
			Velocity.init();
	        VelocityContext context = new VelocityContext();
	        context.put("user", user);
	        String href = ServletActionContext.getRequest().getContextPath() + "/register/aktifasi.action?id=" + new StringUtils().encodeBase64(user.getId());
	        context.put("href", href);
	        StringWriter w = new StringWriter();

//	        Velocity.mergeTemplate("http://localhost:8080/gele/activationmail.vm", "text/plain", context, w );
//	        
			InputStream fis = PropertyLooker.getResourceAsStream("/resource/activationmail.vm");
			
			int i;
			StringBuilder sb =new StringBuilder();
			while(( i = fis.read()) != -1){
				sb.append((char) i);
			}
			StringReader br = new StringReader("");
			Velocity.evaluate(context, w, sb.toString(), br);
			System.out.print(w);
			mail.setHtmlMsg(w.toString());
			mail.send();
			return true;
		}
		return false;
	}
}
