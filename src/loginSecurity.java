

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginSecurity
 */
public class loginSecurity extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private securityValidation val=new securityValidation();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginSecurity() {
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
		String username= request.getSession().getAttribute("username").toString();
		String UID= request.getSession().getAttribute("UID").toString();
		String ques1=request.getParameter("ANSWER_1");
		String ques2=request.getParameter("ANSWER_2");
		boolean check=val.isCheck(UID, ques1, ques2);
		if(check) {
			request.getSession().setAttribute("UID",UID);
			request.getSession().setAttribute("username",username);
		    request.getRequestDispatcher("/index.jsp").forward(request,response);
		
	}
		else
		{
			
			request.setAttribute("errormessage_1","Answers doesnot match !!!");
			request.getRequestDispatcher("/security1.jsp").forward(request,response);
		}

}
}
