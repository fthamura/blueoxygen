/*******************************************************************************
 * Copyright (c) 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Team - initial API and implementation
 *******************************************************************************/

package org.blueoxygen.cimande.docpooling;
/**
 * @version 	1.0
 * @author
 */
public class Upload implements Comparable{


    private String sFile1 = null;
    private String sFile2 = null;
    private String sFile3 = null;
    private String sFile4 = null;
    
        
    
	public Upload () throws Exception {
			super();		
		}
    
    public Upload(String sFile1,String sFile2,String sFile3,String sFile4) {
                                                                                                                                 
        this.sFile1 = sFile1 ; 						                                                                                            
        this.sFile2 = sFile2;    
        this.sFile3 = sFile3 ; 						                                                                                            
        this.sFile4 = sFile4;  						                                                                                  
        
                                                            
    }                                                                                                                            
    public String getFile1() {                                                                                                    
       return this.sFile1;                                                                                                        
    } 
    
    public String getFile2() {                                                                                                    
       return this.sFile2;                                                                                                        
    }                                                                                                                           

    public String getFile3() {                                                                                                    
       return this.sFile3;                                                                                                        
    }
    
    public String getFile4() {                                                                                                    
       return this.sFile4;                                                                                                        
    }

  public int compareTo(Object o) {
	Upload n = (Upload)o;
	int lastCmp = sFile1.compareTo(n.sFile1);
		return (lastCmp);
  }		
}
