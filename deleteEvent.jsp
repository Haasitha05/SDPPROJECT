<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="eventsSidebar.jsp" %> <!-- Including the eventSidebar file -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Events</title>
    <style>
        /* Body and page settings */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
            background-color: #f7f7f7;
        }

        /* Main content */
        .main-content {
            margin-left: 270px; /* Sidebar width + padding */
            padding: 20px;
            flex: 1;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        /* Card styling */
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .card h3 {
            margin: 10px 0;
            font-size: 1.5rem;
            color: #333;
        }

        .card p {
            font-size: 1rem;
            color: #666;
            margin: 5px 0;
        }

        .button {
            padding: 8px 16px;
            background-color: #ff4d4d;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #ff1a1a;
        }

    </style>
</head>
<body>

<!-- Main content area -->
<div class="main-content">
    <h1>Delete Events</h1>
    <div class="container">
        <!-- Loop through events and display cards -->
        <c:forEach var="event" items="${events}">
            <div class="card">
                <!-- Display event image using the displayEventImage_d method -->
                <img src="displayEventImage_d?eventId=${event.id}" alt="Event Image">

                <!-- Event details -->
                <h3><c:out value="${event.name}" /></h3>
                <p><c:out value="${event.description}" /></p>
                <p>Date: <c:out value="${event.eventDate}" /></p>
                <p>Location: <c:out value="${event.location}" /></p>

                <!-- Delete button with confirmation -->
                <form action="deleteEvent" method="POST">
                    <input type="hidden" name="eventId" value="${event.id}" />
                    <button type="submit" class="button" onclick="return confirm('Are you sure you want to delete this event?')">Delete</button>
                </form>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
