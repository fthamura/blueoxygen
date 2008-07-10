/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.util;



public class UUID
{
	
    public UUID()
    {
    }

    public String generate()
    {
    	/* this is my last random generator, thanks to jdk 1.5 team that create more unique uuid.
    	 * so, you can use the jsdk1.5 UUID rather than this metod. JDK 1.5.0 guarrantee that the output 100% unique
    	 * this is my last code.
        Date date = new Date();
        Random random = new Random();
        Long long1 = new Long(date.getTime());
        
        String s = ""+Long.toHexString(long1.longValue()) + Long.toHexString(random.nextLong());
        s = s.toLowerCase();
    	 */ 
        
    	//java.util.UUID sid=null;
    	String s;
      	s = ""+java.util.UUID.randomUUID();
        return s;
    }
    
    public static void main(String[] args) {
    	// this is the sample how to use this object.
    	// see org.blueoxygen.test.TestUUIDjdk15.java for sample of another UUID
//    	UUID sid= new UUID();
//    	String s = sid.generate();
//    	System.out.println(s);
    	
    	for(int i = 0; i < 10; i ++){
//    		System.out.println(Long.toHexString(Long.reverseBytes(System.currentTimeMillis()))+"-"+Long.toHexString(System.nanoTime()));
//    		System.out.printf("%16x-%16x\n", System.currentTimeMillis(), System.nanoTime());
    	}
	}
}
