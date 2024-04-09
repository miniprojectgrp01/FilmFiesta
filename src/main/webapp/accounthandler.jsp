<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Account Handling</title>
</head>
<body>
    <h1>Account Handling</h1>
    
    <form action="AccountServlet" method="get">
        <button type="submit">View Profile</button>
    </form>
    
    <form action="LogoutServlet" method="post">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
