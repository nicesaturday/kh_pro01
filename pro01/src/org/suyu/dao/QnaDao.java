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
	 
	public List<Qna> getQnaList() {
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
	    			                   rs.getString("aemail")
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
	
	public int newQuestion(String title, String content , String email) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.INSERT_QUESTION);
				pstmt.setString(1, title);
				pstmt.setString(2, content);
				pstmt.setString(3, email);
				cnt = pstmt.executeUpdate();
				pstmt = null;
				
				pstmt = con.prepareStatement(MysqlDB.ADD_PARID);
				pstmt.executeUpdate();
				
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
	
	public int newAnswer(int parid , String title, String content , String email) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.INSERT_ANSWER);
				pstmt.setInt(1, parid);
				pstmt.setString(2, title);
				pstmt.setString(3, content);
				pstmt.setString(4, email);
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
	
	
	public Qna getOneQna(int id, boolean viewBreak) {
		Qna result = new Qna();
		try {
			con = db.connect();
			try {
				
				if(viewBreak) {
					pstmt = con.prepareStatement(MysqlDB.UPDATE_VISITED_QNA);
					pstmt.setInt(1, id);
					pstmt.executeUpdate();
					pstmt = null;
				}
				

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
			                   rs.getString("aemail")
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
	
	public int deleteQuestion(int parid) {
		int cnt = 0;
		try {
			con = db.connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.DELETE_ONE_QUESTION);
				pstmt.setInt(1, parid);
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
