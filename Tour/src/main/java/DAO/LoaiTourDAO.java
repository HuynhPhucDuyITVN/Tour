package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.LoaiTour;

public class LoaiTourDAO {
	public List<LoaiTour> getList(){
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
					 rs.getString("hinhanh"))); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return list; 
	}
	
	public LoaiTour getLoaiTourByID(int id){

		 LoaiTour loaitour = null;
		 DBService db=new DBService(); 
		 PreparedStatement statement;
		 
		 try { 
			 statement = db.getConn().prepareStatement("SELECT * FROM `loaitour` WHERE `id`=?"); 
			 statement.setInt(1, id); 
			 ResultSet rs=db.executeQuery(statement); 
			 
			 if(rs!=null) 
			 { 
			 while(rs.next()) 
			 { 
			 loaitour= new LoaiTour(rs.getInt("id"), 
					 rs.getString("tenloaitour"), 
					 rs.getString("hinhanh")); 
			 } 
			 } 
			 } catch (SQLException e) { 
			 // TODO Auto-generated catch block 
			 e.printStackTrace(); 
			 } 
			 return loaitour; 
	}
	
	public void store(String ten, String hinh)
	{
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO	`loaitour`(`tenloaitour`,`hinhanh`) values(?,?)");
			statement.setString(1, ten);
			statement.setString(2, hinh);			
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void update(int id, String tenloaitour, String hinh) {
		// TODO Auto-generated method stub
		DBService db=new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE `loaitour` SET `tenloaitour`=?, `hinhanh`=? where `id`=?");
			statement.setString(1, tenloaitour);
			statement.setString(2, hinh);
			statement.setInt(3, id);	
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
} 
