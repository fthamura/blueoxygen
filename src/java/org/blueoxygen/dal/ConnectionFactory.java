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
import java.io.*;

public class ConnectionFactory
{
	protected String m_sDbDriver;
	protected String m_sDbServer;
	protected String m_sDbLogin;
	protected String m_sDbPassword;
	protected String m_sLogFileString;
	protected double m_dMaxConnTime;
	protected int m_iMinConns;
	protected int m_iMaxConns;

	/** */
	private static final
		ConnectionFactory CONN_FACTORY = new ConnectionFactory();
	/** */
	private static final
		ConnectionPool POOL_INSTANCE = CONN_FACTORY.getPoolInstance();

	/**
	 *
	 */
	public static Connection
		getConnectionInstance()
	{
		return POOL_INSTANCE.getConnection();
	}

	/**
	 *
	 */
	protected void
		finalize()
	throws Throwable
	{
		try {
			POOL_INSTANCE.destroy(2000);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			super.finalize();
		}
	}

	/** */
	private ConnectionFactory()
	{
		setDbDriver("org.gjt.mm.mysql.Driver");
		setDbServer("jdbc:mysql://localhost/smiletown");
		setDbLogin("");
		setDbPassword("");
		setMinConn(3);
		setMaxConn(300);
		setLogFile("..\\logs\\logmysql");
		setMaxConnTime(7);
	}

	/**
	 *
	 */
	private ConnectionPool
		getPoolInstance()
	{
		ConnectionPool oPool = null;

		try {
			oPool = new ConnectionPool
				(getDbDriver(),
				 getDbServer(),
				 getDbLogin(),
				 getDbPassword(),
				 getMinConn(),
				 getMaxConn(),
				 getLogFile(),
				 getMaxConnTime());
		} catch (IOException e) {
			e.printStackTrace();
		}

		return oPool;
	}

	public void setDbDriver (String _sDbDriver) { m_sDbDriver = _sDbDriver; }
	public String getDbDriver() { return m_sDbDriver; }

	public void setDbServer (String _sDbServer) { m_sDbServer = _sDbServer; }
	public String getDbServer() { return m_sDbServer; }

	public void setDbLogin (String _sDbLogin) { m_sDbLogin = _sDbLogin; }
	public String getDbLogin() { return m_sDbLogin; }

	public void setDbPassword (String _sDbPassword) {
		m_sDbPassword = _sDbPassword;
	}
	public String getDbPassword() { return m_sDbPassword; }

	public void setMinConn (int _iMinConns) { m_iMinConns = _iMinConns; }
	public int getMinConn() { return m_iMinConns; }

	public void setMaxConn (int _iMaxConns) { m_iMaxConns = _iMaxConns; }
	public int getMaxConn() { return m_iMaxConns; }

	public void setLogFile (String _sLogFileString) {
		m_sLogFileString = _sLogFileString;
	}
	public String getLogFile() { return m_sLogFileString; }

	public void setMaxConnTime (double _dMaxConnTime) {
		m_dMaxConnTime = _dMaxConnTime;
	}
	public double getMaxConnTime() { return m_dMaxConnTime; }

}
