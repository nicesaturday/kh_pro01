package org.suyu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.suyu.dto.Notice;
import org.suyu.dto.Traffic;

public class TrafficDao {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private MysqlDB db = new MysqlDB();

	
	
	public List<Traffic> getTrafficList() {
	    List<Traffic> trafficList = new ArrayList<Traffic>();
	    try {
	    	con = db.connect();
	    	pstmt = con.prepareStatement(MysqlDB.SELECT_TRAFFIC);
	    	rs = pstmt.executeQuery();
	     while(rs.next()) {
	    	Traffic traffic = new Traffic(rs.getInt("id"),
	    			                   rs.getString("type"),
	    			                   rs.getString("num"),
	    			                   rs.getString("route"),
	    			                   rs.getString("comment"),
	    			                   rs.getString("uri"));
	    	trafficList.add(traffic);
	    	
	    }
	    } catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
	    return trafficList;
	}
}
