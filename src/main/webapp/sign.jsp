<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Model.User" %>
<%@ page import = "DAO.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
sign page

<%
      String fname = request.getParameter("fname");
      String lname = request.getParameter("lname");
      String email = request.getParameter("email");
      String password = request.getParameter("pass");
      
      
      User user = new User(fname, lname, email, password);
	  UserDao ud = new UserDao();
	  ud.insert(user);
	  
	  if(ud != null){
		  response.sendRedirect("view.jsp");
	  }
%>

</body>
</html>