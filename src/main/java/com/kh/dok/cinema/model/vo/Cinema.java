package com.kh.dok.cinema.model.vo;

public class Cinema {
	private String theater_id;
	private String mid;
	private String theater_name;
	private String theater_root;
	private String theater_text;
	private String file_id;
	private String board_id;
	private String file_src;
	private String origin_name;
	private String edit_name;
	private int file_level;
	
	public Cinema(){}

	
	public Cinema(String theater_id, String mid, String theater_name, String theater_root, String theater_text,
			String file_id, String board_id, String file_src, String origin_name, String edit_name, int file_level) {
		super();
		this.theater_id = theater_id;
		this.mid = mid;
		this.theater_name = theater_name;
		this.theater_root = theater_root;
		this.theater_text = theater_text;
		this.file_id = file_id;
		this.board_id = board_id;
		this.file_src = file_src;
		this.origin_name = origin_name;
		this.edit_name = edit_name;
		this.file_level = file_level;
	}




	public String getTheater_id() {
		return theater_id;
	}

	public void setTheater_id(String theater_id) {
		this.theater_id = theater_id;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getTheater_name() {
		return theater_name;
	}

	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}

	public String getTheater_root() {
		return theater_root;
	}

	public void setTheater_root(String theater_root) {
		this.theater_root = theater_root;
	}

	public String getTheater_text() {
		return theater_text;
	}

	public void setTheater_text(String theater_text) {
		this.theater_text = theater_text;
	}

	public String getFile_id() {
		return file_id;
	}

	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}

	public String getBoard_id() {
		return board_id;
	}

	public void setBoard_id(String board_id) {
		this.board_id = board_id;
	}

	public String getFile_src() {
		return file_src;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public String getOrigin_name() {
		return origin_name;
	}

	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}

	public String getEdit_name() {
		return edit_name;
	}

	public void setEdit_name(String edit_name) {
		this.edit_name = edit_name;
	}

	public int getFile_level() {
		return file_level;
	}

	public void setFile_level(int file_level) {
		this.file_level = file_level;
	}




	@Override
	public String toString() {
		return "Cinema [theater_id=" + theater_id + ", mid=" + mid + ", theater_name=" + theater_name
				+ ", theater_root=" + theater_root + ", theater_text=" + theater_text + ", file_id=" + file_id
				+ ", board_id=" + board_id + ", file_src=" + file_src + ", origin_name=" + origin_name + ", edit_name="
				+ edit_name + ", file_level=" + file_level + "]";
	}

	
	
	
}
