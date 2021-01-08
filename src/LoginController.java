

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserValidation valid=new UserValidation();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
			String username=valid.getname(UID);
			request.getSession().setAttribute("username",username);
			request.getSession().setAttribute("UID",UID);
		    request.getRequestDispatcher("/security1.jsp").forward(request,response);
		}
		else
		{
			
			request.setAttribute("errormessage","Invald User name or password");
			request.getRequestDispatcher("/login.jsp").forward(request,response);
		}
		
	}

}
