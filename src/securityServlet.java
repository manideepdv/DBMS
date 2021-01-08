

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class securityServlet
 */
public class securityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private securityValidation val=new securityValidation();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public securityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid= request.getSession().getAttribute("uid").toString();
		String ques1=request.getParameter("ANSWER_1");
		String ques2=request.getParameter("ANSWER_2");
		boolean check=val.isSubmit(uid, ques1, ques2);
		if(check) {
			request.getSession().setAttribute("uid", uid);
		    request.getRequestDispatcher("/Register.jsp").forward(request,response);
		}
		else
		{
			request.getSession().setAttribute("uid", uid);
			request.setAttribute("errormessage","Invalid answers Try Again!!!");
			request.getRequestDispatcher("/security_ques.jsp").forward(request,response);
		}
	}

}
