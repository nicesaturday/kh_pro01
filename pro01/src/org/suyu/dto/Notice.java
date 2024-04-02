package org.suyu.dto;

public class Notice {
	private int id;
	private String title;
	private String content;
	private String resdate;
	private int visited;
	public Notice(int id, String title, String content, String resdate, int visited) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.resdate = resdate;
		this.visited = visited;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	
	
}
