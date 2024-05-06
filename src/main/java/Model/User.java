package Model;

public class User {

	private int id;
	private String fname;
	private String lname;
	private String email;
	private String password;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id) {
		super();
		this.id = id;
	}
	public User(String email) {
		super();
		this.email = email;
	}
	public User(String fname, String lname, String email, String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
	}
	public User(int id, String fname, String lname, String email, String password) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password="
				+ password + "]";
	}
	
	
}
