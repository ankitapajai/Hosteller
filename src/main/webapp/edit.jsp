<%@page import="DAO.UserDao"%>
<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
this is edit page...
<%int id=Integer.parseInt(request.getParameter("id")); 
out.print(id);

User u=null;
u = new UserDao().getoneUser(id);
%>

<form action="update.jsp">
      <div>
      <input type="text" name="id" value=<%=u.getId() %> placeholder="Id" readonly="readonly">
      </div>
      <div>
      <input type="text" name="name" value=<%=u.getFname() %> placeholder="name">
      </div>
      <div>
      <input type="text" name="lname" value=<%=u.getLname() %> placeholder="lname" >
      </div>
      <div>
      <input type="text" name="email" value=<%=u.getEmail() %> placeholder="email">
      </div>
      <div>
      <input type="text" name="password" value=<%=u.getPassword() %> placeholder="password">
      </div>
      
      <div>
      <input type="submit" value="submit">
      </div>
</form>
</body>
</html>