package bookManage;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class MySQLConnector {
	public static final String url = "jdbc:mysql://localhost:3306/BookDB?useUnicode=true&characterEncoding=UTF-8";
	public static final String driver = "com.mysql.jdbc.Driver";
	public static final String user = "root";
	public static final String pwd="root";
	public static Connection getConnection() throws SQLException {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}