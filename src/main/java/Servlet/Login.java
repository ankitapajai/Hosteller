package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDao;
import Model.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("hello rishuuuu/kutraayaaaa");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password =request.getParameter("pass");
		
		out.println("My fname is: "+fname+"<br>");
		out.println("My lname is: "+lname+"<br>");
		out.println("My email is: "+email+"<br>");
		out.println("My password is: "+password+"<br>");
		
		User user = new User(fname, lname, email, password);
		UserDao ud = new UserDao();
		try {
			ud.insert(user);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(user);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
