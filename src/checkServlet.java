

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class checkServlet
 */
public class checkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public checkValidation valid=new checkValidation();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String UID=request.getSession().getAttribute("UID").toString();
		String ans=request.getParameter("ans");
		
		boolean val=valid.isValid(UID);
		if(!val) {
		boolean submit=valid.isSubmit(UID, ans);
		if(submit) {
			request.setAttribute("UID",UID);
			request.setAttribute("message","Successfully recorded your vote !!!");
		    request.getRequestDispatcher("/voting_page.jsp").forward(request,response);
		}
		else {
			request.setAttribute("UID",UID);
			request.setAttribute("message","Not recorded your vote contact officials");
		    request.getRequestDispatcher("/voting_page.jsp").forward(request,response);
		}
		}
		else {
			request.setAttribute("UID",UID);
			request.setAttribute("message","Not permitted Already voted !!!");
		    request.getRequestDispatcher("/voting_page.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
