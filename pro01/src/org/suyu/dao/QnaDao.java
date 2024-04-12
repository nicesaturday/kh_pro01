package org.suyu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.suyu.dto.Qna;


public class QnaDao {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private MysqlDB db = new MysqlDB();
	 
	public List<Qna> getUserList() {
		List<Qna> qnaList = new ArrayList<Qna>();
		try {
	    	con = db.connect();
	    	pstmt = con.prepareStatement(MysqlDB.SELECT_ALL_QNA);
	    	rs = pstmt.executeQuery();
	     while(rs.next()) {
	    	 Qna qna = new Qna(rs.getInt("id"),
	    			                   rs.getInt("plevel"),
	    			                   rs.getInt("parid"),
	    			                   rs.getString("title"),
	    			                   rs.getString("content"),
	    			                   rs.getString("resdate"),
	    			                   rs.getInt("visited"),
	    			                   rs.getString("aid")
	    			 );
	    	 qnaList.add(qna);
	    	
	    }
	    } catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
	    return qnaList;
	}
	
	public int newQuestion(String title, String content , String aid) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.NEW_QUESTION);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, aid);
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
	
	
	public Qna getOneQna(int id) {
		Qna result = new Qna();
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.SELECT_ONE_QNA);
				pstmt.setInt(1, id);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					Qna qna = new Qna(rs.getInt("id"),
			                   rs.getInt("plevel"),
			                   rs.getInt("parid"),
			                   rs.getString("title"),
			                   rs.getString("content"),
			                   rs.getString("resdate"),
			                   rs.getInt("visited"),
			                   rs.getString("aid")
			 );
					result = qna;
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
	
	
	
	
	public int deleteAnswer(int id) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.DELETE_ONE_ANSWER);
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
	
	public int deleteQuestion(int id) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.DELETE_ONE_QUESTION);
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
	

}
