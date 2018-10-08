package com.kh.dok.cinema.model.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class MovieRoom implements Serializable{
	
	private String movieroom_id;
	private String theater_id;
	private String movieroom_name;
	private String moviroom_address;
	
	public MovieRoom(){}

	public MovieRoom(String movieroom_id, String theater_id, String movieroom_name, String moviroom_address) {
		super();
		this.movieroom_id = movieroom_id;
		this.theater_id = theater_id;
		this.movieroom_name = movieroom_name;
		this.moviroom_address = moviroom_address;
	}

	public String getMovieroom_id() {
		return movieroom_id;
	}

	public String getTheater_id() {
		return theater_id;
	}

	public String getMovieroom_name() {
		return movieroom_name;
	}

	public String getMoviroom_address() {
		return moviroom_address;
	}

	public void setMovieroom_id(String movieroom_id) {
		this.movieroom_id = movieroom_id;
	}

	public void setTheater_id(String theater_id) {
		this.theater_id = theater_id;
	}

	public void setMovieroom_name(String movieroom_name) {
		this.movieroom_name = movieroom_name;
	}

	public void setMoviroom_address(String moviroom_address) {
		this.moviroom_address = moviroom_address;
	}

	@Override
	public String toString() {
		return "MovieRoom [movieroom_id=" + movieroom_id + ", theater_id=" + theater_id + ", movieroom_name="
				+ movieroom_name + ", moviroom_address=" + moviroom_address + "]";
	}
	
	

}
