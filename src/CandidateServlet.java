

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.address;
import entity.candidate;
import entity.voter;

/**
 * Servlet implementation class CandidateServlet
 */
public class CandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private candidate cad;
	 private address add;
	 private CandidateValidation cand=new CandidateValidation();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServlet() {
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
		String firstname=request.getParameter("fname"),lastname=request.getParameter("lname"),dob=request.getParameter("applicant_age"),gender=request.getParameter("GENDER"),email=request.getParameter("EMAIL_ID");
		String phone=request.getParameter("MOBILE_NO");
		String hno=request.getParameter("Houseno"),area=request.getParameter("Area"),city=request.getParameter("City"),state=request.getParameter("State"),district=request.getParameter("District");
		String pincode=request.getParameter("Pin");
		String pstate=request.getParameter("elector_state");
		String pdistrict=request.getParameter("elector_district");
		String ppincode=request.getParameter("P_Pin");
		String partyname=request.getParameter("P_Pname");
		String uid= request.getSession().getAttribute("uid").toString();
		cad=new candidate(firstname,lastname,email,phone,dob,uid,gender);
		add=new address(hno,area,city,pincode,district,state,uid);
		boolean isup2=cand.isUpdated(uid, ppincode, pdistrict, pstate, partyname);
		boolean isup=cand.isUpdated_details(cad);
		boolean isup1=cand.isUpdated_address(add);
		
		if(isup&&isup1&&isup2)
		{
			request.getRequestDispatcher("/upload.jsp").forward(request,response);
		}
		else {
			request.getRequestDispatcher("/candidate.jsp").forward(request,response);
		}
	}

}
