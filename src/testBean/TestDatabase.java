package testBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TestDatabase {

	private static final String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "scott";
	private static final String PASSWD = "tiger";
	
	Connection con = null;
	Statement stmt = null;
	
	public TestDatabase() {
		try {
			Class.forName(DB_DRIVER);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void connect() {
		try {
			con = DriverManager.getConnection(DB_URL, USER, PASSWD);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void disconnect() {
		if(con != null) {
			try {
				con.close();
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
	
	public ArrayList<TestEntity> getInfo(){
		
		connect();
		
		ArrayList<TestEntity> list = new ArrayList<TestEntity>();
		String SQL = "select * from emptbl";
		
		try {
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(SQL);
			
			while(rs.next()) {
				
				TestEntity te = new TestEntity();
				
				te.setEmp(rs.getString("emp"));
				te.setManager(rs.getString("manager"));
				te.setDepartment(rs.getString("department"));
				list.add(te);
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
