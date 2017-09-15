package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.UserTTDTO;
import model.util.DBUtil;

public class UserTTDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<String> getSemester(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<String> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getTSemester"));
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
	
	public static ArrayList<UserTTDTO> getMyTable(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UserTTDTO> list = null ;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getMyTable"));
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			list = new ArrayList<UserTTDTO>();
			while(rset.next()) {
				list.add(new UserTTDTO(rset.getString(1), rset.getString(2), rset.getInt(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getFloat(7)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		System.out.println(list.size());
		return list;
	}
}
