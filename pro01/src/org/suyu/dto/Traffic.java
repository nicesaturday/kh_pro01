package org.suyu.dto;

public class Traffic {
	private int id;
	private String type;
	private String num;
	private String route;
	private String comment;
	private String uri;
	
	public Traffic() {}
	public Traffic(int id, String type, String num, String route, String comment, String uri) {
		super();
		this.id = id;
		this.type = type;
		this.num = num;
		this.route = route;
		this.comment = comment;
		this.uri = uri;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	@Override
	public String toString() {
		return "Traffic [id=" + id + ", type=" + type + ", num=" + num + ", route=" + route + ", comment=" + comment
				+ ", uri=" + uri + "]";
	}
	
	
	
}
