package com.kh.dok.licensee.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class Play implements java.io.Serializable{

	private String playId;
	private String movieId;
	private String movieRoomId;
	private String playStatus;
	
	public Play(String playId, String movieId, String movieRoomId, String playStatus) {
		super();
		this.playId = playId;
		this.movieId = movieId;
		this.movieRoomId = movieRoomId;
		this.playStatus = playStatus;
	}
	public String getPlayId() {
		return playId;
	}
	public void setPlayId(String playId) {
		this.playId = playId;
	}
	public String getMovieId() {
		return movieId;
	}
	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	public String getMovieRoomId() {
		return movieRoomId;
	}
	public void setMovieRoomId(String movieRoomId) {
		this.movieRoomId = movieRoomId;
	}
	public String getPlayStatus() {
		return playStatus;
	}
	public void setPlayStatus(String playStatus) {
		this.playStatus = playStatus;
	}
	
	@Override
	public String toString() {
		return "Play [playId=" + playId + ", movieId=" + movieId + ", movieRoomId=" + movieRoomId + ", playStatus="
				+ playStatus + "]";
	}
	
	
	
	
	
}
