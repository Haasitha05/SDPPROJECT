<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .center-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 80vh; /* Adjusted for space below navbar */
        text-align: center;
    }
    h2 {
        color: #333;
        margin-bottom: 20px;
    }
    p {
        color: #555;
        margin: 10px 0;
    }
    .btn {
        display: inline-block;
        background-color: orange;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        margin-top: 20px;
        transition: background-color 0.3s;
    }
    .btn:hover {
        background-color: darkorange;
    }
</style>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <div class="center-content">
        <h2>Thank You for Contacting Us!</h2>
        <p>We have received your message and will get back to you within a few working days.</p>
        <p>Check your mail for confirmation</p>
        <a href="home" class="btn">Return to Home</a>
    </div>
</body>
</html>
