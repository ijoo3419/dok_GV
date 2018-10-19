package com.kh.dok.licensee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dok.cinema.model.vo.Cinema2;
import com.kh.dok.licensee.model.vo.MovieRoom;
import com.kh.dok.licensee.model.vo.Play;
import com.kh.dok.licensee.model.vo.Turning;

@Repository
public class LicenseeDaoImpl implements LicenseeDao{

	private Object selectOne;

	//정태 영화관 추가
	@Override
	public int insertTheater(SqlSessionTemplate sqlSession, Cinema2 cm) {
		return sqlSession.insert("Cinema.insertTheater", cm);
	}
	
	@Override
	public int insertTheaterBoard(SqlSessionTemplate sqlSession, Cinema2 cm) {
		
		return sqlSession.insert("Cinema.insertTheaterBoard", cm);
	}

	
	@Override
	public int insertTheaterBoardFile(SqlSessionTemplate sqlSession, Cinema2 cm) {
		return sqlSession.insert("Cinema.insertTheaterBoardFile", cm);
	}
	
	@Override
	public String selectOneBoardId(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("Cinema.selectOneBoardId");
	}

	
	
	//정태 상영관 등록
	@Override
	public int insertMovieRoom(SqlSessionTemplate sqlSession, MovieRoom mr) {
		return sqlSession.insert("Licensee.insertMovieRoom", mr);
	}

	//정태 상영관 아이디 가져오기
	@Override
	public MovieRoom checkMovieRoomId(SqlSessionTemplate sqlSession, MovieRoom mr) {
		MovieRoom movieRoomId = sqlSession.selectOne("Licensee.selectIdCheck", mr);
		
		return movieRoomId;
	}
	
	//상영 등록
	@Override
	public int insertPlay(SqlSessionTemplate sqlSession, Play p) {
		int resultPlay = sqlSession.insert("Licensee.insertPlay", p);
		
		return resultPlay;
	}

	//회차 등록
	@Override
	public int insertTurning(SqlSessionTemplate sqlSession, Turning t) {
		return sqlSession.insert("Licensee.insertTurning", t);
	}

	//상영 아이디 찾기
	@Override
	public String selectOnePlayId(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("Licensee.selectOnePlayPlayId");
	}

	
	
	
}

	/*@Override
	public int insertFile(SqlSessionTemplate sqlSession, BoardFile adFile) {
		int insert = sqlSession.insert("Licensee.insertFile",adFile);
		
		if(insert < 1){
			throw new UploadException("파일 업로드 실패");
		}
		return insert;
	
	}
*/
	/*@Override
	public ArrayList<BoardFile> selectFile(SqlSessionTemplate sqlSession) {
		ArrayList<BoardFile> bf = (ArrayList)sqlSession.selectList("Licensee.selectFile");

		return bf;
	}
	
	 */

