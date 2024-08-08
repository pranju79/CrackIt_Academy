import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/AddFeeServlet")
public class AddFeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddFeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	       String batch = request.getParameter("batchSelect");
	        int gs_fee = Integer.parseInt(request.getParameter("gs"));
	        int csat_fee = Integer.parseInt(request.getParameter("csat"));
	        int optional_fee = Integer.parseInt(request.getParameter("optional"));
	        int gs_csat_optional_fee = Integer.parseInt(request.getParameter("gsoptional"));
	        int crash_course_fee = Integer.parseInt(request.getParameter("crashCourse"));
	        int study_material_fee = Integer.parseInt(request.getParameter("studyMaterial"));
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/academy", "root",	"password@9#9");
			PreparedStatement pst = con.prepareStatement("INSERT INTO fee_details (batch, gs_fee, csat_fee, optional_fee, gs_csat_optional_fee, crash_course_fee, study_material_fee) VALUES (?,?,?,?,?,?,?)");

            pst.setString(1, batch);
            pst.setInt(2, gs_fee);
            pst.setInt(3, csat_fee);
            pst.setInt(4, optional_fee);
            pst.setInt(5, gs_csat_optional_fee);
            pst.setInt(6, crash_course_fee);
            pst.setInt(7, study_material_fee);

		

				if (pst.executeUpdate() > 0) {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Fee Details Added successfully');");
					out.println("window.location.href = 'AddFeeDetails.html'");
					out.println("</script>");
				}
			
			con.close();
		} catch (Exception e) {
			out.println(e);
		}
		out.close();
	}

}
