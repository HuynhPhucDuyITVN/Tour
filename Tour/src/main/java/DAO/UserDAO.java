package DAO;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.NguoiDung;

public class UserDAO {
	public NguoiDung login(String tendangnhap, String matkhau) {
		NguoiDung nd = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from `nguoidung` WHERE `tendangnhap` = ? AND `matkhau`= ? And `trangthai`=?");
			statement.setString(1, tendangnhap);
			statement.setString(2, MD5.getMd5(matkhau));
			statement.setInt(3, 1);
			ResultSet rs = db.executeQuery(statement);
			if (rs != null) {
				while (rs.next()) {
					nd = new NguoiDung(rs.getInt("id"), rs.getString("tendangnhap"),rs.getString("loaiquyen"));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return nd;
	}
	
	public void register(String tendangnhap, String matkhau) {
		NguoiDung nd = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO `nguoidung`(`tendangnhap`, `matkhau`, `loaiquyen`, `trangthai`) VALUES (?,?,?,?)");
			statement.setString(1, tendangnhap);
			statement.setString(2, MD5.getMd5(matkhau));
			statement.setString(3, "khach");
			statement.setInt(4, 1);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void store(String tendangnhap, String matkhau, String loaiquyen) {
		NguoiDung nd = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO `nguoidung`(`tendangnhap`, `matkhau`, `loaiquyen`, `trangthai`) VALUES (?,?,?,?)");
			statement.setString(1, tendangnhap);
			statement.setString(2, MD5.getMd5(matkhau));
			statement.setString(3, loaiquyen);
			statement.setInt(4, 1);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(int id, String ten, String matkhau, String loaiquyen, int trangthai) {
		// TODO Auto-generated method stub
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE `nguoidung` SET `tendangnhap`=?,`matkhau`=?,`loaiquyen`=?,`trangthai`=? WHERE `id`=?");
			statement.setString(1, ten);
			statement.setString(2, MD5.getMd5(matkhau));
			statement.setString(3, loaiquyen);
			statement.setInt(4, trangthai);
			statement.setInt(5, id);	
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}