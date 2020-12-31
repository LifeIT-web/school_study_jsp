package shopBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ShopDatabase {

	private static final String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String DB_URL    = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String DB_USER   = "SHOP";
	private static final String DB_PASSWD = "1234";

	private Connection conn = null;
	private Statement stmt = null;
	
	public ShopDatabase() {
		try {
		Class.forName(DB_DRIVER);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void connect() {
		try {
			DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWD);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void disconnect() {
		if(conn != null) {
			try {
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null) {
			try {
				stmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<ShopEntity> getShopInfo(){
		
		connect();
		
		ArrayList<ShopEntity> list = new ArrayList<>();
		String SQL = "select * from userTBL";
		
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			
			while(rs.next()) {
				ShopEntity se = new ShopEntity();
				
				se.setUserid(rs.getString("userid"));
				se.setUsername(rs.getString("username"));
				se.setBirthyear(rs.getInt("birthyear"));
				se.setAddr(rs.getString("addr"));
				se.setMobile1(rs.getString("mobile1"));
				se.setMobile2(rs.getString("mobile2"));
				se.setHeight(rs.getInt("height"));
				se.setMdate(rs.getString("mdate"));
				list.add(se);
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
}
