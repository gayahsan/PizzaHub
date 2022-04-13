package item_management;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	private static String url = "jdbc:mysql://localhost:3306/pizzahub_db";
	private static String dbuserName = "root";
	private static String dbpassword = "root123";
	private static Connection conn;
	
	public static Connection getConnection() {
		try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, dbuserName, dbpassword);
			}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		return conn;
	}
}
