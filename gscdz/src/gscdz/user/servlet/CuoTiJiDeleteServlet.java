package gscdz.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gscdz.java.User;
import gscdz.java.UserDB;

@WebServlet("/user/delete")
public class CuoTiJiDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CuoTiJiDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		String ctj=user.getCuoTiji();
		int index=ctj.indexOf(id);
		if(index==0) {
        	ctj=ctj.substring(3);
        }
        else {
        	String before=ctj.substring(0,index-2);
        	String after=ctj.substring(index+1);
        	ctj=before+after;
        }
    	//修改
        UserDB db=new UserDB();
        db.updateCuoTiJi(user.getId(), ctj);
        //重新读取
        user=db.getUserByid(user.getId());
        session.setAttribute("user", user);
        //页面跳转
        request.getRequestDispatcher("ctj").include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
