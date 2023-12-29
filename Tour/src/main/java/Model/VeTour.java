package Model;

public class VeTour {
	int id;
	String tentour;
	String mota;
	String thoigian;
	String hinhanh;
	int gia;
	int trangthai;
	int idloaitour;
	String tenloaitour;
	
	public VeTour(int id, String tentour, String mota, String thoigian, String hinhanh, int gia, int idloaitour) {
		super();
		this.id = id;
		this.tentour = tentour;
		this.mota = mota;
		this.thoigian = thoigian;
		this.hinhanh = hinhanh;
		this.gia = gia;
		this.idloaitour = idloaitour;
	}
	
	
	public VeTour(int id, String tentour, String mota, String thoigian, String hinhanh, int gia, int trangthai,
			int idloaitour, String tenloaitour) {
		super();
		this.id = id;
		this.tentour = tentour;
		this.mota = mota;
		this.thoigian = thoigian;
		this.hinhanh = hinhanh;
		this.gia = gia;
		this.trangthai = trangthai;
		this.idloaitour = idloaitour;
		this.tenloaitour = tenloaitour;
	}
	

	public VeTour(int id, String tentour, String mota, String thoigian, String hinhanh, int gia, int trangthai,
			int idloaitour) {
		super();
		this.id = id;
		this.tentour = tentour;
		this.mota = mota;
		this.thoigian = thoigian;
		this.hinhanh = hinhanh;
		this.gia = gia;
		this.trangthai = trangthai;
		this.idloaitour = idloaitour;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTentour() {
		return tentour;
	}
	public void setTentour(String tentour) {
		this.tentour = tentour;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getThoigian() {
		return thoigian;
	}
	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getIdloaitour() {
		return idloaitour;
	}
	public void setIdloaitour(int idloaitour) {
		this.idloaitour = idloaitour;
	}
	public String getTenloaitour() {
		return tenloaitour;
	}
	public void setTenloaitour(String tenloaitour) {
		this.tenloaitour = tenloaitour;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	
}
