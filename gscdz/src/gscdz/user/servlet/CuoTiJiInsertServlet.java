package gscdz.user.servlet;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gscdz.java.User;
import gscdz.java.UserDB;

@WebServlet("/user/insert")
public class CuoTiJiInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CuoTiJiInsertServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//中文輸出
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String ctj = user.getCuoTiji();
		if (ctj == null) {
			ctj = id;
		} else {
			StringTokenizer tokenizer=new StringTokenizer(ctj,"||");
			while(tokenizer.hasMoreTokens()) {
				if(tokenizer.nextToken().equals(id)) {
					response.getWriter().println("<html><body><P>错题集中已有此题</P></body></html>");
					return;
				}
			}
			ctj += "||";
			ctj += id;
			UserDB db = new UserDB();
			db.updateCuoTiJi(user.getId(), ctj);
			//重新读取user的信息
			user=db.getUserByid(user.getId());
			session.setAttribute("user", user);
			response.getWriter().println("<html><body><P>添加成功</P></body></html>");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
