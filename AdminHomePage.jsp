<%-- 
    Document   : AdminHomePage
    Created on : 10 Mar, 2024, 1:31:34 AM
    Author     : pooja
--%>

<%--
    Document   : admin
    Created on : 5 Mar, 2024, 12:11:16 AM
    Author     : pooja
--%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome To Admin Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      /*background-image: url('https://wallpaperaccess.com/full/5651990.jpg');*/
       background-image: url("https://wallpaperaccess.com/full/5651990.jpg");
      background-size: cover;
      background-position: center;
      margin: 0;
      padding: 0;
    }

    .container {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
    }

    h1 {
      margin-bottom: 280px;
      font-size: 50px;
      color: antiquewhite;
    }

    .buttons {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    button {
      padding: 10px 20px;
      margin: 10px;
      font-size: 16px;
      cursor: pointer;
      border: none;
      border-radius: 4px;
      outline: none;
      transition: background-color 0.3s ease;
      color: white;
    }

    .update-btn {
      background-color: #4caf50;
    }

    .delete-btn {
      background-color: #f44336;
    }

    .view-btn {
      background-color: #9c27b0;
    }

    .srch-btn {
      background-color: #ff9800;
    }

    button:hover {
      filter: brightness(1.2);
    }
     .signout-btn {
      position: absolute;
      top: 20px;
      right: 20px;
      background-color: #2196F3; /* Blue color for sign-out button */
    }
     
  </style>
</head>
<body>
  <div class="container">
    <h1>Welcome To Admin Home Page</h1>
    <div class="buttons">
        <a href="SearchIndex.html" class="srch-btn">
    <button class="srch-btn">Search Data</button> </a>
                 <a href="ViewData.jsp" class="view-btn">
    <button class="view-btn">View Data</button> </a>
      <a href="DeleteIndex.html" class="delete-btn">
    <button class="delete-btn">Delete Data</button> </a>
   
    </div>
  </div>
    <button onclick="signOut()" class="signout-btn">Sign Out</button>

  <script>
    function signOut() {
      // Clear any session data or perform other sign-out actions here
      // For example, you can redirect the user to the login page
      window.location.href = "AdminLogin.jsp"; // Replace LoginPage.html with your actual login page
    }
  </script>
</body>
</html>

