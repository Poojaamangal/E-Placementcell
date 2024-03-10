<%-- 
    Document   : RegistrationForm
    Created on : 10 Mar, 2024, 1:37:57 AM
    Author     : pooja
--%>

<%--
    Document   : registration.jsp
    Created on : Feb 27, 2024, 5:25:53 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%
String s_n=request.getParameter("STUDENT_NAME");
if(s_n!=null){
String f_n=request.getParameter("FATHER_NAME");
String m_n=request.getParameter("MOTHER_NAME");
String s_id=request.getParameter("STUDENT_ID");
//int r_n=Integer.parseInt("ROLL_NUMBER");
String rollNumberParam = request.getParameter("ROLL_NUMBER");
int r_n = 0; // Default value if parameter is null or cannot be parsed
if (rollNumberParam != null && !rollNumberParam.isEmpty()) {
    r_n = Integer.parseInt(rollNumberParam);}
String c_n=request.getParameter("COURSE");
String str_n=request.getParameter("STREAM");
String exp_gyr = request.getParameter("EXPECTED_GRADUATION_YEAR");
int e_g = 0; // Default value if parameter is null or cannot be parsed
if (exp_gyr!= null && !exp_gyr.isEmpty()) {
    e_g = Integer.parseInt(exp_gyr);}
String c_a=request.getParameter("CURRENT_ADDRESS");
String p_a=request.getParameter("PERMANENT_ADDRESS");
//String crr_scr = request.getParameter("CURRENT_SCORE");
//float c_s = 0; // Default value if parameter is null or cannot be parsed
//if (crr_scr!= null && !crr_scr.isEmpty()) {
//    c_s = Integer.parseInt(crr_scr);}
String crr_scr = request.getParameter("CURRENT_SCORE");
float c_s = 0.0f; // Default value if parameter is null or cannot be parsed

if (crr_scr != null && !crr_scr.isEmpty()) {
    try {
        c_s = Float.parseFloat(crr_scr);
    } catch (NumberFormatException e) {
        // Handle the case where the parameter cannot be parsed to a float
        // You can log the error or display an error message
    }
}
String tenth_per = request.getParameter("TENTH_PERCENTAGE");
float t_p = 0.0f; // Default value if parameter is null or cannot be parsed
if (tenth_per!= null && !tenth_per.isEmpty()) {
    try{
    t_p = Float.parseFloat(tenth_per);
} catch (NumberFormatException e){
              }
}
String twelfth_per = request.getParameter("TWELFTH_PERCENTAGE");
float tw_p = 0.0f; // Default value if parameter is null or cannot be parsed
if (twelfth_per!= null && !twelfth_per.isEmpty()) {
    try{
    tw_p = Float.parseFloat(twelfth_per);
} catch (NumberFormatException e){
        }
}
//String mob_num = request.getParameter("MOBILE_NUMBER");
//long mob_n = 0; // Default value if parameter is null or cannot be parsed
//if (mob_num!= null && !mob_num.isEmpty()) {
//    mob_n = Integer.parseInt(mob_num);}
String mob_num = request.getParameter("MOBILE_NUMBER");
long mob_n = 0; // Default value if parameter is null or cannot be parsed
if (mob_num != null && !mob_num.isEmpty()) {
    try {
        mob_n = Long.parseLong(mob_num);
    } catch (NumberFormatException e) {
        // Handle the case where the parameter cannot be parsed to a long
        // You can log the error or display an error message
    }
}

String email_id=request.getParameter("EMAIL_ID");
String pswd=request.getParameter("PASSWORD");

try{
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/EPC","root","root");
   Statement st = conn.createStatement();

   int i = st.executeUpdate("insert into ROOT.STUDENT_DATA(STUDENT_NAME,FATHER_NAME,MOTHER_NAME,STUDENT_ID,ROLL_NUMBER,COURSE,STREAM,EXPECTED_GRADUATION_YEAR,CURRENT_ADDRESS,PERMANENT_ADDRESS,CURRENT_SCORE,TENTH_PERCENTAGE,TWELFTH_PERCENTAGE,MOBILE_NUMBER,EMAIL_ID,PASSWORD)values('"+s_n+"','"+f_n+"','"+m_n+"','"+s_id+"',"+r_n+",'"+c_n+"','"+str_n+"',"+e_g+",'"+c_a+"','"+p_a+"',"+crr_scr+","+t_p+","+tw_p+","+mob_n+",'"+email_id+"','"+pswd+"')");
   
   out.println("Record inserted successfully");
   conn.close() ;      
}

catch(Exception e){e.printStackTrace();out.print(e.getMessage());}
}

