package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class DeleteFlnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String itemID = request.getParameter("itemID");
		boolean isTrue;
		
		isTrue = ItemUtil.deleteItem(itemID);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ViewItems.jsp");
			dis.forward(request, response);
			
		}
		else {
			List<ItemModel> itemDetails = ItemUtil.getItemDetails(itemID);
			request.setAttribute("itemDetails", itemDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Delete_fromI.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
