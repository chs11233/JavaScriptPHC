package wooch10;

import java.sql.*;
import java.util.ArrayList;

public class Dao {

	   public static  Connection getConnection() {
		      Connection con = null;
		      try {
		         Class.forName("com.mysql.jdbc.Driver");
		         String jdbcUrl = "jdbc:mysql://localhost:3306/webstudy?characterEncoding=euckr&amp;useUnicode=true&amp;mysqlEncoding=euckr";
		         String DBid = "root";
		         String DBpwd = "root";
		         con = DriverManager.getConnection(jdbcUrl, DBid, DBpwd);
		         System.out.println("DB연결이 되었습니다.");
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      return con; 

		   }
	public void insert(cartDao dao) throws SQLException {
		PreparedStatement pstmt = null;
		Connection con = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement("insert into cart(customer,product,price) values(?,?,?)");
			pstmt.setString(1, dao.getCustomer());
			pstmt.setString(2, dao.getProduct());
			pstmt.setInt(3, dao.getPrice());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (con != null) {
				con.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
		}
	}
	public ArrayList<cartDao> getlist() {
		ArrayList<cartDao> list = new ArrayList<cartDao>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			pstmt = con.prepareStatement("select * from cart");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				cartDao cartdao = new cartDao();
				cartdao.setCartID(rs.getInt("cartID"));
				cartdao.setCustomer(rs.getString("customer"));
				cartdao.setProduct(rs.getString("product"));
				cartdao.setPrice(rs.getInt("price"));
				cartdao.setDate(rs.getString("date"));
				list.add(cartdao);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if (con != null) {
				try {
					con.close();
				} catch(Exception e) {
					
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch(Exception e) {
					
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch(Exception e) {
					
				}
			}
		}
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
