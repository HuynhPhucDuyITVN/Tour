package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.LoaiTour;
import Model.VeTour;

public class VeTourDAO {
	public List<VeTour> getList(int idloaitour){
		List<VeTour> list = new ArrayList<VeTour>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `vetour` WHERE `idloaitour`=? and `trangthai`=1 "); 
			 statement.setInt(1, idloaitour); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 list.add( new VeTour(rs.getInt("id"), 
					 rs.getString("tentour"), 
					 rs.getString("mota"), 
					 rs.getString("thoigian"), 
					 rs.getString("hinhanh"), 
					 rs.getInt("gia"), 
					 rs.getInt("idloaitour"))); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
		
	}
	
	
	public List<VeTour> getList(){
		List<VeTour> list = new ArrayList<VeTour>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `vetour` where `trangthai`=1");
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 list.add( new VeTour(rs.getInt("id"), 
					 rs.getString("tentour"), 
					 rs.getString("mota"), 
					 rs.getString("thoigian"), 
					 rs.getString("hinhanh"), 
					 rs.getInt("gia"), 
					 rs.getInt("idloaitour"))); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
		
	}
	public List<VeTour> getListAdmin(){
		List<VeTour> list = new ArrayList<VeTour>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement(""
			 		+ "SELECT `vetour`.`id`, `tentour`, `mota`,`thoigian`,`vetour`.`hinhanh`,`gia`,`vetour`.`trangthai`,`idloaitour`,`tenloaitour` "
			 		+ "FROM `vetour` JOIN `loaitour` on `vetour`.`idloaitour` = `loaitour`.`id`");
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 {
			 list.add( new VeTour(rs.getInt("id"), 
					 rs.getString("tentour"), 
					 rs.getString("mota"), 
					 rs.getString("thoigian"), 
					 rs.getString("hinhanh"), 
					 rs.getInt("gia"), 
					 rs.getInt("trangthai"),
					 rs.getInt("idloaitour"),
					 rs.getString("tenloaitour"))); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
		
	}

	public VeTour getVeTourByIDAdmin(int id){

		 VeTour vetour = null;
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `vetour` WHERE `id`=?"); 
			 statement.setInt(1, id); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 vetour= new VeTour(rs.getInt("id"), 
					 rs.getString("tentour"), 
					 rs.getString("mota"), 
					 rs.getString("thoigian"), 
					 rs.getString("hinhanh"), 
					 rs.getInt("gia"),
					 rs.getInt("trangthai"),
					 rs.getInt("idloaitour")); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return vetour; 
	}
	public List<LoaiTour> getListAdminLoaiTour(){
		List<LoaiTour> list = new ArrayList<LoaiTour>();
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `loaitour`"); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 list.add( new LoaiTour(rs.getInt("id"), 
					 rs.getString("tenloaitour"), 
					 rs.getString("hinhanh"),
					 rs.getInt("trangthai"))); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
	}
	
	public VeTour getVeTourByID(int id){

		 VeTour vetour = null;
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `vetour` WHERE `id`=? and `trangthai`=1"); 
			 statement.setInt(1, id); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 vetour= new VeTour(rs.getInt("id"), 
					 rs.getString("tentour"), 
					 rs.getString("mota"), 
					 rs.getString("thoigian"), 
					 rs.getString("hinhanh"), 
					 rs.getInt("gia"), 
					 rs.getInt("idloaitour")); 
			 } 
			 }
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return vetour; 
	}
	
	public void Order(int idnguoidung,int idvetour,String sdt, int soluong, int gia, int 
			 thanhtien) 
			  { 
			  DBService db=new DBService(); 
			  PreparedStatement statement; 
			  try { 
			  statement = db.getConn().prepareStatement("INSERT INTO `datve`(`idnguoidung`,`idvetour`,`sdt`,`soluong`,`gia`,`thanhtien`) values(?,?,?,?,?,?)"); 
			  statement.setInt(1, idnguoidung); 
			  statement.setInt(2, idvetour);
			  statement.setString(3, sdt);
			  statement.setInt(4, soluong); 
			  statement.setInt(5, gia); 
			  statement.setInt(6, thanhtien); 
			  
			  db.executeUpdate(statement); 
			  } catch (SQLException e) { 
			  // TODO Auto-generated catch block 
			  e.printStackTrace(); 
			  } 
	 }
	
	public void store(String ten, String mota, String thoigian, String hinh,int gia, int idloaitour)
	{
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO `vetour` (`tentour`, `mota`, `thoigian`, `hinhanh`, `gia`, `idloaitour`) values(?,?,?,?,?,?)");
			statement.setString(1, ten);
			statement.setString(2, mota);
			statement.setString(3, thoigian);
			statement.setString(4, hinh);
			statement.setInt(5, gia);
			statement.setInt(6, idloaitour);			
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(int id, String ten, String mota, String thoigian, String hinh,int gia, int idloaitour, int trangthai) {
		// TODO Auto-generated method stub
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE `vetour` SET `tentour`=?,`mota`=?,`thoigian`=?,`hinhanh`=?,`gia`=?,`trangthai`=?,`idloaitour`=? WHERE `id`=?");
			statement.setString(1, ten);
			statement.setString(2, mota);
			statement.setString(3, thoigian);
			statement.setString(4, hinh);
			statement.setInt(5, gia);
			statement.setInt(6, trangthai);
			statement.setInt(7, idloaitour);
			statement.setInt(8, id);	
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
