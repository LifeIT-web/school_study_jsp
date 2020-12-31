package testBean;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDatabaseCP {

	private Connection con = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;
	
	public TestDatabaseCP() {
		try {
		InitialContext ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/OracleDB");
		}
	}
			
			
}
