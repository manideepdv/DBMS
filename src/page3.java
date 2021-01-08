

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.address;
import entity.get_address;
import entity.get_cand;
import entity.get_details;
import entity.voter;
import entity.votingpage;

/**
 * Servlet implementation class page3
 */
public class page3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private get_details vot=new get_details();
	private get_address add=new get_address();
    private get_cand cd=new get_cand();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public page3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		switch(action) {
		
		case "VotingPage":
			Vote(request, response);
			break;
			
		case "About":
			About(request, response);
			break;
			
		case "Contact":
			Contact(request, response);
			break;
			
		case "Signout":
			sign(request, response);
			break;
			
	}
	}

	private void sign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("begin.html").forward(request, response);
	}

	private void Contact(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UID=request.getParameter("UID");

		request.setAttribute("UID",UID);
		request.getRequestDispatcher("contact.jsp").forward(request, response);
		
	}

	private void About(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UID=request.getParameter("UID");
		
		List<voter> list_det = vot.get_det(UID);
		
		request.setAttribute("list_det", list_det);
		request.setAttribute("UID",UID);
		request.getRequestDispatcher("about.jsp").forward(request, response);
		
	}

	private void Vote(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String UID=request.getParameter("UID");
		
		List<votingpage> list_cd=cd.get(UID);
		request.setAttribute("list_cd", list_cd);
		request.setAttribute("UID",UID);
		request.getRequestDispatcher("voting_page.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
