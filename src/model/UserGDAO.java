package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.UserGDTO;
import model.util.DBUtil;

public class UserGDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<UserGDTO> getMyGrade(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserGDTO> list = null ;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getMyGrade"));
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			list = new ArrayList<UserGDTO>();
			while(rset.next()) {
				list.add(new UserGDTO(rset.getString(1), rset.getString(2), rset.getString(3), rset.getFloat(4), rset.getString(5)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		System.out.println(list.size());
		return list;
	}
	
	public static float getCredit(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		float credit = 0 ;
			
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getCredit"));
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if(rset.next()){
				credit = rset.getFloat(1);
			}
			return credit;
		}finally{
			DBUtil.close(con, pstmt);
		}
	}
	
	public static String getGPA(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		float gpa = 0 ;
		String pattern="#.##"	;
		DecimalFormat format = new DecimalFormat(pattern);
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getGPA"));
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if(rset.next()){
				gpa = rset.getFloat(1);
			}
			System.out.println(gpa);
			System.out.println(format.format(gpa));
			return format.format(gpa);
			
		}finally{
			DBUtil.close(con, pstmt);
		}
	}
	
	public static ArrayList<String> getSemester(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<String> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getSemester"));
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			list = new ArrayList<String>();
			while(rset.next()){
				list.add(rset.getString(1));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		System.out.println(list.size());
		return list;
	}
	
	public static void updateGrade(String id,String semester,String subject,float credit,String grade) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("updateGrade"));
			pstmt.setFloat(1, credit);
			pstmt.setString(2, grade);
			pstmt.setString(3, id);
			pstmt.setString(4, semester);
			pstmt.setString(5, subject);
			rset = pstmt.executeQuery();
		}finally{
			DBUtil.close(con, pstmt);
		}
	}
	
	public static void enterGrade(String id,String semester,String subject,float credit,String grade) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("enterGrade"));
			pstmt.setString(1, id);
			pstmt.setString(2, semester);
			pstmt.setString(3, subject);
			pstmt.setFloat(4, credit);
			pstmt.setString(5, grade);
			rset = pstmt.executeQuery();
		}finally{
			DBUtil.close(con, pstmt);
		}
	}
}
