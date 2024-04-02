package org.suyu.person;

public class Users {
	private int id;
	private String email;
	private String name;
	private String pw;
	private String resdate;
	public Users(int id, String email, String name, String pw, String resdate) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.pw = pw;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	@Override
	public String toString() {
		return "Users [id=" + id + ", email=" + email + ", name=" + name + ", pw=" + pw + ", resdate=" + resdate + "]";
	}
	
	
}
