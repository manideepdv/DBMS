

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Adminlogin
 */
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserValidation valid=new UserValidation();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminlogin() {
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
		// TODO Auto-generated method stub
		String UID=request.getParameter("username");
		String password=request.getParameter("password");
		boolean isValid= valid.isUserValid(UID, password);
		
		if(isValid) {
			request.getSession().setAttribute("UID",UID);
		    request.getRequestDispatcher("admin_home.jsp").forward(request,response);
		}
		else
		{
			
			request.setAttribute("errormessage","Invald User name or password");
			request.getRequestDispatcher("/Login_Admin.jsp").forward(request,response);
		}
		
	
	}

}
