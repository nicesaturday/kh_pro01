package org.suyu.dto;

public class Datas {
	private int id;
	private String path;
	public Datas(int id, String path) {
		super();
		this.id = id;
		this.path = path;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	@Override
	public String toString() {
		return "Datas [id=" + id + ", path=" + path + "]";
	}
	
	
}
