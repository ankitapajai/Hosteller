<%@page import="Model.User"%>
<%@page import="DAO.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

This is delete page
<%
int id = Integer.parseInt(request.getParameter("id"));
       		UserDao ud = new UserDao();
       		User u = new User(id);
       		
       		int a = ud.delete(id);
       		if(a>0){
       			response.sendRedirect("view.jsp");
       		}
%>

</body>
</html>