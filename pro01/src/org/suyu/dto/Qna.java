package org.suyu.dto;



public class Qna {
	private int id;
	private int pLevel;
	private int parid;
	private String title;
	private String content;
	private String resDate;
	private int visited;
	private String aid;
	
	public Qna() {}
	
	public Qna(int id, int pLevel, int parid, String title, String content, String resDate, int visited, String aid) {
		super();
		this.id = id;
		this.pLevel = pLevel;
		this.parid = parid;
		this.title = title;
		this.content = content;
		this.resDate = resDate;
		this.visited = visited;
		this.aid = aid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getpLevel() {
		return pLevel;
	}
	public void setpLevel(int pLevel) {
		this.pLevel = pLevel;
	}
	public int getParid() {
		return parid;
	}
	public void setParid(int parid) {
		this.parid = parid;
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
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	@Override
	public String toString() {
		return "Qna [id=" + id + ", pLevel=" + pLevel + ", parid=" + parid + ", title=" + title + ", content=" + content
				+ ", resDate=" + resDate + ", visited=" + visited + ", aid=" + aid + "]";
	}
	

	
}
