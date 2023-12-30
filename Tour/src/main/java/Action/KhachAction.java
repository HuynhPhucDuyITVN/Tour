package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.DatVeDAO;
import DAO.LoaiTourDAO;
import DAO.VeTourDAO;
import Model.DatVe;
import Model.LoaiTour;
import Model.NguoiDung;
import Model.VeTour;

public class KhachAction extends ActionSupport implements SessionAware {
	List<LoaiTour> loaitourlist;
	List<DatVe> datvelist;
	DatVe datve;
	private int idloaitour;
	Map<String, Object> session;
	private LoaiTour loaitour;
	private int id;
	private int trangthai;
	
	List<VeTour> vetourlist;
	private int idvetour;
	private VeTour vetour;
	
	private String sdt;
	private int soluong;
	private int gia;
	private int thanhtien;
	
	
	
	
	public List<LoaiTour> getLoaitourlist() {
		return loaitourlist;
	}



	public void setLoaitourlist(List<LoaiTour> loaitourlist) {
		this.loaitourlist = loaitourlist;
	}



	public int getIdloaitour() {
		return idloaitour;
	}



	public void setIdloaitour(int idloaitour) {
		this.idloaitour = idloaitour;
	}



	public Map<String, Object> getSession() {
		return session;
	}



	public void setSession(Map<String, Object> session) {
		this.session = session;
	}



	public LoaiTour getLoaitour() {
		return loaitour;
	}



	public void setLoaitour(LoaiTour loaitour) {
		this.loaitour = loaitour;
	}
	
	



	public List<VeTour> getVetourlist() {
		return vetourlist;
	}



	public void setVetourlist(List<VeTour> vetourlist) {
		this.vetourlist = vetourlist;
	}



	public int getIdvetour() {
		return idvetour;
	}



	public void setIdvetour(int idvetour) {
		this.idvetour = idvetour;
	}



	public VeTour getVetour() {
		return vetour;
	}



	public void setVetour(VeTour vetour) {
		this.vetour = vetour;
	}



	public String home() {
		System.out.println("welcome Khach action");
		vetourlist = new VeTourDAO().getList();
		loaitourlist = new LoaiTourDAO().getList();
		return "success";
	}
	
	public String menu() {
		vetourlist = new VeTourDAO().getList();
		return "success";
	}
	
	public String menutheoloai() {
		vetourlist = new VeTourDAO().getList(idloaitour);
		return "success";
	}
	
	public String Detail() {
		vetour = new VeTourDAO().getVeTourByID(idvetour);
		return "success";
	}
	
	public String Order() {
		vetour = new VeTourDAO().getVeTourByID(idvetour);
		return "success";
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
	public String logout()
	{
		session.put("nguoidung", null);
		return "login";
	}


	public String submitOrder() { 
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		new VeTourDAO().Order(nd.getId(), idvetour,sdt, soluong, gia, thanhtien);
		return SUCCESS;
    }
	
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



	public int getTrangthai() {
		return trangthai;
	}



	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}



	public String vedat()
	{
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		datvelist=new DatVeDAO().getList(nd.getId());
		return SUCCESS;
	}
	public String fixvedat()
	{
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		datve =new DatVeDAO().getDatVeByID(id,nd.getId());
		return SUCCESS;
	}
	public String update() {
		new DatVeDAO().update(id, trangthai);
		return "list";
		
	}

	

}
