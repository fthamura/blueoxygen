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

/*
 * (c) Copyright 2001 Intercitra.com.
 * All Rights Reserved.
 */

import org.apache.commons.collections.SequencedHashMap;



/**
 * SequenceHaspMap Implementation from Jakarta's Common Collection 2.0.
 * 
 * @version   2.0
 * @author    <a href="mailto:frans@blueoxygen.org">Frans Thamura</a>
 */


public class TestSequencedHashMap {

	public static void main(String[] args) {
		
		SequencedHashMap labRat;
		labRat = new SequencedHashMap();
				
    	Object[] keys = new Object[] { "foo", "baz", new Object() };
        int expectedSize = keys.length;
        Object[] values = new Object[] { "bar", "frob", new Object() };
        for (int i = 0; i < expectedSize; i++) {
            labRat.put(keys[i], values[i]);
        }

        // Test sequence()
        
        for (int i = 0; i < labRat.size(); i++) {
            System.out.println("Key " + i + " = " + labRat.get(i) + " : value=" + labRat.getValue(i));
        }
        System.out.println(labRat);
        
	}
	
	
 
}
