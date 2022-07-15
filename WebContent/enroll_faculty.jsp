

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Portal</title>
        <link rel="stylesheet" href="styles.css">
        
    </head>
   
    <body>
        <%
        String user = (String)request.getParameter("username");
        if(user!=null)
        session.setAttribute("uname", user);
                        String username = (String)session.getAttribute("uname");

        %>
        <div class="divide" style="background-color: #43425D; left: 0">
            <div style="color:white;font-size: 20px; font-family: sans-serif;display: block;text-align: center;
                 margin-top: 20px; margin-bottom: 25px;">FRCRCE</div>
            <hr> 
            <ul>
                  <li><a href="admin_home.jsp">Home</a></li>
  <li><a href="enroll_student.jsp">Enroll Student</a></li>
  <li><a href="enroll_faculty.jsp" class="active">Enroll Faculty</a></li>
  
  <li><a href="student_details.jsp">Student Details</a></li>
  <li><a href="faculty_details.jsp">Faculty Details</a></li>
  
  <li><a href="course_register.jsp">Course Registration</a></li>
  <li><a href="course_details.jsp">Course Details</a></li>
    <!--<li><a href="chat_faculty.jsp">Chat Room</a></li>-->

  <li><a href="index.jsp">Sign Out</a>
</ul> 
        </div>
       
                    <div class="divide" style="left: 22%; width: 56%; background:#ECF0F1; top: 1%; height: 99%;right: 25%; overflow-x: auto; overflow-y: auto">
                        <p align="center" style="font-family: sans-serif;font-size: 25px"><strong>Faculty Registration Form</strong></p>
                        
                        <form action="enrollFaculty">
                            <table align="center">
                            <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Username :</strong></p> 
                                    </td>
                                    <td><input type="text" name="username"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>First Name :</strong> </p>
                                    </td>
                                    <td><input type="text" name="fname">
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Last Name :</strong></p> 
                                    </td>
                                    <td><input type="text" name="lname">
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Address :</strong></p> 
                                    </td>
                                    <td><input type="text" name="address"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>DOB:</strong></p> 
                                    </td>
                                    <td><input type="text" name="dob"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Date Of Join :</strong></p> 
                                    </td>
                                    <td><input type="text" name="dateofjoin"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Contact :</strong></p> 
                                    </td>
                                    <td><input type="text" name="contact"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>E-mail:</strong></p> 
                                    </td>
                                    <td><input type="text" name="email"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Qualification :</strong></p> 
                                    </td>
                                    <td><input type="text" name="qualification"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Set Password :</strong></p> 
                                    </td>
                                    <td><input type="text" name="password"><br>
                            </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-family: sans-serif; font-size: 20px; color: darkslategrey"> <strong>Department :</strong></p> 
                                    </td>
                                    <td><input type="text" name="department"><br>
                            </td>
                                </tr>
                                
                                
                            </table>
                            <br>
                            <input type="submit" value="Register Faculty">
                            </form>    
                        
                        
                        
                        
                        
                        
                        
                        
                    </div>
    </body>
</html>
