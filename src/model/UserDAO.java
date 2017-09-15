package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ResourceBundle;

import model.dto.UserDTO;
import model.util.DBUtil;

public class UserDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();

	public static boolean checkIdPw(String id, String password) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("checkIdPw"));
			pstmt.setString(1, id);
			pstmt.setString(2, password);

			result = pstmt.executeUpdate();
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static int duplicateIdCheck(String id) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("duplicateIdCheck"));
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				return 1;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return 0;

	}
	
	public static int duplicateNumCheck(String num) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("duplicateNumCheck"));
			System.out.println(num);
			pstmt.setString(1, num);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				return 1;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return 0;

	}

	public static boolean createUser(String id, String password, String name, String university, String college,
			String major, String num, int grade) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("createUser"));
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setString(4, university);
			pstmt.setString(5, college);
			pstmt.setString(6, major);
			pstmt.setString(7, num);
			pstmt.setInt(8,grade);
			result = pstmt.executeUpdate();

			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static boolean leaveUser(String id,String pw) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("deleteUser"));
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			result = pstmt.executeUpdate();
			
			if (result == 1) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}

		return false;
	}

	public static int updateUser(String id,String password, String college, String major, int grade) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("updateUser"));
			pstmt.setString(1, password);
			pstmt.setString(2, college);
			pstmt.setString(3, major);
			pstmt.setInt(4, grade);
			pstmt.setString(5, id);
			result = pstmt.executeUpdate();
			if(result==1){return 1;}
			
		} finally {
			DBUtil.close(con, pstmt);
		}

		return result;
	}
	
	public static UserDTO getCustomer(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		UserDTO c=new UserDTO();
		ResultSet rset = null;

		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getUser"));
			System.out.println("updateUSer");
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				c = new UserDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getInt(8));
			}
			
			
		} finally {
			DBUtil.close(con, pstmt);
		}

		return c;
	}
	
}
