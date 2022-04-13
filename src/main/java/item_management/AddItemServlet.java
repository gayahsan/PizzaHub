package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String itemName = request.getParameter("itemName");
		String itemDescription = request.getParameter("itemDescription");
		String itemCategory = request.getParameter("itemCategory");
		String itemPrice = request.getParameter("itemPrice");
		String itemImage = request.getParameter("itemImage");

		boolean result;

		result = ItemUtil.addItem(itemName,itemDescription,itemCategory,itemPrice,itemImage);
        
		
		if(result == true) {
			
//			out.println("<script type = 'text/javascript'>");
//			out.println("alert('addd');");
//			out.println("alert(itemName);");
//			out.println("</script>");
			
			
			List<ItemModel> itemDetails = ItemUtil.getItem(itemName);
			request.setAttribute("itemDetails", itemDetails);
   		
			RequestDispatcher dis = request.getRequestDispatcher("ViewItems.jsp");
			dis.forward(request, response);
			
			
			
		} else {
//			out.println("<script type = 'text/javascript'>");
//			out.println("alert('error:can't add item');");
//			out.println("location = 'Add_New_Item.jsp'");
//			out.println("</script>");
			out.println("<script type = 'text/javascript'>");
			out.println("alert('error:can't add item');");
			out.println("</script>");
   		
   		
	}


}
	}