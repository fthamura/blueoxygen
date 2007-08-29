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

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DbBean
{
	protected String dbURL="";
	protected String dbUser = "";
	protected String dbPassword = "";
	protected String dbDriver = "";
	protected String mySQL = "";
	protected ResultSet myResultSet = null;
	private Statement sql;	
	protected Connection dbCon;


{
		Properties properties = new Properties();
		try {
			properties.load(getResourceAsStream("cimande.properties"));
			dbURL = properties.getProperty("db.url");
			dbUser = properties.getProperty("db.user");
			dbPassword = properties.getProperty("db.password");
			dbDriver = properties.getProperty("db.driver");
		} catch (IOException e) {
			e.printStackTrace();
		} catch (NullPointerException npe) {
			System.out.println("file cimande.properties is not in classpath");
			npe.printStackTrace();
		}
	}
		
	public DbBean()
	{
		
	}
	
	public Connection getConn()
	throws SQLException
	{
		return DriverManager.getConnection(getDbURL(),getDbUser(),getDbPassword());
	}
	
	public boolean connect() throws ClassNotFoundException, SQLException
	{
		if (getDbDriver() == null)
			throw new NullPointerException("DB Driver is not found!");
		Class.forName(getDbDriver());
		dbCon = DriverManager.getConnection(getDbURL(), getDbUser(),
				getDbPassword());
		return true;
		
	}
	
	public void close() throws SQLException
	{
		dbCon.close();
		
	}
	/*
	 * Transaction support
	 */
	public void setAutoCommit(boolean autocommit) throws SQLException
	{		
		dbCon.setAutoCommit(autocommit);
	}
	
	public void setRollBack() throws SQLException
	{		
		dbCon.rollback();
	}
	
	public void Commit() throws SQLException
	{		
		dbCon.commit();
	}
	
	public ResultSet execSQL(String sql) throws SQLException 
	{
		Statement s=dbCon.createStatement();
		ResultSet r = s.executeQuery(sql);
		return (r==null) ? null : r;
	}

	public boolean execute(String sql) throws SQLException 
	{
		Statement s=dbCon.createStatement();
		boolean r = s.execute(sql);
		return r;
	}

	public int[] executeBatch() throws SQLException {
		return sql.executeBatch();
	}
		
	
	public String getDbDriver()
	{
		return dbDriver;
	}
	
	public void setDbDriver(String newValue)
	{
		dbDriver = newValue;
	}
	
	public String getDbUser()
	{
		return dbUser;
	}
	
	public void setDbUser(String newValue)
	{
		dbUser = newValue;
	}
	
	public String getDbPassword()
	{
		return dbPassword;
	}
	
	public void setDbPassword(String newValue)
	{
		dbPassword = newValue;
	}
	
	
	public String getDbURL()
	{
		return dbURL;
	}
	
	public void setDbURL(String newValue)
	{
		dbURL = newValue;
	}                
	public String toString() {
		return getDbURL() + getDbDriver() + getDbPassword() + getDbUser();
	}
	public static void main(String args[]) {
		try {
			DbBean db = new DbBean();
			System.out.println(db.toString());
			db.connect();
			String mySQL = "SELECT * FROM descriptor ";
			ResultSet rs = db.execSQL(mySQL);
			while (rs.next()) {
				System.out.println("=======================");
				System.out.println(rs.getString("id"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getString("description"));
			}
			db.close();
		} catch (SQLException e) {
			// 
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	public static URL getResource(String resourceName) {
		URL url = null;
		url = Thread.currentThread().getContextClassLoader().getResource(
				resourceName);
		if (url == null) {
			url = DbBean.class.getClassLoader().getResource(resourceName);
		}
		return url;
	}
	public static InputStream getResourceAsStream(String resourceName) {
		URL url = getResource(resourceName);
		try {
			return (url != null) ? url.openStream() : null;
		} catch (IOException e) {
			return null;
		}
	}
}	