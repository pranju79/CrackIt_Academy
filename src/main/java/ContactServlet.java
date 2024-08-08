import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        String jdbcURL = "jdbc:mysql://localhost:3306/academy";
        String dbUser = "root";
        String dbPassword = "password@9#9";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sql = "INSERT INTO contact_us (name, email, subject, message) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, subject);
            statement.setString(4, message);

            int rowsInserted = statement.executeUpdate();
            connection.close();

            if (rowsInserted > 0) {
                request.setAttribute("message", "Your message was sent successfully!");
            } else {
                request.setAttribute("message", "There was an error sending your message.");
            }

            request.getRequestDispatcher("contact_response.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "There was an error: " + e.getMessage());
            request.getRequestDispatcher("contact_response.jsp").forward(request, response);
        }
    }
}
