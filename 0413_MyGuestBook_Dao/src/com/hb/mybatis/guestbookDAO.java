package com.hb.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

// DB관련된 처리하는 클래스
public class guestbookDAO {
	private static SqlSession ss;
	
	// 싱글턴 패턴 : 프로그램이 끝날때까지 해당 객체는 하나만 가지고 사용 999
	private synchronized static SqlSession getSql(){
		if(ss==null){
			ss = DBService.getFactory().openSession(false);
		}
		return ss;
	}
	
	//list 처리하는 메소드
	public static List<VO> getList(){
		return getSql().selectList("list");
	}
	
	//insert 처리하는 메소드
	public static int getInsert(VO vo){
		int result =  getSql().insert("insert",vo);
		ss.commit();
		return result;
	}
	
	//상세보기 처리하는 메소드
	public static VO getOneList(String idx){
		return getSql().selectOne("onelist",idx);
	}
	
	//update 처리하는 메소드
	public static int getUpdate(VO vo){
		int result =getSql().update("update",vo);
		ss.commit();
		return result;
	}
	
	//delete 처리하는 메소드
	public static int getDel(VO vo){
		int result = getSql().delete("delete",vo);
		ss.commit();
		return result;
	}
	
	
}
