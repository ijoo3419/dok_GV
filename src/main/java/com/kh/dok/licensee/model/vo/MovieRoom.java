package com.kh.dok.licensee.model.vo;

import org.springframework.stereotype.Repository;

@Repository
public class MovieRoom implements java.io.Serializable{
	
	private String movieId;
	private String theaterId;
	private String movieRoomName;
	private String movieRoomAddress;
	
	private String address1;
	private String address2;
	private String address3;
	private String mid;
	
	public MovieRoom(){}


	public String getMovieId() {
		return movieId;
	}


	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}


	public String getTheaterId() {
		return theaterId;
	}


	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}


	public String getMovieRoomName() {
		return movieRoomName;
	}


	public void setMovieRoomName(String movieRoomName) {
		this.movieRoomName = movieRoomName;
	}


	public String getMovieRoomAddress() {
		return movieRoomAddress;
	}


	public void setMovieRoomAddress(String movieRoomAddress) {
		this.movieRoomAddress = movieRoomAddress;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getAddress2() {
		return address2;
	}


	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	public String getAddress3() {
		return address3;
	}


	public void setAddress3(String address3) {
		this.address3 = address3;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public MovieRoom(String movieId, String theaterId, String movieRoomName, String movieRoomAddress, String address1,
			String address2, String address3, String mid) {
		super();
		this.movieId = movieId;
		this.theaterId = theaterId;
		this.movieRoomName = movieRoomName;
		this.movieRoomAddress = movieRoomAddress;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.mid = mid;
	}


	@Override
	public String toString() {
		return "MovieRoom [movieId=" + movieId + ", theaterId=" + theaterId + ", movieRoomName=" + movieRoomName
				+ ", movieRoomAddress=" + movieRoomAddress + ", address1=" + address1 + ", address2=" + address2
				+ ", address3=" + address3 + ", mid=" + mid + "]";
	}


	
	
}
