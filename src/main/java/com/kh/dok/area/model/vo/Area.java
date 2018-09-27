package com.kh.dok.area.model.vo;

public class Area implements java.io.Serializable{
	private String area_id;
	private String area_name;
	private int area_level;
	private String area_parents;
	
	public Area(){}

	public Area(String area_id, String area_name, int area_level, String area_parents) {
		super();
		this.area_id = area_id;
		this.area_name = area_name;
		this.area_level = area_level;
		this.area_parents = area_parents;
	}

	public String getArea_id() {
		return area_id;
	}

	public void setArea_id(String area_id) {
		this.area_id = area_id;
	}

	public String getArea_name() {
		return area_name;
	}

	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}

	public int getArea_level() {
		return area_level;
	}

	public void setArea_level(int area_level) {
		this.area_level = area_level;
	}

	public String getArea_parents() {
		return area_parents;
	}

	public void setArea_parents(String area_parents) {
		this.area_parents = area_parents;
	}

	@Override
	public String toString() {
		return "Area [area_id=" + area_id + ", area_name=" + area_name + ", area_level=" + area_level
				+ ", area_parents=" + area_parents + "]";
	}
	
}
