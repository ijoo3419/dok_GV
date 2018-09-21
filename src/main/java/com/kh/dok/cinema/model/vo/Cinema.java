package com.kh.dok.cinema.model.vo;

public class Cinema {
	private String thater_id;
	private String mid;
	private String theater_name;
	private String theater_root;
	private String theater_text;
	
	public Cinema(){}

	public Cinema(String thater_id, String mid, String theater_name, String theater_root, String theater_text) {
		super();
		this.thater_id = thater_id;
		this.mid = mid;
		this.theater_name = theater_name;
		this.theater_root = theater_root;
		this.theater_text = theater_text;
	}

	public String getThater_id() {
		return thater_id;
	}

	public String getMid() {
		return mid;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public String getTheater_root() {
		return theater_root;
	}

	public String getTheater_text() {
		return theater_text;
	}

	public void setThater_id(String thater_id) {
		this.thater_id = thater_id;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public void setTheater_root(String theater_root) {
		this.theater_root = theater_root;
	}

	public void setTheater_text(String theater_text) {
		this.theater_text = theater_text;
	}

	@Override
	public String toString() {
		return "Cinema [thater_id=" + thater_id + ", mid=" + mid + ", theater_name=" + theater_name + ", theater_root="
				+ theater_root + ", theater_text=" + theater_text + "]";
	}
	
	
}
