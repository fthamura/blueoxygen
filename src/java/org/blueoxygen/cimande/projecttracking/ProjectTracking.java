/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.cimande.projecttracking;
/**
 * @version 	1.0
 * @author
 */
public class ProjectTracking implements Comparable{


    private String sID 					= null;
    private String sName 				= null;
    private String sDescription 		= null;
    private String sStartDate 			= null;
    private String sFinishDate 			= null;
    private String sPriority 			= null;
    private String sPriorityName		= null;    
    private String sStatus 				= null;    
    private String sStatusName 			= null;
    private String sProgressPresentage 	= null;
    private String sProjectManager 		= null;    
    private String sProjectManagerName	= null;     
    private String sCriticalProject 	= null;
    private String sProjectNotes 		= null;
    private String sCompanyID 			= null;
    private String sCompanyName 		= null;
    private String sCategoryID 			= null;
    private String sCategoryName 		= null;      
 
	public ProjectTracking () throws Exception {
			super();		
		}
    
    public ProjectTracking(String sID,String sName,String sDescription,String sStartDate,String sFinishDate,String sPriority,String sPriorityName,String sStatus,String sStatusName,String sProgressPresentage,String sProjectManager,String sProjectManagerName,String sCriticalProject,String sProjectNotes,String sCompanyID,String sCompanyName,String sCategoryID,String sCategoryName) {
                                                                                                                                 
        this.sID 				= sID;									                                                                                            
        this.sName 				= sName; 				          						                                                                                  
        this.sDescription 		= sDescription; 		    				                                                                                        
        this.sStartDate 		= sStartDate; 			    			                                                                                      
        this.sFinishDate 		= sFinishDate; 							                                                                                          
        this.sPriority 			= sPriority;
        this.sPriorityName		= sPriorityName; 			    					                                                                                      
        this.sStatus 			= sStatus;        
        this.sStatusName		= sStatusName; 								                                                                                   
        this.sProgressPresentage= sProgressPresentage;	 	
        this.sProjectManager	= sProjectManager;	      
        this.sProjectManagerName= sProjectManagerName;          				  
        this.sCriticalProject 	= sCriticalProject; 	        				      
        this.sProjectNotes 		= sProjectNotes; 
        this.sCompanyID 		= sCompanyID;      
        this.sCompanyName		= sCompanyName;           
        this.sCategoryID 		= sCategoryID;      
        this.sCategoryName		= sCategoryName;         		     					  
	
                                                                    
    }                                                                                                                            
    public String getID() {                                                                                                    
       return this.sID;                                                                                                        
    }                                                                                                                            
                                                                                                                                 
    public String getName() {                                                                                             
       return this.sName;                                                                                                 
    }                                         
                                              
    public String getDescription() {
       return this.sDescription;
    }
    public String getStartDate() {
       return this.sStartDate;
    }

    public String getFinishDate() {
       return this.sFinishDate;
    }
    
    public String getPriority() {
       return this.sPriority;
    }

    public String getPriorityName() {
       return this.sPriorityName;
    }    
    
    public String getStatus() {
       return this.sStatus;
    }
    
    public String getStatusName() {
       return this.sStatusName;
    }    
    
    public String getProgressPresentage() {                                                                                                    
       return this.sProgressPresentage;                                                                                                        
    } 

    public String getProjectManager() {                                                                                                    
       return this.sProjectManager;                                                                                                        
    }  

    public String getProjectManagerName() {                                                                                                    
       return this.sProjectManagerName;                                                                                                        
    }                                                                                                                                 
                                                                                                                                 
    public String getCriticalProject() {                                                                                             
       return this.sCriticalProject;                                                                                                 
    }                                         
                                              
    public String getProjectNotes() {
       return this.sProjectNotes;
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

  public int compareTo(Object o) {
	ProjectTracking n = (ProjectTracking)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
