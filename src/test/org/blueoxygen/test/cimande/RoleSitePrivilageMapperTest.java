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

import org.blueoxygen.cimande.rolemapper.RoleSitePrivilageMapper;
import org.blueoxygen.cimande.descriptor.ModuleFunction;
import java.sql.*;
import java.util.*;

public class RoleSitePrivilageMapperTest {
	public static void main(String[] args) {
		String sRoleSiteId ;
		sRoleSiteId = "1";
		String sSiteId;
		sSiteId="EE185CE0B82B41C1724F284685";
		
		try {
			
			RoleSitePrivilageMapper rspMapper ;
			rspMapper = new RoleSitePrivilageMapper(sRoleSiteId);
			System.out.println("Object Name:"+rspMapper);
			System.out.println("Role ID:"+rspMapper.getRoleId());
			
			
			Iterator x;
			ModuleFunction moduleFunction;
				x = rspMapper.getModuleFunctionMap().keySet().iterator();
				while (x.hasNext()) {
					String fieldValue = (String)x.next();
					System.out.print(fieldValue+"=");
					// ModuleFunction Object = rspMapper.getMap.geT(fieldValue)
					moduleFunction = (ModuleFunction)rspMapper.getModuleFunctionMap().get(fieldValue);
					System.out.println(moduleFunction.getDescription());
				}
			
		} catch (SQLException e) {
	 	   System.err.println("SQL Error: " + e);
		} catch (Exception e) {
	 	   System.err.println("Error: " + e);
		}
	
		
    }
}
