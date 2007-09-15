/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.test.cimande;
/**
 * @author Frans Thamura
 *
 */
import org.blueoxygen.cimande.rolemapper.*;
import org.blueoxygen.cimande.descriptor.*;
import java.sql.*;
import java.util.*;

public class RoleSiteMapperTest {
	
	public static void main(String[] args) {
		String sRoleId = "", sSiteId ="", sModuleFunctionId, sSiteCreatorId;
		
		RoleSiteMapper rsMapper ;
		RoleSitePrivilageMapper rspMapper;
		Map mRSPMapper, mModuleFunction;
		Iterator x,y,z;
		ModuleFunction moduleFunction;
			
		String rsValue, rspValue;
		
		RoleSite roleSite;
		Site site;
		
		// Manipulate Role Manager

		sRoleId = "1";
		sSiteCreatorId = "EE185CE0B82B41C1724F284685";
		
		// add a RoleSite
		
		// add a ModuleFunction to a RoleSitePrivilage
		// blueoxygen ED2E4202F2AE0340726C67A877
		sSiteId="EE185CE0B82B41C1724F284685";
		
		sModuleFunctionId = "ECE4EFFA9FAC1F0A6BD1F28156";


	
		// View Procedure
		try {

			rsMapper = new RoleSiteMapper(sRoleId);
			
			WorkflowRole role = new WorkflowRole (sRoleId);
			
			System.out.println("Role Id:"+role.getId());
			System.out.println("Role Name:"+role.getName());
			System.out.println("Role Description:"+role.getDescription());
			System.out.println("--------------------");
					
			mRSPMapper = rsMapper.getRoleSitePrivilageMap();
				x = mRSPMapper.keySet().iterator();
				while (x.hasNext()) {
					rsValue = (String)x.next();
					
					// Role Site Information
					System.out.println("Role Site ID:"+rsValue);
					rspMapper = (RoleSitePrivilageMapper)mRSPMapper.get(rsValue );
					 roleSite = (RoleSite)rspMapper.getRoleSite();
					 site = roleSite.getSite();
					
					System.out.println("Site Name: " + site.getName());
					
					mModuleFunction = rspMapper.getModuleFunctionMap();
						y = mModuleFunction .keySet().iterator();
						while (y.hasNext()) {
							rspValue = (String)y.next();
							
							// Module Function Information
							System.out.print(rspValue +"=");
							moduleFunction = (ModuleFunction)mModuleFunction.get(rspValue);
							System.out.println(moduleFunction.getDescription() );
						}
				}
			
		} catch (SQLException e) {
	 	   System.err.println("SQL Error: " + e);
		} catch (Exception e) {
	 	   System.err.println("RoleSiteMapperTest Error: " + e);
		}
	
		
    }
}
