<%-- 
    Document   : delete
    Created on : 10 Mar, 2024, 1:35:15 AM
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

    <meta charset="UTF-8">
<body>
   
    <%
        String studentId = request.getParameter("STUDENT_ID");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/student", "student", "student");
            Statement stmt = conn.createStatement();
   
            String query= "DELETE FROM STUDENT.STUDENT WHERE STUDENT_ID='"+studentId+"'";
             int x=stmt.executeUpdate(query);
            if(x>0)
                System.out.println("Record deleted successfully");
            else
                    System.out.println("ReEnter");
            out.println("Record deleted successfully!");
   
        } catch (Exception e) {
            e.printStackTrace();out.print(e.getMessage()) ;}
         
    %>
             

</body>

</html>

