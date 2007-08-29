/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.dal;

import java.sql.*;

/**
 *
 */
public class DBConnection
{
	/** */
	private Connection m_oConn = null;

	/** */
	public DBConnection()
	throws SQLException
	{
//		try {
		//m_oConn = ConnectionFactory.getConnectionInstance();
			m_oConn = (new DbBean()).getConn();
/*		} catch (Exception e) {
			e.printStackTrace();
		}
*/	}

	/**
	 *
	 */
	public ResultSet
		executeQuery (String _sQuery)
	throws SQLException
	{
		return m_oConn.createStatement().executeQuery(_sQuery);
	}

}
