package org.blueoxygen.cimande.function;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

/*
 * Created on Jul 8, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
/**
 * @author alex
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */
public  class Check {
	
	
	
	public  boolean checkInt(String b){
		
		for(int i=0;i<b.length();i+=1){
			if(b.charAt(i)<48||b.charAt(i)>57) return false;
		}
		
		return true;
	}
	public String viewMoney(String number) {
    	
		DecimalFormatSymbols dfs = new DecimalFormatSymbols();
    	dfs.setGroupingSeparator('.');
    	dfs.setDecimalSeparator(',');
    	DecimalFormat formatter = new DecimalFormat("'Rp. '###,###,###.00");
    	formatter.setDecimalFormatSymbols(dfs);
    	return formatter.format(Double.parseDouble(number));
	}
	
	public String viewMoney(BigDecimal number) {
    	
		DecimalFormatSymbols dfs = new DecimalFormatSymbols();
    	dfs.setGroupingSeparator('.');
    	dfs.setDecimalSeparator(',');
    	DecimalFormat formatter = new DecimalFormat("'Rp. '###,###,###.00");
    	formatter.setDecimalFormatSymbols(dfs);
    	return formatter.format(number);
	}
	
	public boolean checkDecimal(String b){
		int j = 0;
		for(int i=0;i<b.length();i+=1){
			if(!Character.isDigit(b.charAt(i))&&b.charAt(i)!='.') return false;
			if(b.charAt(i)=='.') {j+=1;}
			if(j==2) return false;
		}
		
		return true;
	}
	
	public boolean checkPhone(String b){
		int j = 0;
		if(b.length()>0){
			for(int i=0;i<b.length();i+=1){
				if(!Character.isDigit(b.charAt(i))&&b.charAt(i)!='-') return false;
				if(j==2) return false;
			}
			if(b.charAt(b.length()-1)=='-') return false;
		}
		return true;
	}
}