%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Form</title>
    <style>
       
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555; /* Text color for labels */
        }
         input[type="text"],
         input[type="email"],
         textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
        }



        input[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <body style="background-image: url('https://tse4.mm.bing.net/th?id=OIP.GbMboU-krQvdIrfKgWpzXgHaFj&pid=Api&P=0&h=180'); background-size: cover; background-repeat: no-repeat;"></body>
    <h2>Student Registration Form</h2>
    <form action="RegistrationForm.jsp" method="post">
        <label for="STUDENT_NAME">STUDENT_NAME:</label>
        <input type="text" id="STUDENT_NAME" name="STUDENT_NAME" required>
       
         <label for="FATHER_NAME">FATHER_NAME:</label>
        <input type="text" id="FATHER_NAME" name="FATHER_NAME" required>

        <!-- Add color to labels and input borders -->
        <label for="MOTHER_NAME" >MOTHER_NAME:</label>
        <input type="text" id="MOTHER_NAME" name="MOTHER_NAME">
       
        <label for="STUDENT_ID">Student_ID:</label>
        <input type="text" id="STUDENT_ID" name="STUDENT_ID" required>
       
        <label for="ROLL_NUMBER">Roll_Number:</label>
        <input type="text" id="ROLL_NUMBER" name="ROLL_NUMBER" required>
       
         <label for="COURSE">COURSE:</label>
        <input type="text" id="COURSE" name="COURSE" required style>

        <label for="STREAM">STREAM:</label>
        <input type="text" id="STREAM" name="STREAM" required>

        <label for="EXPECTED_GRADUATION_YEAR">Expected_Graduation_Year:</label>
        <input type="text" id="EXPECTED_GRADUATION_YEAR" name="EXPECTED_GRADUATION_YEAR" required>

        <label for="CURRENT_ADDRESS">CURRENT_ADDRESS:</label>
        <textarea id="CURRENT_ADDRESS" name="CURRENT_ADDRESS" required></textarea>

        <label for="PERMANENT_ADDRESS">Permanent Address:</label>
        <textarea id="PERMANENT_ADDRESS" name="PERMANENT_ADDRESS" required></textarea>

        <label for="CURRENT_SCORE">CURRENT_SCORE (CGPA or %):</label>
        <input type="text" id="CURRENT_SCORE" name="CURRENT_SCORE" required>

        <label for="TENTH_PERCENTAGE">TENTH_PERCENTAGE:</label>
        <input type="text" id="TENTH_PERCENTAGE" name="TENTH_PERCENTAGE" required>

        <label for="TWELFTH_PERCENTAGE">TWELFTH_PERCENTAGE:</label>
        <input type="text" id="TWELFTH_PERCENTAGE" name="TWELFTH_PERCENTAGE" required>

        <label for="MOBILE_NUMBER">MOBILE_NUMBER:</label>
        <input type="text" id="MOBILE_NUMBER" name="MOBILE_NUMBER" required>

     

        <label for="EMAIL_ID">EMAIL_ID:</label>
        <input type="text" id="EMAIL_ID" name="EMAIL_ID" required>
       
         <label for="PASSWORD">PASSWORD:</label>
         <input type="PASSWORD" id="PASSWORD" name="PASSWORD" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Password must contain at least 8 characters, including uppercase, lowercase, number, and special character." required>


        <input type="submit" value="Submit">
    </form>


</body>
</html>  

