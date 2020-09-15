package a2020_08_20;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCDB {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String pwd = "123456";
	public static Connection conn = null;
	
	public JDBCDB() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static JDBCDB getDB() {
		return new JDBCDB();
	}
}
