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
import org.blueoxygen.cimande.sitemanager.NavigationTree;

public class NavigationTreeTest {

/* Test NavigationTree 
 * This script will generate a MTMScript for generate a treemenu.com specific code
 */
public static void main(String[] args)
    {
    	try {
    		NavigationTree navTree = new NavigationTree("3","EE185CE0B82B41C1724F284685"); // role.id=EACA3F077E886331F0863628FF = B2B
    		System.out.println(navTree.getMTMScript());
    	
    	} catch (Exception e) {
	 	   System.err.println("Error: " + e);
		}
	
	
    }
    
}
