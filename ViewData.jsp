<%-- 
    Document   : ViewData
    Created on : 10 Mar, 2024, 1:41:54 AM
    Author     : pooja
--%>

<%--
    Document   : ViewData
    Created on : Mar 5, 2024, 2:38:23 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
</head>
<body>
    <h1>Student Details</h1>
<center>
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
            //String sql = "select * from ROOT.STUDENT_DATA WHERE STUDENT_ID='"+studentId+"'";
            Statement stmt = conn.createStatement();
            //ResultSet rs = stmt.executeQuery("select * from ROOT.STUDENT_DATA");
//            ResultSet rs = stmt.executeQuery("SELECT * FROM ROOT.STUDENT_DATA ORDER BY STUDENT_NAME");
            ResultSet rs = stmt.executeQuery("SELECT * FROM STUDENT.STUDENT ORDER BY LOWER(STUDENT_NAME)");


            while(rs.next()) {
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
                        <td><%=rs.getFloat("TWEL_PERCENTAGE")%></td>-->
                        <td><%=rs.getLong("MOBILE_NUMBER")%></td>
                        <td><%=rs.getString("EMAIL_ID")%></td>
                        <td><%=rs.getString("PASSWORD")%></td>
                    </tr>
               
    <%
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();out.print(e.getMessage()) ;}
    %>
 </table>
</center>
</body>

</html>


