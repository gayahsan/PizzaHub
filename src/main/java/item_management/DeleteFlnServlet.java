package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class DeleteFlnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String itemID = request.getParameter("itemID");
		boolean isTrue;
		
		isTrue = ItemUtil.deleteItem(itemID);
		
		if (isTrue == true) {
			/*
			 * RequestDispatcher dis = request.getRequestDispatcher("ViewItems.jsp");
			 * dis.forward(request, response);
			 */
			
			out.println("<script type = 'text/javascript'>");
		  	out.println("location = 'ViewItems.jsp'");
			out.println("</script>");
			
		}
		else {
			List<ItemModel> itemDetails = ItemUtil.getItemDetails(itemID);
			request.setAttribute("itemDetails", itemDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Delete_fromI.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
