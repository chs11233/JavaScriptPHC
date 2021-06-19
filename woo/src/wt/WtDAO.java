package wt;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class WtDAO {
	
	private Connection conn;
	private ResultSet rs;

	public WtDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/dbs";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return ""; //데이터베이스 오류
	}
	
	public int getNext() {
		String SQL = "SELECT wtID FROM WT ORDER BY wtID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫 번째 게시물인 경우
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public int write(String wtTitle, String userID, String wtContent) {
		String SQL = "INSERT INTO WT VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,getNext());
			pstmt.setString(2,wtTitle);
			pstmt.setString(3,userID);
			pstmt.setString(4,getDate());
			pstmt.setString(5,wtContent);
			pstmt.setInt(6,1);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public ArrayList<Wt> getList(int pageNumber) {
		String SQL = "SELECT * FROM WT WHERE wtID < ? AND wtAvailable = 1 ORDER BY wtID DESC LIMIT 10";
		ArrayList<Wt> list = new ArrayList<Wt>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Wt wt = new Wt();
				wt.setWtID(rs.getInt(1));
				wt.setWtTitle(rs.getString(2));
				wt.setUserID(rs.getString(3));
				wt.setWtDate(rs.getString(4));
				wt.setWtContent(rs.getString(5));
				wt.setWtAvailable(rs.getInt(6));
				list.add(wt);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM WT WHERE wtID < ? AND wtAvailable = 1 ORDER BY wtID DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Wt getWt(int wtID) {
		String SQL = "SELECT * FROM WT WHERE wtID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, wtID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Wt wt = new Wt();
				wt.setWtID(rs.getInt(1));
				wt.setWtTitle(rs.getString(2));
				wt.setUserID(rs.getString(3));
				wt.setWtDate(rs.getString(4));
				wt.setWtContent(rs.getString(5));
				wt.setWtAvailable(rs.getInt(6));
				return wt;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int wtID, String wtTitle, String wtContent) {
		String SQL = "UPDATE WT SET wtTitle = ?, wtContent = ? WHERE wtID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,wtTitle);
			pstmt.setString(2,wtContent);
			pstmt.setInt(3,wtID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public int delete(int wtID) {
		String SQL = "UPDATE WT SET wtAvailable = 0 WHERE wtID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, wtID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}

}
