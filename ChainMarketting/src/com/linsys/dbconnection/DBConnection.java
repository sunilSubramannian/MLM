package com.linsys.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	
	public static Connection getConnection() throws SQLException  {
		Connection connect = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connect = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/db_mlm?"
                    + "user=root&password=sunil");
		}
		catch(Exception e){e.printStackTrace();}
		return connect;
	}
}
