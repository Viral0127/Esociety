import java.io.IOException;
import java.io.PrintWriter;

import javax.jws.WebParam.Mode;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.User.Model;
import com.User.Userdao;




public class LoginController extends HttpServlet {
	
	public LoginController() {
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		

		resp.setContentType("text/html");
		PrintWriter out=resp.getWriter();
		
		System.out.println("m insevlet chake login");
		
		if(req.getParameter("name").equals("viral") && req.getParameter("pass").equals("12345"))
		{
			resp.sendRedirect("admin.jsp");
		}
		
		else
		{
			
		Model m=new Model();
		
		m.setName(req.getParameter("name"));
		m.setMobile(req.getParameter("mobile"));
		m.setGender(req.getParameter("gender"));
		m.setEmail(req.getParameter("email"));
		m.setPincode(req.getParameter("pincode"));
		m.setPass(req.getParameter("pass"));
		
		
		Userdao rg=new Userdao();
		com.User.Model flag=rg.checklogin(m);
		
		if(flag!=null)
		{
			HttpSession session=req.getSession(true);
			session.setAttribute("viral", flag);
			
			resp.sendRedirect("profile.jsp");
		}
		else
		{
			
		
			out.print("<p style=\"color:red\" align=\"center\"> Login Failed. Enter correct details </p> ");
		}
	}
	
	}
	
}
