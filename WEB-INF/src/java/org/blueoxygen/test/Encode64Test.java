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


import org.blueoxygen.util.StringUtils;

/**
 * @version 	1.0
 * @author		Frans Thamura
 */
public class Encode64Test {

	public static void main(String[] args) {
		
	String x,y;
	StringUtils string = new StringUtils();
		
	x = string.encodeBase64("dedeng");
	System.out.println(x);
	
	y= string.decodeBase64("ZGVkZW5n");
	System.out.println(y);
	
	

	}
}
