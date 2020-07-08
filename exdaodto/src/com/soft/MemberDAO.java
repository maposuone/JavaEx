package com.soft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDAO {
	private static Connection conn;
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException ex) {
			// TODO: handle exception
			System.out.println("Driverが見つからない！");
		}
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","study","root");	
		} catch(SQLException ex) {
			System.out.println("SQL Error:" + ex.getLocalizedMessage());			
		}
	}
	public boolean insertMember(MemberDTO dto) {
		String query = "insert into roundnum values ( ?,?,?,?)";
		boolean check = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getNmae());
			pstmt.setString(3, dto.getTel());
			pstmt.setString(4, dto.getAdder());
			
			int x = pstmt.executeUpdate();
			if (x < 1) {
				System.out.println("データ登録失敗");
				check = false;
			}else {
				System.out.println("正常終了！！！");
				check = true;
				pstmt.close();
			}
		} catch (SQLException ex) {
			// TODO: handle exception
			System.out.println("SQL insert 異常終了:" + ex.getLocalizedMessage());
		}
		return check;
	}
	public boolean updateMember(MemberDTO dto) {
		String query = "update roundnum set name = ? tel = ? addr = ? where num = ?";
		boolean check = false;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);			
			pstmt.setString(1, dto.getNmae());
			pstmt.setString(2, dto.getTel());
			pstmt.setString(3, dto.getAdder());
			pstmt.setInt(4, dto.getNum());
			
			int x = pstmt.executeUpdate();
			if (x < 1) {
				System.out.println("データ更新失敗");
				check = false;
			}else {
				System.out.println("正常終了！！！");
				check = true;
				pstmt.close();
			}
		} catch (SQLException ex) {
			// TODO: handle exception
			System.out.println("SQL update 異常終了:" + ex.getLocalizedMessage());
		}
		return check;
	}
	public MemberDTO[] selectMember() {
		return null;
	}
	public void close() {
		try {
			if(conn != null) {
				conn.close();
				conn = null;
			}
			
		} catch (SQLException ex) {
			// TODO: handle exception
			System.out.println("SQL Error:" + ex.getLocalizedMessage());
		}
		
	}
}
