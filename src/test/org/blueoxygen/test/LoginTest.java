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

import org.blueoxygen.backoffice.account.Login;
/**
 * @version 	1.0
 * @author
 */
public class LoginTest {
	/**
	 * Constructor for LoginTest.
	 */

	public static void main(String[] args) {
		
		try {
			/* validate the username and password
			 */
			Login loginBean = new Login("b2b","b2b");
			System.out.println("First Name:"+loginBean.getFirstName());
			System.out.println("Role Name:"+loginBean.getRoleName());
			System.out.println("Role Id:"+loginBean.getRoleId());
			System.out.println("Email Address:"+loginBean.getEmailAddress());
			System.out.println("Member Id:"+loginBean.getMemberId());
			System.out.println("Valid"+loginBean.validate()+"");
			System.out.println("Hash Code:"+loginBean.getHashCode()+"");

			loginBean = new Login("RUFDQTNGREMyNUI1MkRDRUFCRUU1MERBMTc=");
			System.out.println("**************************************");
			System.out.println("First Name:"+loginBean.getFirstName());
			System.out.println("Role Name:"+loginBean.getRoleName());
			System.out.println("Role Id:"+loginBean.getRoleId());
			System.out.println("Email Address:"+loginBean.getEmailAddress());
			System.out.println("Member Id:"+loginBean.getMemberId());
			System.out.println("Valid"+loginBean.validate()+"");
			System.out.println("Hash Code:"+loginBean.getHashCode()+"");

			
			/* get site for this
			 */
		} catch (Exception e) {
	 	   System.err.println("Error: " + e);
		}
	
	
	}
}
