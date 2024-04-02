package org.suyu.dto;

public class Traffic {
	private int id;
	private int type;
	private String route;
	private String comment;
	public Traffic(int id, int type, String route, String comment) {
		super();
		this.id = id;
		this.type = type;
		this.route = route;
		this.comment = comment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
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
	@Override
	public String toString() {
		return "Traffic [id=" + id + ", type=" + type + ", route=" + route + ", comment=" + comment + "]";
	}
	
	
}
