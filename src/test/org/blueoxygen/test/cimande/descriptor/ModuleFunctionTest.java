/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.test.cimande.descriptor;
/**
 * @author Frans Thamura
 *
 */
import org.blueoxygen.cimande.descriptor.*;

public class ModuleFunctionTest {
	
	public static void main(String[] args) {
		
		try {
			
			ModuleFunction mf = new ModuleFunction("ECE4EFFA9FAC1F0A6BD1F28156","EE185CE0B82B41C1724F284685");
			System.out.println(mf.getDescription());
		} catch (Exception e) {
	 	   	System.err.println("Error: " + e);
		}
	
	}
}
