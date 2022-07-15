

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Portal</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            #customers 
            {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }
            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: center;
            }
            #customers tr:nth-child(even){background-color: #f2f2f2;}
            #customers tr:hover {background-color: #ddd;}
            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
    </style>
        
    </head>
   
    <body>
        <%
//        String user = (String)request.getParameter("username");
//        if(user!=null)
//        session.setAttribute("uname", user);
        %>
        <div class="divide" style="background-color: #43425D; left: 0">
            <div style="color:white;font-size: 20px; font-family: sans-serif;display: block;text-align: center;
                 margin-top: 20px; margin-bottom: 25px;">FRCRCE</div>
            <hr> 
            <ul>
                  <li><a href="admin_home.jsp">Home</a></li>
                  <li><a href="enroll_student.jsp">Enroll Student</a></li>
  <li><a href="enroll_faculty.jsp">Enroll Faculty</a></li>
  <li><a href="notices.jsp">Notices</a></li>
  <li><a href="student_details.jsp">Student Details</a></li>
  <li><a href="faculty_details.jsp" class="active">Faculty Details</a></li>
  

  <li><a href="course_register.jsp">Course Registration</a></li>
  <li><a href="course_details.jsp">Course Details</a></li>
  <li><a href="index.jsp">Sign Out</a>
</ul> 
        </div>
      
                    <div class="divide" style="left: 22%; width: 55%; top: 3%; height: 95%; right: 20%; overflow-x: auto; overflow-y: auto">
                    <%
                    String faculty_username = request.getParameter("faculty_username");
                    session.setAttribute("faculty_username", faculty_username);
//            String password = request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
                session.setAttribute("A", "FA");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanagement", "root", "rootroot");
               String qr="select * from faculty where username=?";
                PreparedStatement ps=con.prepareStatement(qr);
                ps.setString(1,faculty_username);
//                ps.setString(2,password);
               ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    %>
                        <table id="customers">
                        <th colspan="4" style="text-align: center">Faculty Details</th>
                      <tr>
                            <td><strong>First Name </strong></td>
                            <td><%=rs.getString("fname")%></td>
                            <form action = "update_faculty_fname">
                            <td><input type="text" name="fname"></td>
                            <td><input type="submit" value="Update"></td>
                            </form>
                        </tr>
                    <tr>
                        <% session.setAttribute("faculty_username", rs.getString("username")); %>
                        <td><strong>Last Name </strong></td>
                        <form action="update_faculty_lname">
                            <td><%=rs.getString("lname")%></td>
                                                        <td><input type="text" name="lname"></td>

                            <td><input type="submit" value="Update"></td>
                            </form>

                    </tr>
                   
                    <tr>
                        <td><strong>Password </strong></td>
                            
                        <td><%=rs.getString("password")%></td>
                        <form action="update_faculty_password"> 
                        <td><input type="text" name="password"></td>
                            <td><input type="submit" value="Update"></td>
                            </form>
    
                    </tr>
                    <tr>
                        <td><strong>Address</strong></td>
                            <td><%=rs.getString("address")%></td>
                            <form action="update_faculty_address">
                                                        <td><input type="text" name="address"></td>

                            <td><input type="submit" value="Update"></td>
                            </form>

                    </tr>
                     <tr>
                        <td><strong>Contact</strong></td>
                            <td><%=rs.getString("contact")%></td>
                            <form action="update_faculty_contact">
                                                        <td><input type="text" name="contact"></td>

                            <td><input type="submit" value="Update"></td>
                            </form>

                    </tr>
                     <tr>
                        <td><strong>Email<strong></td>
                            <td><%=rs.getString("email")%></td>
                            <form action="update_faculty_email">
                                                        <td><input type="text" name="email"></td>

                            <td><input type="submit" value="Update"></td>
                            </form>

                    </tr>
                     <tr>
                        <td><strong>Qualification</strong></td>
                            <td><%=rs.getString("qualification")%></td>
                            <form action="update_faculty_qualification">
                                                        <td><input type="text" name="qualification"></td>

                            <td><input type="submit" value="Update"></td>
                            </form>

                    </tr>
                    <tr>
                        <td><strong>Department </strong></td>
                            <td><%=rs.getString("department")%></td>
                            <td colspan="2">Cannot be updated!!</td>

                    </tr>
                    
                    <tr>
                            <td><strong>Username :</strong></td>
                            <td><%=rs.getString("username")%></td>
                            <td colspan="2">Cannot be Updated!!</td>
                    
                    </tr>
                    <tr>
                             <td><strong>DOB:</strong></td>
                            <td><%=rs.getString("dob")%></td>
                            <td colspan="2">Cannot be Updated!!</td>
                    
                    </tr>
                  
                     <tr>
                             <td><strong>Date Of Join :</strong></td>
                            <td><%=rs.getString("dateofjoin")%></td>
                            <td colspan="2">Cannot be Updated!!</td>
                    
                    </tr>
                    
                    
                    
                    </table>
                    
                    
                    
                    
                    <%}
                    %>
                    
                    
                    </div>
</html>

 
