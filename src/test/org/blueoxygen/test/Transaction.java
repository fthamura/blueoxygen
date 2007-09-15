/*******************************************************************************
 * Copyright (c) 2001 - 2004 BlueOxygen Technology.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the BlueOxygen Software License v1.0
 * which accompanies this distribution, and is available at
 *
 * Contributors:
 *     BlueOxygen Cimande Team - initial API and implementation
 *******************************************************************************/
package org.blueoxygen.test;

/*
 * Transaction.java
 *
 * Created on May 24, 2000, 10:02 PM
 */
 
import java.sql.*;

/** 
 * Tests declared transaction capability.
 *
 * @author  mmatthew
 * @version $Id: Transaction.java,v 1.1 2005/04/15 06:05:36 fthamura Exp $
 */

public class Transaction extends Object {

  static String DBUrl = "jdbc:mysql://localhost/smiletown";


  public static void main(String[] args) throws Exception {
    new Transaction();
  }

  public Transaction() throws Exception
  {
    Connection Conn = null;
    Statement Stmt = null;

    try {
      Class.forName("org.gjt.mm.mysql.Driver").newInstance();

      Conn = DriverManager.getConnection(DBUrl);

      Conn.setAutoCommit(true);

      Stmt = Conn.createStatement();

      try {
        Stmt.executeUpdate("DROP TABLE trans_test");
      }
      catch (SQLException sqlEx) { /* ignore */}

      Stmt.executeUpdate("CREATE TABLE trans_test (id int not null primary key, decdata double) type=BDB");

      Conn.setAutoCommit(false);

      Stmt.executeUpdate("INSERT INTO trans_test (id, decdata) VALUES (1, 21.0)");
       Stmt.executeUpdate("INSERT INTO trans_test (id, decdata) VALUES (2, 23.485115)");

      Conn.rollback();
       System.out.println("Roll Ok");

      ResultSet RS = Stmt.executeQuery("SELECT * from trans_test");

      if (!RS.next()) {
        System.out.println("Ok");
      }
      else {
        System.out.println("Rollback failed");
      }

      Stmt.executeUpdate("INSERT INTO trans_test (id, decdata) VALUES (2, 23.485115)");
       Stmt.executeUpdate("INSERT INTO trans_test (id, decdata) VALUES (1, 21.485115)");

      Conn.commit();

      RS = Stmt.executeQuery("SELECT * from trans_test where id=2");

      if (RS.next()) {
        System.out.println(RS.getDouble(2));
        System.out.println("Ok");
      }
      else {
        System.out.println("Rollback failed");
      }
    }
    catch (Exception ex) {
      throw ex;
    }
    finally {
      if (Stmt != null) {
        try {
          Stmt.close();
        }
        catch (SQLException SQLEx) { /* ignore */ }
      }
      
      if (Conn != null) {
        try {
          Conn.close();
        }
        catch (SQLException SQLEx) { /* ignore */ }
      }
    }     
  }
}
