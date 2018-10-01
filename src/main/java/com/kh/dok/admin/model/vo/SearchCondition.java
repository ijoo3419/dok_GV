package com.kh.dok.admin.model.vo;

public class SearchCondition implements java.io.Serializable{
	private String id;
	private String name;
	private String searchCondition;
	
	public SearchCondition(){}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public SearchCondition(String id, String name, String searchCondition) {
		super();
		this.id = id;
		this.name = name;
		this.searchCondition = searchCondition;
	}

	@Override
	public String toString() {
		return "SearchCondition [id=" + id + ", name=" + name + ", searchCondition=" + searchCondition + "]";
	}
	
	
	
}
