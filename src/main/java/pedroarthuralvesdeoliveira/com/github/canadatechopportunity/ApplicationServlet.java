package pedroarthuralvesdeoliveira.com.github.canadatechopportunity;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "application", value = "/applicationForm")
public class ApplicationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/applicationForm.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String birthdate = request.getParameter("birthdate");
        String nativeLanguage = request.getParameter("nativeLanguage");
        String[] skills = request.getParameterValues("skills");

        if (name.isBlank() || birthdate.isBlank() || nativeLanguage.isBlank() || skills == null || skills.length == 0) {
            response.sendError(400, "Please, fill all the required inputs. ");
        }

        request.setAttribute("name", name);
        request.setAttribute("birthdate", birthdate);
        request.setAttribute("nativeLanguage", nativeLanguage);
        request.setAttribute("skills", skills);
        request.getRequestDispatcher("/userData.jsp").forward(request, response);
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}
