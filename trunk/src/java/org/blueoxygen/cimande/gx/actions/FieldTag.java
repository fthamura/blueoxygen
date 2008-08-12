package org.blueoxygen.cimande.gx.actions;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.ParseErrorException;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.blueoxygen.cimande.gx.entity.GxDroplistName;
import org.blueoxygen.cimande.gx.entity.GxDroplistValue;

public class FieldTag {
	private String templateDir = "/WebContent/WEB-INF/view/module/gx/template";
	private VelocityEngine ve = new VelocityEngine();
	
	public String textfield(String label, String name, int size, int maxLength){
		StringWriter sw = new StringWriter();
		try {
			ve.init();
			VelocityContext vc = new VelocityContext();
			vc.put("label", label);
			vc.put("name", name);
			vc.put("size", size);
			vc.put("maxLength", maxLength);
			
			Template t = ve.getTemplate(templateDir + "/textfield.vm");
			t.merge(vc, sw);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sw.toString();
	}
	public String textarea(String label, String name, int col, int row){
		StringWriter sw = new StringWriter();
		try {
			ve.init();
			VelocityContext vc = new VelocityContext();
			vc.put("label", label);
			vc.put("name", name);
			vc.put("col", col);
			vc.put("row", row);
			
			Template t = ve.getTemplate(templateDir + "/textarea.vm");
			t.merge(vc, sw);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sw.toString();
	}
	public String checkbox(String label, String name, String value){
		StringWriter sw = new StringWriter();
		try {
			ve.init();
			VelocityContext vc = new VelocityContext();
			vc.put("label", label);
			vc.put("name", name);
			vc.put("value", value);
			
			Template t = ve.getTemplate(templateDir + "/checkbox.vm");
			t.merge(vc, sw);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sw.toString();
	}
	public String radio(GxDroplistName name, GxDroplistValue value, boolean inline){
		StringWriter sw = new StringWriter();
		try {
			ve.init();
			VelocityContext vc = new VelocityContext();
			vc.put("label", name.getDescription());
			vc.put("name", name);
			vc.put("inline", inline);
			
			Template t = ve.getTemplate(templateDir + "/radiobutton.vm");
			t.merge(vc, sw);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sw.toString();
	}
	public String select(GxDroplistName name, GxDroplistValue value, int size){
		StringWriter sw = new StringWriter();
		try {
			ve.init();
			VelocityContext vc = new VelocityContext();
			vc.put("label", name.getDescription());
			vc.put("name", name);
			vc.put("size", size);
			
			Template t = ve.getTemplate(templateDir + "/select.vm");
			t.merge(vc, sw);
		} catch (ResourceNotFoundException e) {
			e.printStackTrace();
		} catch (ParseErrorException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sw.toString();
	}
	public static void main(String[] args){
		GxDroplistName n = new GxDroplistName();
		GxDroplistValue v;
		n.setName("Name name");
		n.setDescription("Name Desc");
		n.setValues(new ArrayList<GxDroplistValue>());
		for(int i = 0; i < 5; i++){
			v = new GxDroplistValue();
			v.setValue("value page "+ i);
			v.setDescription("desc Page " + i);
			v.setName(n);
			n.getValues().add(v);
		}
		
		System.out.println(new FieldTag().radio(n, null, true));
	}
}
