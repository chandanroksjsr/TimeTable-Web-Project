package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;
import model.util.DBUtil;

import model.dto.IlsunDTO;

public class IlsunDAO {
static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<IlsunDTO> getIlsun() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<IlsunDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getIlsun"));
			rset = pstmt.executeQuery();
			list = new ArrayList<IlsunDTO>();
			while(rset.next()){
				list.add(new IlsunDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getFloat(6),rset.getFloat(7),rset.getInt(8),rset.getString(9),rset.getString(10),rset.getString(11),rset.getString(12)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}

}
