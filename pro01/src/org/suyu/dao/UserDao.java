package org.suyu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.suyu.dto.Notice;
import org.suyu.person.User;

public class UserDao {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private MysqlDB db = new MysqlDB();
	 
	public List<User> getUserList() {
		List<User> userList = new ArrayList<User>();
		try {
	    	con = db.connect();
	    	pstmt = con.prepareStatement(MysqlDB.SELECT_ALL_USERS);
	    	rs = pstmt.executeQuery();
	     while(rs.next()) {
	    	User user = new User(rs.getInt("id"),
	    			                   rs.getString("resdate"),
	    			                   rs.getString("email"),
	    			                   rs.getString("pw"),
	    			                   rs.getString("name"),
	    			                   rs.getString("addr"),
	    			                   rs.getString("postcode"));
	    	userList.add(user);
	    }
	    } catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
	    return userList;
	}
	
	public int joinUser(String email, String pw , String name , String addr , String postcode) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.JOIN_USER);
				pstmt.setString(1, email);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.setString(4, addr);
				pstmt.setString(5, postcode);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	
	public User getOneUser(String email) {
		User result = new User();
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.SELECT_ONE_USER);
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					User user = new User(rs.getInt("id"),
							                   rs.getString("resdate"),
							                   rs.getString("email"),
							                   rs.getString("pw"),
							                   rs.getString("name"),
			    			                   rs.getString("addr"),
			    			                   rs.getString("postcode"));
					result = user;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return result;
	}
	
	
	
	
	
	
	public int deleteUser(int id) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.DELETE_ONE_USER);
				pstmt.setInt(1, id);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
	public int editUser(String email,String pw,String name, String addr, String postcode) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.UPDATE_ONE_USER);
				pstmt.setString(1, pw);
				pstmt.setString(2, name);
				pstmt.setString(3, email);
				pstmt.setString(4, addr);
				pstmt.setString(5, postcode);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}

		return cnt;
	}
	


}
