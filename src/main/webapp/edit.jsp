<%@page import="DAO.UserDao"%>
<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
this is edit page...
<%int id=Integer.parseInt(request.getParameter("id")); 
out.print(id);

User u=null;
u = new UserDao().getoneUser(id);
%>
<div class="login-box">
    <form action="update.jsp">
        <div class="user-box">
            <input type="text" name="id" value="<%=u.getId() %>">
            <label>User Id</label>
        </div>
        <div class="user-box">
            <input type="text" name="name" value="<%=u.getFname() %>">
            <label>User Name</label>
        </div>
        <div class="user-box">
            <input type="text" name="lname" value="<%=u.getLname() %>">
            <label>Last name</label>
        </div>
        <div class="user-box">
            <input type="text" name="email" value="<%=u.getEmail() %>">
            <label>Email</label>
        </div>
        <div class="user-box">
            <input type="text" name="password" value="<%=u.getPassword() %>" placeholder="password">
            <label>Password</label>
        </div>
        <center>
            <a href="#" onclick="submitForm()">
                UPDATE
                <span></span>
            </a>
        </center>
    </form>
</div>
<script>
    function submitForm() {
        document.querySelector('form').submit();
    }
</script>

</body>
</html>