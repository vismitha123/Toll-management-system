

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Logincheck")
public class Logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Logincheck() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		if(uname.equals("admin") && pass.equals("1234"))
		{   
			
			
			HttpSession session = request.getSession();
		    session.setAttribute("Username",uname);
			response.sendRedirect("Welcomeadmin.jsp");
			return;			
			
		}
		
		if(uname=="Vis"&&pass=="1234")
		{	
			HttpSession session = request.getSession();
	        session.setAttribute("Username",uname);
			response.sendRedirect("Welcomestaff.jsp");
			return;
		}
	}

 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
 }
	
}
		
