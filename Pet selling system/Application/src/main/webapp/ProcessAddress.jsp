import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProcessAddressServlet")
public class ProcessAddressServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String zip = request.getParameter("zip");
        String phone = request.getParameter("phone");

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish a connection
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Login_credentials", "root", "Aspire@123");

            // Create a prepared statement
            String query = "INSERT INTO your_table_name (address, city, zip, phone) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, address);
            preparedStatement.setString(2, city);
            preparedStatement.setString(3, zip);
            preparedStatement.setString(4, phone);

            // Execute the statement
            preparedStatement.executeUpdate();

            // Close resources
            preparedStatement.close();
            connection.close();

            // Redirect to a thank you page
            response.sendRedirect("Thankyou.jsp");

        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
}
