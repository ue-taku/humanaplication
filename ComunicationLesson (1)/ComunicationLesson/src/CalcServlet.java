import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CalcModel;

public class CalcServlet extends HttpServlet{

    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");

        String enz1      = req.getParameter("enz1");
        String enz_type = req.getParameter("enz_type");
        String enz2      = req.getParameter("enz2");

        CalcModel mod = new CalcModel();
        String answer = mod.shisokuAnswer(enz1, enz_type, enz2);

        req.setAttribute("answer", answer);

        req.getRequestDispatcher("index.jsp").forward(req,res);

    }
}
