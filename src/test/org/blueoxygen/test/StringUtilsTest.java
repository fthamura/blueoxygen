/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.test;

/**
 * @author Frans Thamura
 *
 * To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Generation - Code and Comments
 */

import org.blueoxygen.util.StringUtils;
public class StringUtilsTest {

	
	public static void main(String[] args) {
		String str1, str2 ;
		
		str1 ="Frans' is walking on the street, and say, 15 > 10 < 15  \n";
		
		StringUtils string = new StringUtils();
		
		str2 = ""+ string.escapeHTMLTags(str1);
		System.out.println("EscapgeHTML:"+str2);
		
		str2 = ""+string.addBackSlashQuote(str1);
		System.out.println("Add BackSlashQuote:"+str2);
				
		str2 = ""+string.replaceLineBreak(str1);
		System.out.println("Add <br>:"+str2);
		
		str2 = ""+string.replaceHTMLInput(str1);
		
		System.out.println(str2);
		
		// Create a random string
		System.out.println(string.randomString(28));
				
	}
}
