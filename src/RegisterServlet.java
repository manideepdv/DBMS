

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import entity.*;
/**
 * Servlet implementation class RegisterServlet
 */

@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private voter vot;
	 private address add;
	 //private candidate cand;
	 private RegisterValidation regv=new RegisterValidation();
	 //private RegisterValidation regv=new RegisterValidation();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		
		
		String firstname=request.getParameter("fname"),lastname=request.getParameter("lname"),dob=request.getParameter("applicant_age"),gender=request.getParameter("GENDER"),email=request.getParameter("EMAIL_ID");
		String phone=request.getParameter("MOBILE_NO");
		String hno=request.getParameter("Houseno"),area=request.getParameter("Area"),city=request.getParameter("City"),state=request.getParameter("State"),district=request.getParameter("District");
		String pincode=request.getParameter("Pin");
		String uid= request.getSession().getAttribute("uid").toString();
		vot=new voter(firstname,lastname,email,phone,dob,gender,uid);
		add=new address(hno,area,city,pincode,district,state,uid);
		boolean isup=regv.isUpdated_details(vot);
		boolean isup1=regv.isUpdated_address(add);
		
		if(isup&&isup1)
		{
			request.getRequestDispatcher("/upload.jsp").forward(request,response);
		}
		else {
			request.getRequestDispatcher("/Register.jsp").forward(request,response);
		}
		
	}

	
	
	

}
