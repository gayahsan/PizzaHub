package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class AdminLoginServlet
 */
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uname");
		String upass =request.getParameter("pswd");

		boolean isTrue;  
		isTrue = AdminUtil.validate(username, upass);
		
		if(isTrue == true ) {			
			RequestDispatcher dis = request.getRequestDispatcher("AdminDashboard.jsp");
			dis.forward(request, response);
		}else {
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert('incorrect username or password');");
			out.println("location = 'AdminLogin.jsp'");
			out.println("</script>");
		}
		
	}

}
