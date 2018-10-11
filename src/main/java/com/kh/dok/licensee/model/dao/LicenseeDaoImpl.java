package com.kh.dok.licensee.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.admin.model.exception.UploadException;
import com.kh.dok.board.model.vo.BoardFile;
import com.kh.dok.cinema.model.vo.Cinema;
import com.kh.dok.licensee.model.vo.MovieRoom;

@Repository
public class LicenseeDaoImpl implements LicenseeDao{

	@Override
	public int insertTheater(SqlSessionTemplate sqlSession, Cinema cm) {
		return sqlSession.insert("Licensee.insertTheater", cm);
	}

	@Override
	public int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr) {
		return sqlSession.insert("MovieRoom.insertMovieRoom", mr);
	}

	@Override
	public MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr) {
		MovieRoom movieRoomId = sqlSession.selectOne("MovieRoom.selectIdCheck", mr);
		
		return movieRoomId;
	}

	@Override
	public int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile) {
		int insert = sqlSession.insert("Licensee.insertFile",adFile);
		
		/*if(insert < 1){
			throw new UploadException("파일 업로드 실패");
		}*/
		return insert;
	
	}

	@Override
	public ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession) {
		ArrayList<BoardFile> bf = (ArrayList)sqlSession.selectList("Licensee.selectFile");


		return bf;
	}
	

}
