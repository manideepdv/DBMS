

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.details;

/**
 * Servlet implementation class SignUpServlet
 */
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SignUpValidation valid=new SignUpValidation();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid=request.getParameter("username");
		String password=request.getParameter("password");
		String repassword=request.getParameter("confirm_password");
		boolean isValid= valid.isSignUpValid(password, repassword);
		
		if(isValid) {
			boolean isupdated= valid.isUpdated(uid, password);
			//boolean isupdated1=valid.isMongoUp(uid, password);
			if(isupdated) {
				request.getSession().setAttribute("uid", uid);
			    request.getRequestDispatcher("/security_ques.jsp").forward(request,response);
			}
		}
			else
			{
				
				request.setAttribute("errormessage","*password and repeat password does not matched");
				request.getRequestDispatcher("/SignUp.jsp").forward(request,response);
			}
		
	}

}
