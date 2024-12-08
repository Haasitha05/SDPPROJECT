<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Topbar</title>

  <style>
    /* Top Bar Styles */
    .top-bar {
      display: flex;
      justify-content: space-between;  /* Distribute space between left and right sections */
      align-items: center;
      padding: 15px 30px;
      font-size: 16px;
      background-color: transparent;
      border-bottom: 2px solid #ff6b00; /* Orange line */
    }

    .branding {
      font-size: 32px;
      font-weight: bold;
      color: #000;
    }

    .branding .orange {
      color: #ff6b00;
    }

    .contact-info {
      display: flex;
      justify-content: flex-end;
      align-items: center;
    }

    .contact-item {
      display: flex;
      align-items: center;
      margin-left: 30px;
      color: #000;
    }

    .contact-item .icon {
      font-size: 22px;
      color: #ff6b00;
      margin-right: 12px;
    }

    a {
      text-decoration: none;
      color: #000;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="top-bar">
    <!-- Branding -->
    <div class="branding">
      <span class="orange">B</span>eyondGrade
    </div>

    <!-- Contact and Navigation -->
    <div class="contact-info">
      <div class="contact-item">
        <span class="icon">&#9993;</span>
        <div>
          <strong>Email Us</strong><br>
          <a href="mailto:hrulekhaadiraj@gmail.com">hrulekhaadiraj@gmail.com</a>
        </div>
      </div>
      <div class="contact-item">
        <span class="icon">&#9742;</span>
        <div>
          <strong>Call Us</strong><br>
          +012 345 6789
        </div>
      </div>
      <div class="contact-item">
        <span class="icon">&#9873;</span>
        <div>
          <strong>Visit Us</strong><br>
          <a href="https://www.google.com/maps?q=123+Street,+City" target="_blank">123 Street, City</a>
        </div>
      </div>
      <div class="contact-item">
        <span class="icon">&#128712;</span>
        <div>
          <strong><a href="#about-us">About Us</a></strong>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
