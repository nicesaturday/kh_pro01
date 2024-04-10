package org.suyu.person;

public class User {
	private int id;
	private String resdate;
	private String email;
	private String pw;
	private String name;
	public User(int id, String resdate, String email, String pw, String name) {
		super();
		this.id = id;
		this.resdate = resdate;
		this.email = email;
		this.pw = pw;
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
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
	@Override
	public String toString() {
		return "User [id=" + id + ", resdate=" + resdate + ", email=" + email + ", pw=" + pw + ", name=" + name + "]";
	}
	
	
	
}
