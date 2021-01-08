

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.getResult;
import entity.result;

/**
 * Servlet implementation class admin_next
 */
public class admin_next extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private getResult result=new getResult();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_next() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String action = request.getParameter("action");
		
		switch(action) {
	
			
		case "home":
			home(request, response);
			break;
			
		case "result":
			resultpage(request, response);
			break;
			
		
			
		case "Signout":
			sign(request, response);
			break;
		}
		}

	private void resultpage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<result> list_res = result.getRes();
		String winner=result.getWin();
		request.setAttribute("list_res",list_res);
		request.setAttribute("winner",winner);
		request.getRequestDispatcher("results.jsp").forward(request, response);
		
	}

	private void sign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("begin.html").forward(request, response);
		
	}

	private void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("admin_home.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
