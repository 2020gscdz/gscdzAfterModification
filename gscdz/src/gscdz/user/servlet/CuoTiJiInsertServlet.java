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
		//����ݔ��
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
					response.getWriter().println("<html><body><P>���⼯�����д���</P></body></html>");
					return;
				}
			}
			ctj += "||";
			ctj += id;
			UserDB db = new UserDB();
			db.updateCuoTiJi(user.getId(), ctj);
			//���¶�ȡuser����Ϣ
			user=db.getUserByid(user.getId());
			session.setAttribute("user", user);
			response.getWriter().println("<html><body><P>��ӳɹ�</P></body></html>");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
