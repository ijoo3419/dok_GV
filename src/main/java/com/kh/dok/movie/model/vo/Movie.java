package com.kh.dok.movie.model.vo;

import java.sql.Date;

public class Movie {
	private String movie_id;
	private String movie_title;
	private String movie_etitle;
	private String movie_content;
	private Date open_date;
	private String director_name;
	private String production_com;
	private String movie_age;
	private String genre;
	private int runnig_time;
	
	//박지용 추가
	private String turning_id;
	private String play_id;
	private String price;
	private Date turning_day;
	private String turning_time;
	private String movieroom_id;
	private String play_status;
	
	public Movie(){}

	public Movie(String movie_id, String movie_title, String movie_etitle, String movie_content, Date open_date,
			String director_name, String production_com, String movie_age, String genre, int runnig_time,
			String turning_id, String play_id, String price, Date turning_day, String turning_time, String movieroom_id,
			String play_status) {
		super();
		this.movie_id = movie_id;
		this.movie_title = movie_title;
		this.movie_etitle = movie_etitle;
		this.movie_content = movie_content;
		this.open_date = open_date;
		this.director_name = director_name;
		this.production_com = production_com;
		this.movie_age = movie_age;
		this.genre = genre;
		this.runnig_time = runnig_time;
		this.turning_id = turning_id;
		this.play_id = play_id;
		this.price = price;
		this.turning_day = turning_day;
		this.turning_time = turning_time;
		this.movieroom_id = movieroom_id;
		this.play_status = play_status;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getMovie_etitle() {
		return movie_etitle;
	}

	public void setMovie_etitle(String movie_etitle) {
		this.movie_etitle = movie_etitle;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}

	public String getDirector_name() {
		return director_name;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	public String getProduction_com() {
		return production_com;
	}

	public void setProduction_com(String production_com) {
		this.production_com = production_com;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public int getRunnig_time() {
		return runnig_time;
	}

	public void setRunnig_time(int runnig_time) {
		this.runnig_time = runnig_time;
	}

	public String getTurning_id() {
		return turning_id;
	}

	public void setTurning_id(String turning_id) {
		this.turning_id = turning_id;
	}

	public String getPlay_id() {
		return play_id;
	}

	public void setPlay_id(String play_id) {
		this.play_id = play_id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getTurning_day() {
		return turning_day;
	}

	public void setTurning_day(Date turning_day) {
		this.turning_day = turning_day;
	}

	public String getTurning_time() {
		return turning_time;
	}

	public void setTurning_time(String turning_time) {
		this.turning_time = turning_time;
	}

	public String getMovieroom_id() {
		return movieroom_id;
	}

	public void setMovieroom_id(String movieroom_id) {
		this.movieroom_id = movieroom_id;
	}

	public String getPlay_status() {
		return play_status;
	}

	public void setPlay_status(String play_status) {
		this.play_status = play_status;
	}

	@Override
	public String toString() {
		return "Movie [movie_id=" + movie_id + ", movie_title=" + movie_title + ", movie_etitle=" + movie_etitle
				+ ", movie_content=" + movie_content + ", open_date=" + open_date + ", director_name=" + director_name
				+ ", production_com=" + production_com + ", movie_age=" + movie_age + ", genre=" + genre
				+ ", runnig_time=" + runnig_time + ", turning_id=" + turning_id + ", play_id=" + play_id + ", price="
				+ price + ", turning_day=" + turning_day + ", turning_time=" + turning_time + ", movieroom_id="
				+ movieroom_id + ", play_status=" + play_status + "]";
	}
	
}
