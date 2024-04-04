package org.suyu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.suyu.dto.Notice;

public class NoticeDao {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private MysqlDB db = new MysqlDB();
	
	public List<Notice> getNoticeList() {
	    List<Notice> noticeList = new ArrayList<Notice>();
	    con = db.Connect();
	    try {
	    pstmt = con.prepareStatement(MysqlDB.SELCT_NOTICE);
	    rs = pstmt.executeQuery();
	    while(rs.next()) {
	    	Notice notice = new Notice(rs.getInt("id"),
	    			                   rs.getString("title"),
	    			                   rs.getString("content"),
	    			                   rs.getString("resdate"),
	    			                   rs.getInt("visited"));
	    	noticeList.add(notice);
	    	
	    }
	    } catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
	    
	    return noticeList;
	}
	
	public int insertNotice(String title,String content) {
		int cnt = 0;
		List<Notice> noticeList = new ArrayList<Notice>();
		try {
			con = db.Connect();
			try {
				pstmt = con.prepareStatement(MysqlDB.INS_NOTICE);
				pstmt.setString(1,title);
				pstmt.setString(2, content);
				cnt = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
