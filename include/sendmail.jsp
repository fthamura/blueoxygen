                                                                                                                                                                               <%	try {
	    String supportConf = session.getServletContext().getInitParameter("support_config");
        String realPath = session.getServletContext().getRealPath(supportConf);
        Properties prop = new Properties();
        prop.load(new FileInputStream(realPath));
        String host = prop.getProperty("mail.smtp.host");
        String sender = prop.getProperty("email.postmaster");
        
        // Get system properties, setup mail server
        Properties props = System.getProperties();
        props.put("mail.smtp.host",host);
        // Get session
        Session mailSession = Session.getDefaultInstance(props,null);
        // Define message
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(sender));
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
        if (!from.equals("")) {
       		message.addRecipient(Message.RecipientType.CC,new InternetAddress(from));
        }	
        message.setSubject(subject);
        // String textHtml = "<h3>Task Detail:</h3><p>" + body;
        message.setContent(body,"text/html");
        // Send message
        Transport.send(message);
	} catch (Exception e) {
        	errors = true;
        	e.printStackTrace();
    } 
%>        