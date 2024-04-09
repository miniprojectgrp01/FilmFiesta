import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve the session object
        HttpSession session = request.getSession(false);

        // Check if session exists and if the user is logged in
        if (session != null && session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");

            // Display profile information
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<title>Welcome " + username + "</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Welcome, " + username + "!</h1>");
            out.println("<p>This is your profile page.</p>");
            out.println("<p><a href=\"LogoutServlet\">Logout</a></p>");
            out.println("</body>");
            out.println("</html>");
        } else {
            // If the session does not exist or the user is not logged in, redirect to the login page
            response.sendRedirect("login.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
