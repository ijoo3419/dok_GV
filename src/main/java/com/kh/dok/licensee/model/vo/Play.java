package com.kh.dok.licensee.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class Play implements java.io.Serializable{

	private String playId;
	private String movieId;
	private String playStatus;
	private String movieName;
	
	
	
	public Play(){}
	
	
	
	
	
	public Play(String playId, String movieId, String playStatus, String movieName) {
		super();
		this.playId = playId;
		this.movieId = movieId;
		this.playStatus = playStatus;
		this.movieName = movieName;
	}





	public String getMovieName() {
		return movieName;
	}



	public void setMovieName(String movieName) {
		this.movieName = movieName;
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
	public String getPlayStatus() {
		return playStatus;
	}
	public void setPlayStatus(String playStatus) {
		this.playStatus = playStatus;
	}





	@Override
	public String toString() {
		return "Play [playId=" + playId + ", movieId=" + movieId + ", playStatus=" + playStatus + ", movieName="
				+ movieName + "]";
	}
	
	
	
	
	
	
	
}
