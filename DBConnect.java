package DB;
import java.sql.*;


public class DBConnect {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost/xe","system","1234");
		return conn;
	}
}
