package Model;

public class NguoiDung {
int id;
 String tendangnhap,loaiquyen,matkhau;
 int trangthai;
 

public String getLoaiquyen() {
	return loaiquyen;
}
public void setLoaiquyen(String loaiquyen) {
	this.loaiquyen = loaiquyen;
}
public NguoiDung(int id, String tendangnhap, String loaiquyen, int trangthai) {
 super();
 this.id = id;
 this.tendangnhap = tendangnhap;
 this.loaiquyen=loaiquyen;
 this.trangthai=trangthai;
 }
public NguoiDung(int id, String tendangnhap,String matkhau, String loaiquyen, int trangthai) {
	 super();
	 this.id = id;
	 this.tendangnhap = tendangnhap;
	 this.loaiquyen=loaiquyen;
	 this.trangthai=trangthai;
	 this.matkhau=matkhau;
	 }
public NguoiDung(int id, String tendangnhap, String loaiquyen) {
	 super();
	 this.id = id;
	 this.tendangnhap = tendangnhap;
	 this.loaiquyen=loaiquyen;
	 }
public int getId() {
 return id;
 }
public void setId(int id) {
 this.id = id;
 }
public String getTendangnhap() {
 return tendangnhap;
 }
public void setTendangnhap(String tendangnhap) {
 this.tendangnhap = tendangnhap;
 }
public int getTrangthai() {
	return trangthai;
}
public void setTrangthai(int trangthai) {
	this.trangthai = trangthai;
}
public String getMatkhau() {
	return matkhau;
}
public void setMatkhau(String matkhau) {
	this.matkhau = matkhau;
}



} 