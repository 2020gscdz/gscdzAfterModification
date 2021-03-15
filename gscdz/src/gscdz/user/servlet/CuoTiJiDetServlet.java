package gscdz.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gscdz.java.SolProblem;

@WebServlet("/user/ctjProDet")
public class CuoTiJiDetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CuoTiJiDetServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		ServletContext sc=this.getServletContext();
		ArrayList<SolProblem> problems=(ArrayList<SolProblem>)sc.getAttribute("sps");
		SolProblem solp=null; 
		String id=request.getParameter("id");
		for(SolProblem sop:problems) {
			if(Integer.toString(sop.getId()).equals(id)) {
				solp=sop;
			}
		}
		//输出
		PrintWriter out = response.getWriter();
		String path=request.getContextPath();
		out.println("<html><head><body>");
		out.println("<script src=\""+path+"/js/mathjax-config.js\">\r\n"
				+ "	\r\n"
				+ "    </script>\r\n"
				+ "    <script type=\"text/javascript\"\r\n"
				+ "    	src=\"http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full\">\r\n"
				+ "    	\r\n"
				+ "    </script>");
		out.println(solp.getSubject()+"<br/>相关知识点："+solp.getKnowledgePoints()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+solp.getCreateTime()+"<br/>"+"解答："+solp.getSolution()+"分析："+solp.getAnalysis());
		out.println("</html></head></body>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
