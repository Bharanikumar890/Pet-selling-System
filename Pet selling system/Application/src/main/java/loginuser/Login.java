package loginuser;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Login_credentials", "root", "Aspire@123");
            String name = request.getParameter("textname");
            String password = request.getParameter("textpwd");

            // Validation for username (starts with a capital letter)
            if (!name.matches("[A-Z][a-zA-Z]*")) {
                showErrorPage(request, response, "Username should start with a capital letter.");
                return;
            }

            // Validation for password (contains at least one uppercase letter and one digit)
            if (!password.matches("^(?=.*[A-Z])(?=.*\\d).+$")) {
                showErrorPage(request, response, "Password should contain at least one uppercase letter and one digit.");
                return;
            }

            PreparedStatement pst = con.prepareStatement("SELECT * FROM details WHERE username=? AND pass_word=?");

            pst.setString(1, name);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                response.sendRedirect("Success.jsp");
            } else {
                showErrorPage(request, response, "Incorrect Credential!!!!!!!");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

		    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        doGet(request, response);
		    }
		
		    private void showErrorPage(HttpServletRequest request, HttpServletResponse response, String errorMessage)
		            throws ServletException, IOException {
		        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		        PrintWriter input = response.getWriter();
		        response.setContentType("text/html");
		        input.println("<center><h3>" + errorMessage + "</h3></center>");
		        rd.include(request, response);
    }
}
