package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DatVe;

public class DatVeDAO {
	public List<DatVe> getList(int idnguoidung){
		List<DatVe> list = new ArrayList<DatVe>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT `datve`.`id`,`datve`.`idnguoidung`,`nguoidung`.`tendangnhap`,`vetour`.`hinhanh`,`datve`.`idvetour`,`vetour`.`tentour`,`datve`.`sdt`,`datve`.`soluong`,`datve`.`gia`,`datve`.`thanhtien`,`datve`.`trangthai` \r\n"
			 		+ "FROM `datve` JOIN `nguoidung` on `datve`.`idnguoidung` = `nguoidung`.`id` JOIN `vetour` on `datve`.`idvetour`=`vetour`.`id` where `idnguoidung`=?"); 
			 statement.setInt(1, idnguoidung);
			 ResultSet rs=db.executeQuery(statement); 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 list.add( new DatVe(rs.getInt("id"),rs.getInt("idnguoidung"),rs.getInt("idvetour"), 
					 rs.getString("tentour"),rs.getString("tendangnhap"),
					 rs.getString("sdt"),rs.getInt("soluong"), rs.getInt("gia"),rs.getInt("thanhtien"),
					 rs.getInt("trangthai"),
					 rs.getString("hinhanh")));
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
	}
	public List<DatVe> getListAdmin(){
		List<DatVe> list = new ArrayList<DatVe>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT `datve`.`id`,`datve`.`idnguoidung`,`nguoidung`.`tendangnhap`,`vetour`.`hinhanh`,`datve`.`idvetour`,`vetour`.`tentour`,`datve`.`sdt`,`datve`.`soluong`,`datve`.`gia`,`datve`.`thanhtien`,`datve`.`trangthai` \r\n"
			 		+ "FROM `datve` JOIN `nguoidung` on `datve`.`idnguoidung` = `nguoidung`.`id` JOIN `vetour` on `datve`.`idvetour`=`vetour`.`id`"); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 list.add( new DatVe(rs.getInt("id"),rs.getInt("idnguoidung"),rs.getInt("idvetour"), 
					 rs.getString("tentour"),rs.getString("tendangnhap"),
					 rs.getString("sdt"),rs.getInt("soluong"), rs.getInt("gia"),rs.getInt("thanhtien"),
					 rs.getInt("trangthai"),
					 rs.getString("hinhanh")));
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
	}
	
	public DatVe getDatVeByIDAdmin(int id){

		 DatVe datve = null;
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT `datve`.`id`,`datve`.`idnguoidung`,`nguoidung`.`tendangnhap`,`vetour`.`hinhanh`,`datve`.`idvetour`,`vetour`.`tentour`,`datve`.`sdt`,`datve`.`soluong`,`datve`.`gia`,`datve`.`thanhtien`,`datve`.`trangthai` \r\n"
				 		+ "FROM `datve` JOIN `nguoidung` on `datve`.`idnguoidung` = `nguoidung`.`id` JOIN `vetour` on `datve`.`idvetour`=`vetour`.`id` where `datve`.`id` =?"); 
			 statement.setInt(1, id);
			 ResultSet rs=db.executeQuery(statement);  
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 datve= new DatVe(rs.getInt("id"),rs.getInt("idnguoidung"),rs.getInt("idvetour"), 
					 rs.getString("tentour"),rs.getString("tendangnhap"),
					 rs.getString("sdt"),rs.getInt("soluong"), rs.getInt("gia"),rs.getInt("thanhtien"),
					 rs.getInt("trangthai"),
					 rs.getString("hinhanh")); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return datve; 
	}
	public DatVe getDatVeByID(int id, int idnguoidung){

		 DatVe datve = null;
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT `datve`.`id`,`datve`.`idnguoidung`,`nguoidung`.`tendangnhap`,`vetour`.`hinhanh`,`datve`.`idvetour`,`vetour`.`tentour`,`datve`.`sdt`,`datve`.`soluong`,`datve`.`gia`,`datve`.`thanhtien`,`datve`.`trangthai` \r\n"
				 		+ "FROM `datve` JOIN `nguoidung` on `datve`.`idnguoidung` = `nguoidung`.`id` JOIN `vetour` on `datve`.`idvetour`=`vetour`.`id` where `datve`.`id` =? and `idnguoidung`=?"); 
			 statement.setInt(1, id);
			 statement.setInt(2, idnguoidung);
			 ResultSet rs=db.executeQuery(statement);  
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 datve= new DatVe(rs.getInt("id"),rs.getInt("idnguoidung"),rs.getInt("idvetour"), 
					 rs.getString("tentour"),rs.getString("tendangnhap"),
					 rs.getString("sdt"),rs.getInt("soluong"), rs.getInt("gia"),rs.getInt("thanhtien"),
					 rs.getInt("trangthai"),
					 rs.getString("hinhanh")); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return datve; 
	}
	public void update(int id, int trangthai) {
		// TODO Auto-generated method stub
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE `datve` SET `trangthai`=? where `id`=?");
			statement.setInt(1, trangthai);
			statement.setInt(2, id);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
