package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UpdateFlnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemID = request.getParameter("itemID");
		String itemName = request.getParameter("itemName");
		String itemDescription = request.getParameter("itemDescription");
		String itemCategory = request.getParameter("itemCategory");
		String itemPrice = request.getParameter("itemPrice");
		String itemImage = request.getParameter("itemImage");
		
		
		
		boolean isTrue;
		isTrue = ItemUtil.updateItem(itemID, itemName, itemDescription, itemCategory, itemPrice, itemImage);
		
		if(isTrue == true) {
			  List<ItemModel> itemDetails = ItemUtil.getItemDetails(itemID);
			  request.setAttribute("itemDetails", itemDetails);
			 
			  RequestDispatcher dis = request.getRequestDispatcher("ViewItems.jsp");
			  dis.forward(request, response);
		}else {
			
			  List<ItemModel> itemDetails = ItemUtil.getItemDetails(itemID);
			  request.setAttribute("itemDetails", itemDetails);
			 
			
			RequestDispatcher dis = request.getRequestDispatcher("Update_fromI.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
