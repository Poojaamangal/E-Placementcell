<%-- 
    Document   : AdminLogin
    Created on : 10 Mar, 2024, 1:33:03 AM
    Author     : pooja
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>

        <style>

               body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://images.pexels.com/photos/618833/pexels-photo-618833.jpeg?cs=srgb&dl=pexels-sagui-andrea-618833.jpg&fm=jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
            form {
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 8px;
                background-color: rgba(255, 255, 255, 0.7);
            }
            input[type="text"], input[type="password"] {
                width: 300px;
                padding: 10px;
                margin-bottom: 10px;
            }
            input[type="submit"] {
                width: 200px;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div>
        <style>
            .back-button ion-icon {
                font-size: 60px; /* Adjust the size as needed */
                font-weight: bold;
                color: white;
                position: fixed;
                top: 20px; /* Adjust as needed */
                left: 20px; /* Adjust as needed */
                z-index: 9999; /* Ensure it's above other content */
                padding: 10px 15px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a shadow for depth */
            }
        </style>
        <a href="Home.jsp" class="back-button"><ion-icon name="arrow-back"></ion-icon></a>
    </div>
        <form name="f1">
            <table>
                <tr>
                    <td colspan="2" align="center">
                        <!--<img src="https://www.pexels.com/search/mountains/" style="width: 100px; height: 100px;">-->
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <h2>Admin Login</h2>
                    </td>
                </tr>
                <tr>
                    <td>Enter email id:</td>
                    <td><input type="text" name="USERNAME" value="" size="30"></td>
                </tr>
                <tr>
                    <td>Enter the password:</td>
                    <td><input type="password" name="PASSWORD" value="" size="30"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnlogin" value="Login">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>


<%
    try{
        String email,pwd,query;
        email=request.getParameter("USERNAME");
        pwd=request.getParameter("PASSWORD");
        query= "select* from ROOT.ROOT where email_id='"+email+"' and Pswd='"+pwd+"'";
       
        if(request.getParameter("btnlogin")!=null)
        {
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/admin","root","root");
            Statement stmt = conn.createStatement();
            ResultSet rs =stmt.executeQuery(query);
            boolean status =rs.next();
            if(status){
                out.println("<script>alert('valid Email id & pswd')</script>");
            response.sendRedirect("AdminHomePage.jsp");
            }
            else
                out.println("<script> alert('invalid Email id & pswd')</script>");
            conn.close();
        }
       
   }catch(Exception ex){ex.printStackTrace();out.print(ex.getMessage());}
   %>









