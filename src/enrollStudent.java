
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/enrollStudent")
public class enrollStudent extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String fname =(String) request.getParameter("fname");
        String lname =(String) request.getParameter("lname");
        String username =(String) request.getParameter("username");
        String password =(String) request.getParameter("password");
        String department =(String) request.getParameter("department");
        String r = (String) request.getParameter("roll");
        String roll = r;
        String address =(String) request.getParameter("address");
        String dob=(String) request.getParameter("dob");
        String contact =(String) request.getParameter("contact");
        String semester =(String) request.getParameter("semester");
        Connection con =null;
        con=DBConnection.dbconnect();
         String qr="insert into student(username,fname,lname,password,branch,roll,contact,dob,address,semester) values(?,?,?,?,?,?,?,?,?,?)";
         PreparedStatement ps=con.prepareStatement(qr);
         ps.setString(1,username);
         ps.setString(2,fname);
         ps.setString(3,lname);
         ps.setString(4,password);
         ps.setString(5,department);
         ps.setString(6,roll);
         ps.setString(7,contact);
         ps.setString(8,dob);
         ps.setString(9,address);
         ps.setString(10,semester);
         ps.executeUpdate();
         response.sendRedirect("enroll_student.jsp");
                   
        } catch (SQLException ex) {
            Logger.getLogger(enrollStudent.class.getName()).log(Level.SEVERE, null, ex);
        } //catch (ClassNotFoundException ex) {
          //  Logger.getLogger(enrollStudent.class.getName()).log(Level.SEVERE, null, ex);
       // }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
