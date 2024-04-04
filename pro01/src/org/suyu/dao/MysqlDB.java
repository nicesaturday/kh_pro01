package org.suyu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MysqlDB implements SqlLang {
	private Connection con = null;
	
	final static String URL = "jdbc:mysql://localhost:3306/master";
	final static String USERID = "root";
	final static String USERPW = "1234";
	
	public Connection Connect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				con = DriverManager.getConnection(URL,USERID,USERPW);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public void close(Connection con) {
		if(con != null) {
			try {
			con.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
	}
	
	public void close(Connection con ,PreparedStatement pstmt) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
		
		if(con != null) {
			try {
			con.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
	}
	
	public void close(Connection con ,PreparedStatement pstmt, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
		
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
		
		if(con != null) {
			try {
			con.close();
			} catch (SQLException e) {
		  	e.printStackTrace();
		}
		} 
	}
}
