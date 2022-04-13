package item_management;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class AdminUtil {

	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	
	
	//--------------------------validate---------------------
		public static boolean validate(String username , String uspass) {
			boolean isSuccess = false;
			try {
				conn = ConnectDB.getConnection();
				stmt = conn.createStatement();
				String sql = "select * from admin_user where username ='"+username+"' and password = '"+uspass+"' ";
				result = stmt.executeQuery(sql);
				
				if(result.next() ) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		

}
