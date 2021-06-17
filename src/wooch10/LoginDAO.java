//package wooch10;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//public class LoginDAO {
//	Connection con = null;
//	//DB하고 연결통로인 Connection객체를 생성
//	public Connection getConnection()throws SQLException{
//		connection con = null;
//		preparedStatement ptsmt=null;
//		try {
//		con = getConnection();
//		String sql = "INSERT INTO LOGIN VALUES(?,?,?)";
//		pstmt = con.prepareStatement(sql);
//		pstmt.setString(1, dto.getId());
//		pstmt.setString(2, dto.getName());
//		pstmt.setString(3, dto.getPwd());
//		
//		pstmt.executeUpdate();
//		
//		String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
//		String user = "WOOSEONG";
//		String passwd = "1111";
//		//1. DB 연동 드라이버 로드
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//		
//		//2. 연결 객체 생성
//		
//		return con;
//	}
//	
//	//DB에 LoginDTO를 입력
//	public ArrayList<LoginDTO> getListUser(int p, int numOfRecords) throws SQLExceptin{
//		ArrayList<LoginDTO> dtos = new ArrayList<LoginDTO>();
//	}
//		
//		//2. 연결 객체 생성
//		Connection con = getConnection();
//		
//		//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
//		String sql = "select * from (select rownum num, L.* from(select * from login order by id) L)"
//				+ "where num between ? and ?";
//		PreparedStatement st + con.prepareStatement(sql);
//		st.setInt(1, 1+(p-1)*numOfRecords);
//		st.setInt(2, p*numOfRecords);
//		
//		ResultSet rs = st.executeQuery();
//		
//		PreparedStatement pstmt = null;
//		try {
//		
//		pstmt = con.prepareStatement(sql);
//		pstmt.setString(1, dto.getId());
//		pstmt.setString(2, dto.getName());
//		pstmt.setString(3, dto.getPwd());
//		pstmt.executeUpdate();
//		
//		//4. SQL 실행
//		
//		//5. 객체 해제
//		pstmt.close();
//		con.close();
//		
//	}
//}
//	
//	//사용자가 입력한폼에서 입력한 데이터와 DB애서 추출한 데이터 비교
//	public int checkLogin(String id, String pwd) throws SQLException{
//		int x = -1;
//		//1. DB 연동 > Connection 얻기
//		Connection con =  getConnection();
//		//2. SQL 실행
//		String sql =  "SELECT pwd FROM LOGIN where id=?";
//		PreparedStatement pstmt = con.prepareStatement(sql);
//		pstmt.setString(1, id);
//		ResultSet rs = pstmt.executeQuery();
//		//3. ResultSet 객체에서 pwd를 추출해서 파라메터 pwd와 비교
//		if(rs.next()) {
//			String dbpwd = rs.getString("pwd");
//			if(pwd.equals(dbpwd)) {
//				x = 1; // 내가 입력한 사용자가 DB에 존재
//			}else {
//				x = 0; // 비번이 틀린 것
//			}
//		}else {
//			x = -1; //사용자 id가 없는 경우
//		}
//		pstmt.close();
//		rs.close();
//		con.close();
//		
//		return x;
//	}	
//}
