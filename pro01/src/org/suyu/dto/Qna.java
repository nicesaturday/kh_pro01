package org.suyu.dto;

import org.suyu.person.Manager;
import org.suyu.person.Users;

public class Qna {
	private int id;
	private int pLevel;
	private String title;
	private String content;
	private int visited;
	private String resDate;
	private Users user;
	private Manager manager;
	public Qna(int id, int pLevel, String title, String content, int visited, String resDate, Users user,
			Manager manager) {
		super();
		this.id = id;
		this.pLevel = pLevel;
		this.title = title;
		this.content = content;
		this.visited = visited;
		this.resDate = resDate;
		this.user = user;
		this.manager = manager;
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
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getResDate() {
		return resDate;
	}
	public void setResDate(String resDate) {
		this.resDate = resDate;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	@Override
	public String toString() {
		return "Qna [id=" + id + ", pLevel=" + pLevel + ", title=" + title + ", content=" + content + ", visited="
				+ visited + ", resDate=" + resDate + ", user=" + user + ", manager=" + manager + "]";
	}
	
	
	
	
}
