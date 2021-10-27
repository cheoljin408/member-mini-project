package org.kosta.memberproject.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class MemberDAO {
	
	private DataSource dataSource;
	private static MemberDAO instance = new MemberDAO();

	private MemberDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource(); //DataSourceManager가 아직 없어서 생기는 오류
	}
	
	public static MemberDAO getInstance() {
		return instance;
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}

	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public MemberVO findMemberById(String id) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("select id,name,address,to_char(birth,'yyyy-mm-dd')");
			sql.append(",to_char(regdate,'yyyy-mm-dd HH24:MI:SS') from mvc_member where id = ?"); //id로 회원검색시 pass빼고 정보 모두 출력하게 했습니다~
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new MemberVO(rs.getString(1), null, rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}

		return vo;
	}

	public MemberVO login(String id, String pass) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			String sql = "select * from mvc_member where id = ? and password = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}

	public ArrayList<MemberVO> findMemberListByAddress(String address) throws SQLException {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = dataSource.getConnection();
			String sql = "select id, name ,to_char(birth,'yyyy-mm-dd') from mvc_member where address=?";	//주소로 회원검색시 id,name,birth 까지만 나오게 했습니다~
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, address);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				list.add(new MemberVO(rs.getString(1), null, rs.getString(2), address,rs.getString(3),null));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}

		return list;
	}

	public void updateMember(MemberVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			String sql = "update mvc_member set name = ? ,password = ?,address = ?,birth = to_date(?,'yyyy-mm-dd') where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getAddress());
			pstmt.setString(4, vo.getBirth());
			pstmt.setString(5, vo.getId());
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}

	public void register(MemberVO vo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder();
			sql.append("insert into mvc_member(id,password,name,address,birth,regdate)");
			sql.append(" values(?,?,?,?,do_date(?,'yyyy-mm-dd'),sysdate)");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getBirth());
			pstmt.executeUpdate();
		} finally {
			closeAll(pstmt, con);
		}
	}

	public boolean idcheck(String id) throws SQLException {
		boolean result = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "select count(*) from mvc_member where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next() && rs.getInt(1) == 1)
				result = true;
		} finally {
			closeAll(rs, pstmt, con);
		}
		return result;
	}
}
