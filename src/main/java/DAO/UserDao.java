package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.User;

public class UserDao {
	
	String url = "jdbc:mysql://localhost:3306/hostller";
	String uname = "root";
	String upass = "abc123";
	String driver = "com.mysql.cj.jdbc.Driver";
	Connection con;
	
	private Connection getconnect() throws ClassNotFoundException, SQLException
	{
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url,uname,upass);
		return con;
		
	}

	public int insert(User user) throws ClassNotFoundException, SQLException {
		String sql = "insert into user(name, lname, email, password) value(?,?,?,?)";
		con = getconnect();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, user.getFname());
		ps.setString(2, user.getLname());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getPassword());
		
		int a = ps.executeUpdate();
		con.close();
		return a;
		}
	
	public List<User> getAllUser() throws ClassNotFoundException, SQLException
	{
		String sql = "select * from user";
		con = getconnect();
		Statement st =   con.createStatement();
		ResultSet rs =   st.executeQuery(sql);
		List<User> le = new ArrayList<User>();
		while(rs.next()) {
			User e = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			le.add(e);
		}
		return le;
		
	}
	
	public User getoneUser(int id) throws ClassNotFoundException, SQLException
	{
		String sql = "select * from user where id = ?";
		Connection con = getconnect();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs =   ps.executeQuery();
		
		if(rs.next()) {
			int userId = rs.getInt("id");
			String username = rs.getString("name");
			String lastname = rs.getString("lname");
			String email = rs.getString("email");
			String password = rs.getString("password");
			return new User(userId, username, lastname, email, password);
		}else {
			return null;
		}
		
	}
	
	public int update(User u) throws ClassNotFoundException, SQLException
	{
		Connection con = getconnect();
		PreparedStatement ps = con.prepareStatement("update user set name=?, lname=?, email=?, password=? where id=?");
		ps.setString(1, u.getFname());
		ps.setString(2, u.getLname());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getPassword());
		ps.setInt(5, u.getId());
		
		int a = ps.executeUpdate();
		con.close();
		return a;
		 
	}
	
	public int delete(int id) throws ClassNotFoundException, SQLException
	{
		String sql = "delete from user where id = ?";
		con = getconnect();
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, id);
		int a = ps.executeUpdate();
		con.close();
		return a;
	}
}
