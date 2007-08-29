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
public class Document implements Comparable{


    private String sID = null;
    private String sDisplayStyle = null;
    private String sSource = null;
    private String sFileName = null;
    private String sPath = null;
    private String sHeadline = null;
    private String sSubHeadline = null;
    private String sAbstract = null;
    private String sBody = null;
    private String sLinkText = null;
    private String sByLine = null;
    private String sCreditLine = null;
    private String sCopyright = null;
    private String sEditorNotes = null; 
    private String sKeywords = null;
    private String sTransmittedDateTime = null;
    private String sNewsTopicID = null;
    private String sCompanyID = null;
    private String sCompanyName = null;
    private String sCategoryID = null;
    private String sCategoryName = null;    
    private String sStatusID = null;        
    
	public Document () throws Exception {
			super();		
		}
    
    public Document(String sID,String sDisplayStyle,String sSource,String sFileName,String sPath,String sHeadline,String sSubHeadline,String sAbstract,String sBody,String sLinkText,String sByLine,String sCreditLine,String sCopyright,String sEditorNotes,String sKeywords,String sTransmittedDateTime,String sNewsTopicID,String sCompanyID,String sCompanyName,String sCategoryID,String sCategoryName,String sStatusID) {
                                                                                                                                 
        this.sID = sID ; 						                                                                                            
        this.sDisplayStyle = sDisplayStyle;      						                                                                                  
        this.sSource  = sSource; 						                                                                                        
        this.sFileName  = sFileName; 				                                                                                      
        this.sPath   = sPath;        				                                                                                          
        this.sHeadline   = sHeadline;    					                                                                                      
        this.sSubHeadline = sSubHeadline;					                                                                                   
        this.sAbstract  = sAbstract;     					  
        this.sBody   = sBody;            				      
        this.sLinkText  = sLinkText;     					  
        this.sByLine   = sByLine;        				    
        this.sCreditLine  = sCreditLine; 					
        this.sCopyright  = sCopyright;   						 
        this.sEditorNotes = sEditorNotes;  
        this.sKeywords = sKeywords;      
        this.sTransmittedDateTime=sTransmittedDateTime;    
        this.sNewsTopicID = sNewsTopicID; 
        this.sCompanyID = sCompanyID;      
        this.sCompanyName=sCompanyName;           
        this.sCategoryID = sCategoryID;      
        this.sCategoryName=sCategoryName;    
        this.sStatusID = sStatusID;
                                                                    
    }                                                                                                                            
    public String getID() {                                                                                                    
       return this.sID;                                                                                                        
    }                                                                                                                            
                                                                                                                                 
    public String getDisplayStyle() {                                                                                             
       return this.sDisplayStyle;                                                                                                 
    }                                         
                                              
    public String getSource() {
       return this.sSource;
    }
    public String getFileName() {
       return this.sFileName;
    }

    public String getPath() {
       return this.sPath;
    }
    
    public String getHeadline() {
       return this.sHeadline;
    }
    public String getSubHeadline() {
       return this.sSubHeadline;
    }
    
    public String getAbstract() {                                                                                                    
       return this.sAbstract;                                                                                                        
    }                                                                                                                            
                                                                                                                                 
    public String getBody() {                                                                                             
       return this.sBody;                                                                                                 
    }                                         
                                              
    public String getLinkText() {
       return this.sLinkText;
    }
    public String getByLine() {
       return this.sByLine;
    }

    public String getCreditLine() {
       return this.sCreditLine;
    }
    
    public String getCopyright() {
       return this.sCopyright;
    }
    public String getEditorNotes() {
       return this.sEditorNotes;
    }
    public String getKeywords() {
       return this.sKeywords;
    }
    public String getTransmittedDateTime() {
       return this.sTransmittedDateTime;
    }

    public String getNewsTopicID() {
       return this.sNewsTopicID;
    }
    
    public String getCompanyID() {
       return this.sCompanyID;
    }
    public String getCompanyName() {
       return this.sCompanyName;
    }
        
    public String getCategoryID() {
       return this.sCategoryID;
    }
    public String getCategoryName() {
       return this.sCategoryName;
    }

    public String getStatusID() {
       return this.sStatusID;
    }    

  public int compareTo(Object o) {
	Document n = (Document)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
