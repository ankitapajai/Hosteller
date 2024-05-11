<%@page import="DAO.UserDao" %>
<%@page import="Model.User" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.button {
  border: none;
  color: white;
  padding: 9px 29px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {background-color: #ED1B0E;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
</style>
</head>
<body>

<% UserDao ud = new UserDao();
List<User> userList = ud.getAllUser();
%>

<table border="1">
<thead>
<tr>
	<th>User Id</th>
	<th>First Name</th>
	<th>Last Name </th>
	<th>Email</th>
	<th>Password</th>
	<th>Action</th>
<tr>
<thead>

<tbody>
<%for(User use : userList) {%>
<tr>
	<td><%=use.getId() %></td>
	<td><%=use.getFname() %></td>
	<td><%=use.getLname() %></td>
	<td><%=use.getEmail() %></td>
	<td><%=use.getPassword() %></td>
<td>
	<a href = "edit.jsp?id=<%=use.getId()%>"class="button button2">Edit</a>
	<a href = "delete.jsp?id=<%=use.getId()%>" class="button button1">Delete</a>
</td>
<tr>
<%} %>
</tbody>
</table>
</body>
</html>