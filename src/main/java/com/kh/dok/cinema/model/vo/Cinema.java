package com.kh.dok.cinema.model.vo;

public class Cinema {
	private String theaterId;
	private String mid;
	private String theaterName;
	private String theaterRoot;
	private String theaterText;

	
	public Cinema(){}


	public String getTheaterId() {
		return theaterId;
	}


	public void setTheaterId(String theaterId) {
		this.theaterId = theaterId;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getTheaterName() {
		return theaterName;
	}


	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}


	public String getTheaterRoot() {
		return theaterRoot;
	}


	public void setTheaterRoot(String theaterRoot) {
		this.theaterRoot = theaterRoot;
	}


	public String getTheaterText() {
		return theaterText;
	}


	public void setTheaterText(String theaterText) {
		this.theaterText = theaterText;
	}


	public Cinema(String theaterId, String mid, String theaterName, String theaterRoot, String theaterText) {
		super();
		this.theaterId = theaterId;
		this.mid = mid;
		this.theaterName = theaterName;
		this.theaterRoot = theaterRoot;
		this.theaterText = theaterText;
	}


	@Override
	public String toString() {
		return "Cinema [theaterId=" + theaterId + ", mid=" + mid + ", theaterName=" + theaterName + ", theaterRoot="
				+ theaterRoot + ", theaterText=" + theaterText + "]";
	}
	
	
}
