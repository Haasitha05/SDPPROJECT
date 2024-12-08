<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Event</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .sidenav {
            width: 250px;
            background-color: #f4f4f4;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            height: 100vh;
            top: 0;
            left: 0;
            overflow: auto;
        }

        .form-container {
            margin-left: 250px;
            width: calc(100% - 250px);
            padding: 2rem;
        }

        .container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
            max-width: 640px;
            margin: 2rem auto;
            padding: 2rem;
        }

        h1 {
            text-align: center;
            color: #0d6efd;
            font-size: 2rem;
            margin-bottom: 1.5rem;
        }

        .form-control {
            width: 100%;
            padding: 0.75rem 1rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 0.375rem;
            font-size: 1rem;
            line-height: 1.5;
            box-sizing: border-box;
        }

        .form-control:focus {
            border-color: #0d6efd;
            outline: none;
        }

        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background-color: #0d6efd;
            color: white;
            border: none;
            border-radius: 0.375rem;
            font-size: 1rem;
            line-height: 1.5;
            cursor: pointer;
            text-align: center;
            width: 100%;
            margin-top: 1rem;
        }

        .btn:hover {
            background-color: #0a58ca;
        }

        .btn-clear {
            background-color: #dc3545;
            color: white;
        }

        .btn-clear:hover {
            background-color: #c82333;
        }

        label {
            font-weight: bold;
            margin-bottom: 0.5rem;
            display: inline-block;
            color: black;
        }

        @media (max-width: 768px) {
            .form-container {
                margin-left: 0;
                padding: 1rem;
            }

            .container {
                width: 100%;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <!-- Include the Sidebar -->
    <%@ include file="eventsSidebar.jsp" %>

    <!-- Form Container -->
    <div class="form-container">
        <h1>Add Event</h1>
        <form action="insertEvent" method="post" enctype="multipart/form-data">

            <label for="name">Event Name:</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="Enter Event Name" required>

            <label for="description">Event Description:</label>
            <textarea id="description" name="description" class="form-control" placeholder="Enter Event Description" rows="4" required></textarea>

            <label for="eventDate">Event Date:</label>
            <input type="date" id="eventDate" name="eventDate" class="form-control" required>

            <label for="location">Event Location:</label>
            <input type="text" id="location" name="location" class="form-control" placeholder="Enter Event Location" required>

            <label for="image">Event Image:</label>
            <input type="file" id="image" name="image" class="form-control">

            <button type="submit" class="btn">Add Event</button>
            <button type="reset" class="btn btn-clear">Clear</button>
        </form>
    </div>

</body>
</html>
