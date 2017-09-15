package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.GyopilDTO;
import model.util.DBUtil;

public class GyopilDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<GyopilDTO> getGyopil() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<GyopilDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getGyopil"));
			rset = pstmt.executeQuery();
			list = new ArrayList<GyopilDTO>();
			while(rset.next()){
				list.add(new GyopilDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getFloat(7),rset.getFloat(8),rset.getInt(9),rset.getString(10),rset.getString(11),rset.getString(12),rset.getString(13)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
}
