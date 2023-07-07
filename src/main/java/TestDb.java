import java.sql.*;

public class TestDb {
	private static Connection con;
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost/account?characterEncoding=utf-8";
			con = DriverManager.getConnection(dbURL, "root", "");
			System.out.println("Connect DB OK");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
