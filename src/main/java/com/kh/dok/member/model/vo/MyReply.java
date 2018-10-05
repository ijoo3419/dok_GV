package com.kh.dok.member.model.vo;

public class MyReply implements java.io.Serializable {

	private String file_src;
	private String movie_title;
	private String grade_count;
	private String rcontent;
	private String recommend_count;
	private String rcreate_date;
	private String division;
	
	public MyReply(){}

	public String getFile_src() {
		return file_src;
	}

	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getGrade_count() {
		return grade_count;
	}

	public void setGrade_count(String grade_count) {
		this.grade_count = grade_count;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public String getRecommend_count() {
		return recommend_count;
	}

	public void setRecommend_count(String recommend_count) {
		this.recommend_count = recommend_count;
	}

	public String getRcreate_date() {
		return rcreate_date;
	}

	public void setRcreate_date(String rcreate_date) {
		this.rcreate_date = rcreate_date;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	@Override
	public String toString() {
		return "MyReply [file_src=" + file_src + ", movie_title=" + movie_title + ", grade_count=" + grade_count
				+ ", rcontent=" + rcontent + ", recommend_count=" + recommend_count + ", rcreate_date=" + rcreate_date
				+ ", division=" + division + "]";
	}

	public MyReply(String file_src, String movie_title, String grade_count, String rcontent, String recommend_count,
			String rcreate_date, String division) {
		super();
		this.file_src = file_src;
		this.movie_title = movie_title;
		this.grade_count = grade_count;
		this.rcontent = rcontent;
		this.recommend_count = recommend_count;
		this.rcreate_date = rcreate_date;
		this.division = division;
	}
	
	

	
}
