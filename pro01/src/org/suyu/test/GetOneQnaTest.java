package org.suyu.test;

import org.suyu.dao.QnaDao;
import org.suyu.dto.Qna;

public class GetOneQnaTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		QnaDao qd = new QnaDao();
		Qna qna = qd.getOneQna(1, false);
		System.out.println(qna.toString());
		
	}

}
