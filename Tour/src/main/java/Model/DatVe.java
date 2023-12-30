package Model;

public class DatVe {
	private int id;
	private int idnguoidung;
	private int idvetour;
	private String tentour;
	private String tendangnhap;
	private String sdt;
	private int soluong;
	private int gia;
	private int thanhtien;
	private int trangthai;
	private String hinhanh;
	
	public DatVe(int id, int idnguoidung, int idvetour, String tentour, String tendangnhap, String sdt, int soluong, int gia,
			int thanhtien, int trangthai, String hinhanh) {
		super();
		this.id = id;
		this.idnguoidung = idnguoidung;
		this.idvetour = idvetour;
		this.tentour = tentour;
		this.tendangnhap = tendangnhap;
		this.sdt = sdt;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.trangthai = trangthai;
		this.hinhanh = hinhanh;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdnguoidung() {
		return idnguoidung;
	}
	public void setIdnguoidung(int idnguoidung) {
		this.idnguoidung = idnguoidung;
	}
	public int getIdvetour() {
		return idvetour;
	}
	public void setIdvetour(int idvetour) {
		this.idvetour = idvetour;
	}
	
	public String getTentour() {
		return tentour;
	}
	public void setTentour(String tentour) {
		this.tentour = tentour;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	
}
