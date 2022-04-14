package item_management;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

@MultipartConfig
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String itemName = request.getParameter("itemName");
		String itemDescription = request.getParameter("itemDescription");
		String itemCategory = request.getParameter("itemCategory");
		String itemPrice = request.getParameter("itemPrice");
		//String itemImage = request.getParameter("itemImage");
		
		Part file=request.getPart("itemImage");
		String imageFileName=file.getSubmittedFileName();
		String uploadPath="D:/Semesters/Y3S2/ITPM/PizzaHub2Nim/src/main/webapp/Images"+imageFileName; 
		
		// Uploading our selected image into the images folder
		
				try
				{
				
				FileOutputStream fos=new FileOutputStream(uploadPath);
				InputStream is=file.getInputStream();
				
				byte[] data=new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
				
				}
				
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
		boolean result;

		result = ItemUtil.addItem(itemName,itemDescription,itemCategory,itemPrice,imageFileName);
        
		
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