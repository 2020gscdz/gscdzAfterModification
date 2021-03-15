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
import gscdz.java.User;

/**
 * Servlet implementation class ctjSkipServlet
 */
@WebServlet("/user/ctj")
public class CuoTiJiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CuoTiJiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");
	    request.setCharacterEncoding("utf-8");
	    HttpSession session=request.getSession();
	    ServletContext sc=this.getServletContext();
	    User user=(User)session.getAttribute("user");
	    ArrayList<SolProblem> solpArr=(ArrayList<SolProblem>)sc.getAttribute("sps");//application中的已解决问题的题集
	    String cuoTiJi=user.getCuoTiji();
	    ArrayList<SolProblem> cuoTiJiArray=new ArrayList<SolProblem>();
	    if(cuoTiJi!=null) {
	    	StringTokenizer text=new StringTokenizer(cuoTiJi,"||");
	    	while(text.hasMoreTokens()) {
	    		int id=Integer.parseInt(text.nextToken());
	    		for(SolProblem p:solpArr) {
	    			if(p.getId()==id) {
	    				cuoTiJiArray.add(p);
	    			}
	    		}
	    	}
	    	session.setAttribute("cuoTiJiArray", cuoTiJiArray);
	    }
		request.getRequestDispatcher("/WEB-INF/InnerPage/CuoTiJi.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
