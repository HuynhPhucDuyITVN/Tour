package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.DatVeDAO;
import Model.DatVe;

public class DatVeAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	List<DatVe> datvelist;
	DatVe datve;
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
	public List<DatVe> getDatvelist() {
		return datvelist;
	}
	public void setDatvelist(List<DatVe> datvelist) {
		this.datvelist = datvelist;
	}
	public DatVe getDatve() {
		return datve;
	}
	public void setDatve(DatVe datve) {
		this.datve = datve;
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
	
	public String list()
	{
		datvelist=new DatVeDAO().getListAdmin();
		return SUCCESS;
	}
	public String edit()
	{
		datve =new DatVeDAO().getDatVeByIDAdmin(id);
		return SUCCESS;
	}
	public String update() {
		new DatVeDAO().update(id, trangthai);
		return "list";
		
	}
}
