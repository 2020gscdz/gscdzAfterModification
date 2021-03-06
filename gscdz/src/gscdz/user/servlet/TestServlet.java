package gscdz.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gscdz.java.SolProblem;

@WebServlet("/user/test")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    request.setCharacterEncoding("utf-8");
	    
		ServletContext context =this.getServletContext();
		HttpSession session=request.getSession();
		ArrayList<SolProblem> sps=(ArrayList<SolProblem>)context.getAttribute("sps");
		int number=(int)(Math.random()*sps.size());
		SolProblem solproblem=sps.get(number);
		String tips=solproblem.getTips();

		session.setAttribute("tips",tips);
		session.setAttribute("solproblem",solproblem);
        
		request.getRequestDispatcher("/WEB-INF/InnerPage/test.jsp").include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
