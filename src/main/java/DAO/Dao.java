package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DTO.Dto;

public class Dao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "ksol46", "0406");

		return con;
	}

	public int subAdd(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String subno = request.getParameter("subno");
		String subname = request.getParameter("subname");
		int subscore = Integer.parseInt(request.getParameter("subscore"));
		int subtime = Integer.parseInt(request.getParameter("subtime"));
		String substart = request.getParameter("substart");

		try {

			conn = getConnection();
			String sql = "insert into subject_tbl values (?,?,?,?,?)";
			ps = conn.prepareStatement(sql);

			ps.setString(1, subno);
			ps.setString(2, subname);
			ps.setInt(3, subscore);
			ps.setInt(4, subtime);
			ps.setString(5, substart);

			result = ps.executeUpdate();

			conn.close();
			ps.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String subSearch(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<Dto> list = new ArrayList<Dto>();

		try {
			conn = getConnection();
			String sql = "select subno, subname, subscore, subtime, to_char(substart, 'yyyy-mm-dd')"
					+ " from subject_tbl";

			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				Dto dto = new Dto();

				dto.setSubno(rs.getString(1));
				dto.setSubname(rs.getString(2));
				dto.setSubscore(rs.getInt(3));
				dto.setSubtime(rs.getInt(4));
				dto.setSubstart(rs.getString(5));

				list.add(dto);
			}

			request.setAttribute("list", list);

			conn.close();
			ps.close();
			rs.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "subSearch.jsp";
	}

	public String subModify(HttpServletRequest request, HttpServletResponse response) {
		try {
			conn = getConnection();
			String subno = request.getParameter("subno");

			String sql = "select subno, subname, subscore, subtime, substart";
			sql	+= " from subject_tbl where subno='" + subno +"'";

			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();

			Dto dto = new Dto();

			if (rs.next()) {
				dto.setSubno(subno);
				dto.setSubname(rs.getString(2));
				dto.setSubscore(rs.getInt(3));
				dto.setSubtime(rs.getInt(4));
				dto.setSubstart(rs.getString(5));

				request.setAttribute("subno", subno);
				request.setAttribute("dto", dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "subModify.jsp";
	}

	public int subUpdate(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String subno = request.getParameter("subno");
		String subname = request.getParameter("subname");
		int subscore = Integer.parseInt(request.getParameter("subscore"));
		int subtime = Integer.parseInt(request.getParameter("subtime"));
		String substart = request.getParameter("substart");

		try {

			conn = getConnection();
			String sql = "update subject_tbl set";
					sql += " subname = ?,";
					sql += " subscore = ?,";
					sql += " subtime = ?,";
					sql += " substart = ?";
					sql += " where subno = ?";
			ps = conn.prepareStatement(sql);

			ps.setString(1, subno);
			ps.setString(2, subname);
			ps.setInt(3, subscore);
			ps.setInt(4, subtime);
			ps.setString(5, substart);

			result = ps.executeUpdate();

			conn.close();
			ps.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
