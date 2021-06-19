package ut;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UtDAO {
	
	private Connection conn;
	private ResultSet rs;

	public UtDAO() {
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
		String SQL = "SELECT utID FROM UT ORDER BY utID DESC";
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
	
	public int write(String UtTitle, String userID, String UtContent) {
		String SQL = "INSERT INTO UT VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,getNext());
			pstmt.setString(2,UtTitle);
			pstmt.setString(3,userID);
			pstmt.setString(4,getDate());
			pstmt.setString(5,UtContent);
			pstmt.setInt(6,1);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public ArrayList<Ut> getList(int pageNumber) {
		String SQL = "SELECT * FROM UT WHERE utID < ? AND utAvailable = 1 ORDER BY utID DESC LIMIT 10";
		ArrayList<Ut> list = new ArrayList<Ut>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Ut ut = new Ut();
				ut.setUtID(rs.getInt(1));
				ut.setUtTitle(rs.getString(2));
				ut.setUserID(rs.getString(3));
				ut.setUtDate(rs.getString(4));
				ut.setUtContent(rs.getString(5));
				ut.setUtAvailable(rs.getInt(6));
				list.add(ut);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM UT WHERE utID < ? AND utAvailable = 1 ORDER BY utID DESC LIMIT 10";
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
	
	public Ut getUt(int utID) {
		String SQL = "SELECT * FROM UT WHERE utID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, utID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Ut ut = new Ut();
				ut.setUtID(rs.getInt(1));
				ut.setUtTitle(rs.getString(2));
				ut.setUserID(rs.getString(3));
				ut.setUtDate(rs.getString(4));
				ut.setUtContent(rs.getString(5));
				ut.setUtAvailable(rs.getInt(6));
				return ut;
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int update(int utID, String utTitle, String utContent) {
		String SQL = "UPDATE UT SET utTitle = ?, utContent = ? WHERE utID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,utTitle);
			pstmt.setString(2,utContent);
			pstmt.setInt(3,utID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	public int delete(int utID) {
		String SQL = "UPDATE UT SET utAvailable = 0 WHERE utID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, utID);
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}

}
