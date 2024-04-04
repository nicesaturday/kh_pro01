package org.suyu.test;

import java.util.ArrayList;
import java.util.List;

import org.suyu.dao.NoticeDao;
import org.suyu.dto.Notice;

public class MySqlTest {
	public static void main(String[] args) {
		NoticeDao nd = new NoticeDao();
		List<Notice> arr = new ArrayList<Notice>();
		arr = nd.getNoticeList();
		
		for(Notice x : arr) {
			System.out.println(x.toString());
		}
	}
}
