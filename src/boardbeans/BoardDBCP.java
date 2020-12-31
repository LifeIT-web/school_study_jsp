package boardbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBCP {
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;
	
	public BoardDBCP() {
		
		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void connect() {
		
		try {
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<BoardEntity> getBoardList(){
		
		connect();
		ArrayList<BoardEntity> list = new ArrayList<BoardEntity>();
		
		String SQL = "SELECT * FROM BOARD_2";
		try {
			pstmt = con.prepareStatement(SQL);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				
				BoardEntity brd = new BoardEntity();
				brd.setId(rs.getInt("id"));
				brd.setName(rs.getNString("name"));
				brd.setPasswd(rs.getString("passwd"));
				brd.setTitle(rs.getString("title"));
				brd.setEmail(rs.getString("email"));
				brd.setRegdate(rs.getDate("regdate"));
				brd.setContent(rs.getString("content"));
				brd.setAddr(rs.getString("addr"));
				list.add(brd);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public BoardEntity getBoard(int id) {
		connect();
		
		String SQL = "SELECT * FROM BOARD_2 WHERE ID = ?";
		BoardEntity brd = new BoardEntity();
		
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			brd.setId(rs.getInt("id"));
			brd.setName(rs.getString("name"));
			brd.setPasswd(rs.getString("passwd"));
			brd.setTitle(rs.getString("title"));
			brd.setEmail(rs.getString("email"));
			brd.setRegdate(rs.getTimestamp("regdate"));
			brd.setContent(rs.getString("content"));
			brd.setAddr(rs.getString("addr"));
			rs.close();
			
		} catch (SQLException e) {
			// TODO: handle exception\
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return brd;
	}
	
	public boolean insertDB(BoardEntity board) {
		
		boolean success = false;
		connect();
		String sql = "INSERT INTO BOARD_2 VALUES(board_2_seq.nextval, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getPasswd());
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getEmail());
			pstmt.setString(5, board.getContent());
			pstmt.setString(6, board.getAddr());
			pstmt.executeUpdate();
			success = true;
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return success;
		
	}
	
	public boolean updateDB(BoardEntity board) {
		
		boolean success = false;
		connect();
		
		String sql = "UPDATE BOARD_2 SET NAME=?, TITLE=?, EMAIL=?, CONTENT=?, ADDR=? WHERE ID=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getEmail());
			pstmt.setString(4, board.getContent());
			pstmt.setString(5, board.getAddr());
			pstmt.setInt(6, board.getId());
			int rowUdt = pstmt.executeUpdate();
			if(rowUdt == 1) {
				success = true;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	public boolean isPasswd(int id, String passwd) {
		
		boolean success = false;
		connect();
		
		String sql = "SELECT PASSWD FROM BOARD_2 WHERE ID = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			String orgPasswd = rs.getString(1);
			
			if(passwd.equals(orgPasswd)) {
				success = true;
			}
			System.out.println("비밀번호 : " + success);
			rs.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return success;
	}
	
	public boolean deleteDB(int id) {
		
		boolean success = false;
		
		connect();
		String sql = "DELETE FROM BOARD_2 WHERE ID = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			
			success = true;
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return success;
		}
		finally{
			disconnect();
			
		}
		return success;
		
	}
}