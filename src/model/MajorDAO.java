package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.ResourceBundle;

import model.dto.MajorDTO;
import model.util.DBUtil;

public class MajorDAO {
static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<MajorDTO> getHss() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;  
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getHss"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
	
	public static ArrayList<MajorDTO> getTc() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getTc"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
	
	public static ArrayList<MajorDTO> getAc() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getAc"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
	
	public static ArrayList<MajorDTO> getArtc() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getArtc"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
	
	public static ArrayList<MajorDTO> getNs() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getNs"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(7),rset.getString(6),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
	
	public static ArrayList<MajorDTO> getIct() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<MajorDTO> list = null;
		
		try{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("getIct"));
			rset = pstmt.executeQuery();
			list = new ArrayList<MajorDTO>();
			while(rset.next()){
				list.add(new MajorDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7),rset.getFloat(8),rset.getFloat(9),rset.getInt(10),rset.getString(11),rset.getString(12),rset.getString(13),rset.getString(14)));
			}
		}finally{
			DBUtil.close(con, pstmt);
		}
		return list;
	}
}
