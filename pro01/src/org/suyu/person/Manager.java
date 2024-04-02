package org.suyu.person;

public class Manager {
	private int id;
	private String email;
	private String pw;
	private String name;
	private String resdate;
	public Manager(int id, String email, String pw, String name, String resdate) {
		super();
		this.id = id;
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.resdate = resdate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	@Override
	public String toString() {
		return "Manager [id=" + id + ", email=" + email + ", pw=" + pw + ", name=" + name + ", resdate=" + resdate
				+ "]";
	}
	
	
}
