package exdaodto1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jdk.nashorn.internal.runtime.arrays.ArrayLikeIterator;

public class MemberDAO {

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> memberSelect() {

		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String query = "select * from roundnum";

		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "study", "root");
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				int num = rs.getInt("num");
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String addr = rs.getString("addr");

				MemberDTO dto = new MemberDTO(num, name, tel, addr);
				dtos.add(dto);
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();

			} catch (Exception e2) {
				e2.printStackTrace();
				// TODO: handle exception
			}
			
		}
		return dtos;
	}
}
