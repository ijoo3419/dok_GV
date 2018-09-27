package com.kh.dok.movie.model.vo;

import java.sql.Date;

public class MovieSumbnail {
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
	private String file_src;
	private int file_level;
	
	public MovieSumbnail(){}

	public MovieSumbnail(String movie_id, String movie_title, String movie_etitle, String movie_content, Date open_date,
			String director_name, String production_com, String movie_age, String genre, int runnig_time,
			String file_src, int file_level) {
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
		this.file_src = file_src;
		this.file_level = file_level;
	}

	public String getMovie_id() {
		return movie_id;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public String getMovie_etitle() {
		return movie_etitle;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public String getDirector_name() {
		return director_name;
	}

	public String getProduction_com() {
		return production_com;
	}

	public String getMovie_age() {
		return movie_age;
	}

	public String getGenre() {
		return genre;
	}

	public int getRunnig_time() {
		return runnig_time;
	}

	public String getFile_src() {
		return file_src;
	}

	public int getFile_level() {
		return file_level;
	}

	public void setMovie_id(String movie_id) {
		this.movie_id = movie_id;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public void setMovie_etitle(String movie_etitle) {
		this.movie_etitle = movie_etitle;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	public void setProduction_com(String production_com) {
		this.production_com = production_com;
	}

	public void setMovie_age(String movie_age) {
		this.movie_age = movie_age;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public void setRunnig_time(int runnig_time) {
		this.runnig_time = runnig_time;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}

	@Override
	public String toString() {
		return "MovieSumbnail [movie_id=" + movie_id + ", movie_title=" + movie_title + ", movie_etitle=" + movie_etitle
				+ ", movie_content=" + movie_content + ", open_date=" + open_date + ", director_name=" + director_name
				+ ", production_com=" + production_com + ", movie_age=" + movie_age + ", genre=" + genre
				+ ", runnig_time=" + runnig_time + ", file_src=" + file_src + ", file_level=" + file_level + "]";
	}
	
	

}
