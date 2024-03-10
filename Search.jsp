<%-- 
    Document   : search
    Created on : 10 Mar, 2024, 1:45:09 AM
    Author     : pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
    <style>
        body {
            background-image: url('https://www.pexels.com/search/mountains/'); /* Specify the path to your background image */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #fff;
            padding-top: 20px;
        }
        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 90%;
            background-color: rgba(255, 255, 255, 0.7); /* Adding transparency */
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        p {
            text-align: center;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Search Result</h1>
    <table border="1">
        <tr>
            <th>Student Name</th>
            <th>Father Name</th>
            <th>Mother Name</th>
            <th>Student ID</th>
            <th>Roll Number</th>
            <th>Course</th>
            <th>Stream</th>
            <th>Expected Graduation Year</th>
            <th>Current Address</th>
            <th>Permanent Address</th>
            <th>Current Score</th>
            <th>10th Percentage</th>
            <th>12th Percentage</th>
            <th>Mobile Number</th>
            <th>Email ID</th>
            <th>Password</th>
           
        </tr>
        <%
           
            String studentId = request.getParameter("STUDENT_ID");
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/student", "student", "student");
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from STUDENT.STUDENT WHERE STUDENT_ID='" + studentId + "'");
                if (rs.next()) {
        %>
            <tr>
             
                <td><%=rs.getString("STUDENT_NAME")%></td>
                <td><%=rs.getString("FATHER_NAME")%></td>
                <td><%=rs.getString("MOTHER_NAME")%></td>
                <td><%=rs.getString("STUDENT_ID")%></td>
                <td><%=rs.getInt("ROLL_NUMBER")%></td>
                <td><%=rs.getString("COURSE")%></td>
                <td><%=rs.getString("STREAM")%></td>
                <td><%=rs.getInt("Expected_Graduation_Year")%></td>
                <td><%=rs.getString("CURRENT_ADDR")%></td>
                <td><%=rs.getString("PERMAN_ADD")%></td>
                <td><%=rs.getFloat("CURRENT_SCORE")%></td>
                <td><%=rs.getFloat("TENTH_PERCENTAGE")%></td>
                <td><%=rs.getFloat("TWEL_PERCENTAGE")%></td>
                <td><%=rs.getLong("MOBILE_NUMBER")%></td>
                <td><%=rs.getString("EMAIL_ID")%></td>
                <td><%=rs.getString("PASSWORD")%></td>
                <img src="<%=rs.getString("https://cdn.stocksnap.io/img-thumbs/960w/sunset-mountain_JHPY0LIBLY")%>" class="student-image" alt="Student Image"></td> <!-- Use the appropriate column name for image URL -->
           
            </tr>
        <%
            } else {
        %>
            <tr>

             <td colspan="16">
               <p style="color: black;"><strong>No student found with ID <%=studentId %>.</strong></p>
             </td>


            </tr>
        <%
            }
                conn.close() ;
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e.getMessage());
        }
        %>
    </table>
</body>
</html>

