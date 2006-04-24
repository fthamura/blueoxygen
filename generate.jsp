<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" %>
        
<%

	
        /*
         *  make velocity file's content.
         */
String strContent = 	" import java.io.IOException;							\n" +
			" import java.io.FileNotFoundException;						\n" +
			" import java.io.FileInputStream;						\n" +
			" 										\n" +
			" import java.util.Properties;							\n" +
			" import java.util.Vector;							\n" +
			" import java.util.ArrayList;							\n" +
			" import java.util.Map;								\n" +
			" import java.util.HashMap;							\n" +
			" 										\n" +
			" import java.sql.*;								\n" +
			" 										\n" +
			" import javax.servlet.ServletConfig;						\n" +
			" import javax.servlet.http.HttpServletRequest;					\n" +
			" import javax.servlet.http.HttpServletResponse;				\n" +
			" 										\n" +
			" import org.apache.velocity.Template;						\n" +
			" import org.apache.velocity.context.Context;					\n" +
			" import org.apache.velocity.servlet.VelocityServlet;				\n" +
			" import org.apache.velocity.app.Velocity;					\n" +
			" import org.apache.velocity.exception.ResourceNotFoundException;		\n" +
			" import org.apache.velocity.exception.ParseErrorException;			\n" +
			" 										\n" ;

	
      
	//generate file
        	String savedir = "d:\\";
        	String filename = "test";
        try {        
        	//generate master file
	        File fi = new File(savedir + "\\" + filename + ".java");
	        fi.createNewFile();
	        DataOutputStream dos = new DataOutputStream(new FileOutputStream(fi));
	        dos.writeBytes(strContent);     
/*	        dos.writeBytes(" public class " + filename + " extends VelocityServlet				\n");
		dos.writeBytes(strContent2);     
	        dos.writeBytes("             outty =  getTemplate(strSkin + \"/" + filename + ".vm\");		\n");
		dos.writeBytes(strContent3);     
*/		
	/*	//generate detail file
	        fi = new File(savedir + "\\" + filename + "details.java");
	        fi.createNewFile();
	        dos = new DataOutputStream(new FileOutputStream(fi));
	        dos.writeBytes(strContent);     
	        dos.writeBytes(" public class " + filename + "details extends VelocityServlet				\n");
		dos.writeBytes(strContent2);     
	        dos.writeBytes("             outty =  getTemplate(strSkin + \"/" + filename + "details.vm\");		\n");
		dos.writeBytes(strContent3);     
*/
        } catch(Exception E) {
        	out.println(E);
        }

	out.println("The file has been generated and saved to : " + savedir + "\\" + filename + ".java");
%>