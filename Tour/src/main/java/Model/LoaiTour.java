package Model;

public class LoaiTour {
int id;
String tenloaitour;
String hinhanh;

public LoaiTour(int id, String tenloaitour, String hinhanh) {
	super();
	this.id = id;
	this.tenloaitour = tenloaitour;
	this.hinhanh = hinhanh;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTenloaitour() {
	return tenloaitour;
}
public void setTenloaitour(String tenloaitour) {
	this.tenloaitour = tenloaitour;
}
public String getHinhanh() {
	return hinhanh;
}
public void setHinhanh(String hinhanh) {
	this.hinhanh = hinhanh;
}
}

