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
public class TaskDocument implements Comparable{


    private String sID 					= null;
    private String sTaskName			= null;
    private String sDescription 		= null;
    private String sPercentComplete		= null;    
    private String sDurationValue 		= null;
    private String sDurationUnit 		= null;    
    private String sStartDate 			= null;
    private String sFinishDate 			= null;
    private String sPredecessor 		= null;    
    private String sResourceName 		= null;
    private String sTaskNotes   		= null;
    private String sCriticalTask    	= null;
    private String sPriority 			= null;
    private String sDeadlineDate		= null;    
    private String sConstraintType		= null;    
    private String sConstraintDate		= null;    
    private String sMilestones      	= null;
 
public TaskDocument () throws Exception {
			super();		
		}
    
public TaskDocument(String sID,String sTaskName,String sDescription,String sPercentComplete,String sDurationValue,String sDurationUnit,String sStartDate,String sFinishDate,String sPredecessor,String sResourceName,String sTaskNotes,String sCriticalTask,String sPriority,String sDeadlineDate,String sConstraintType,String sConstraintDate,String sMilestones) {
                                                                                                                                 
        this.sID 				 =sID; 							                                                                                            
        this.sTaskName		     =sTaskName;		           						                                                                                  
        this.sDescription 	     =sDescription; 	    		                                                                                        
        this.sPercentComplete	 =sPercentComplete;	    	   			                                                                                      
        this.sDurationValue 	 =sDurationValue;    	   					                                                                                          
        this.sDurationUnit 	     =sDurationUnit; 	    
        this.sStartDate 		 =sStartDate; 		       		    					                                                                                      
        this.sFinishDate 		 =sFinishDate; 		    
        this.sPredecessor 	     =sPredecessor; 	    					                                                                                   
        this.sResourceName 	     =sResourceName; 	    
        this.sTaskNotes   	     =sTaskNotes;   	           
        this.sCriticalTask       =sCriticalTask;                 				  
        this.sPriority 		     =sPriority; 		         				      
        this.sDeadlineDate	     =sDeadlineDate;	      					  
	    this.sConstraintType	 =sConstraintType;	        
        this.sConstraintDate	 =sConstraintDate;	             
        this.sMilestones         =sMilestones;              
   }                                                                                                                                
    public String getID() {                                                                                                    
       return this.sID;                                                                                                        
    }                                                                                                                            
                                                                                                                                 
    public String getTaskName() {                                                                                             
       return this.sTaskName;                                                                                                 
    }                                         
                                              
    public String getDescription() {
       return this.sDescription;
    }

    public String getPercentComplete() {                                                                                                    
       return this.sPercentComplete;                                                                                                        
    }                                                                                                                            
                                                                                                                                 
    public String getDurationValue() {                                                                                             
       return this.sDurationValue;                                                                                                 
    }                                         
                                              
    public String getDurationUnit() {
       return this.sDurationUnit;
    }
    public String getStartDate() {
       return this.sStartDate;
    }

    public String getFinishDate() {
       return this.sFinishDate;
    }

    public String getPredecessor() {
       return this.sPredecessor;
    }    
    
    public String getResourceName() {
       return this.sResourceName;
    }
    
    public String getTaskNotes() {
       return this.sTaskNotes;
    }    
    
    public String getCriticalTask() {                                                                                                    
       return this.sCriticalTask;                                                                                                        
    } 
   
    public String getPriority() {
       return this.sPriority;
    }

    public String getDeadlineDate() {
       return this.sDeadlineDate;
    }    
    
    public String getConstraintType() {
       return this.sConstraintType;
    }
    
    public String getConstraintDate() {
       return this.sConstraintDate;
    }      
    
    public String getMilestones() {                                                                                                    
       return this.sMilestones;                                                                                                        
    } 

  public int compareTo(Object o) {
	TaskDocument n = (TaskDocument)o;
	int lastCmp = sID.compareTo(n.sID);
		return (lastCmp);
  }		
}
