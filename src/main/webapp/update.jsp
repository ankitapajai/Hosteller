<%@page import="DAO.UserDao"%>
<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update page</title>
</head>
<body>

you are on update page....
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String password =request.getParameter("password");

User u = new User(id, name,lname, email, password);

int a = new UserDao().update(u);

if(a>0){
	response.sendRedirect("view.jsp");
}else{
	response.sendRedirect("view.jsp");
}
%>
</body>
</html>