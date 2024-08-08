import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/webinarRegister")
public class webinarRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public webinarRegister() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String mail = request.getParameter("Email");
        String Name = request.getParameter("Uname");
        String mob = request.getParameter("Mobile");
        String attemptYear = request.getParameter("attemptYear");
        String exam = request.getParameter("exam");
        String state = request.getParameter("state");
        String issue = request.getParameter("issue");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/academy", "root", "password@9#9");

            String query = "INSERT INTO webinarform (email, name, mobile, yearOfupsc, exam, state, issue) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);

            pst.setString(1, mail);
            pst.setString(2, Name);
            pst.setString(3, mob);
            pst.setString(4, attemptYear);
            pst.setString(5, exam);
            pst.setString(6, state);
            pst.setString(7, issue);

            if (pst.executeUpdate() > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("live_webinar.html");
                rd.forward(request, response);
            }

            con.close();
        } catch (Exception e) {
            out.println(e);
        }
        out.close();
    }
}
