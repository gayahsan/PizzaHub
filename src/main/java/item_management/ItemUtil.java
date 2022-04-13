package item_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ItemUtil {
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	//-------------------------insert-------------------
	public static boolean addItem(String itemName, String itemDescription, String itemCategory, String itemPrice, String itemImage){
		boolean isSuccess = false;
		
		try {
			conn = ConnectDB.getConnection();
			stmt = conn.createStatement();
			
			String sql = "insert into items values (0,'"+itemName+"' ,'"+itemDescription+"','"+itemCategory+"','"+itemPrice+"','"+itemImage+"')";
			
			int result = stmt.executeUpdate(sql);
			
			if (result > 0) {
    			isSuccess = true;
			}else {
				isSuccess = false;
			}
    		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	  //------------------------get user details---------------------- public
	  static List<ItemModel> getItemDetails(String itemid){
	  
	  int convertedID = Integer.parseInt(itemid);
	  
	  ArrayList<ItemModel> item = new ArrayList<>();
	  
	  try {
	  
	  conn = ConnectDB.getConnection(); 
	  stmt = conn.createStatement(); 
	  String sql ="select * from items where item_id ='"+convertedID+"'"; 
	  result = stmt.executeQuery(sql);
	  
	  
	  while(result.next()){ 
		  int itemID = result.getInt(1); 
		  String itemName =  result.getString(2); 
		  String itemDescription = result.getString(3); 
		  String itemCategory = result.getString(4); 
		  String itemPrice = result.getString(5);
		  String itemImage = result.getString(6);
	  
	  ItemModel itm = new ItemModel(itemID , itemName ,itemDescription ,itemCategory, itemPrice , itemImage); 
	  item.add(itm);
	  
	  }
	  
	  }catch (Exception e) { e.printStackTrace(); }
	  
	  return item;
	  
	  }
	  
	  
	  //--------------------------get item--------------------- 
	  public static List<ItemModel> getItem(String itmName){
	  
	  
	  ArrayList<ItemModel> item = new ArrayList<>();
	  
	  try {
	  
	  conn = ConnectDB.getConnection(); 
	  stmt = conn.createStatement(); 
	  String sql ="select * from items where itemName ='"+itmName+"'"; 
	  result = stmt.executeQuery(sql);
	  
	  
	  while(result.next()){ 
		  int itemID = result.getInt(1); 
		  String itemName =  result.getString(2); 
		  String itemDescription = result.getString(3); 
		  String itemCategory = result.getString(4); 
		  String itemPrice = result.getString(5);
		  String itemImage = result.getString(6);
  
  ItemModel itm = new ItemModel(itemID , itemName ,itemDescription ,itemCategory, itemPrice , itemImage); 
  item.add(itm);
	  
	  
	  }
	  
	  }catch (Exception e) { e.printStackTrace(); }
	  
	  return item;
	  
	  }
	 
	  
	//-------------update---------------------------------------
			public static boolean updateItem(String itemID, String itemName, String itemDescription , String itemCategory ,String itemPrice , String itemImage) {
				
				boolean isSuccess = false;
				try {
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					String sql = "update items set itemName='"+itemName+"' , itemDescription='"+itemDescription+"' , itemCategory='"+itemCategory+"' , itemPrice='"+itemPrice+"' , itemImage='"+itemImage+"'" + "where itemID='"+itemID+"'";
					int result = stmt.executeUpdate(sql);
					
					if(result > 0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				return isSuccess;
			}
	
			
			
			//-------------delete----------------------------------------
			
			public static boolean deleteItem(String itemid) {
				boolean isSuccess = false;
				
				int convId = Integer.parseInt(itemid);
			
				try {
					
					conn = ConnectDB.getConnection();
					stmt = conn.createStatement();
					
					String sql = "delete from items where itemID='"+convId+"'";
					int result = stmt.executeUpdate(sql);
					
					if(result > 0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}
			
				return isSuccess;
			}

	
}

