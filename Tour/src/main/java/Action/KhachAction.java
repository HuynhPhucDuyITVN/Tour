package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.DatVeDAO;
import DAO.LoaiTourDAO;
import DAO.MD5;
import DAO.UserDAO;
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
	
	private NguoiDung nguoidung;
	private String matkhau;
	private String matkhaucu;
	private String matkhaumoi;
	private String xacnhan;
	
	
	
	
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



	public String getMatkhau() {
		return matkhau;
	}



	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}



	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
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



	public NguoiDung getNguoidung() {
		return nguoidung;
	}



	public void setNguoidung(NguoiDung nguoidung) {
		this.nguoidung = nguoidung;
	}



	public String getMatkhaucu() {
		return matkhaucu;
	}



	public void setMatkhaucu(String matkhaucu) {
		this.matkhaucu = matkhaucu;
	}



	public String getMatkhaumoi() {
		return matkhaumoi;
	}



	public void setMatkhaumoi(String matkhaumoi) {
		this.matkhaumoi = matkhaumoi;
	}



	public String getXacnhan() {
		return xacnhan;
	}



	public void setXacnhan(String xacnhan) {
		this.xacnhan = xacnhan;
	}



	public int getTrangthai() {
		return trangthai;
	}



	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}


	public String submitOrder() {
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		new VeTourDAO().Order(nd.getId(), idvetour,sdt, soluong, gia, thanhtien);
		return SUCCESS;
    }

	public String vedat()
	{
		loaitourlist = new LoaiTourDAO().getList();
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		datvelist=new DatVeDAO().getList(nd.getId());
		return SUCCESS;
	}
	public String fixvedat()
	{
		loaitourlist = new LoaiTourDAO().getList();
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		datve =new DatVeDAO().getDatVeByID(id,nd.getId());
		return SUCCESS;
	}
	public String update() {
		new DatVeDAO().update(id, trangthai);
		return SUCCESS;
	}
	public String change() {
		loaitourlist = new LoaiTourDAO().getList();
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung =new UserDAO().getNguoiDungByIDAdmin(nd.getId());
		return SUCCESS;
	}
	public String pass() {
		
		if(matkhau.equals(MD5.getMd5(matkhaucu)) && matkhaumoi.equals(xacnhan))
		{
			new UserDAO().updatePass(id, MD5.getMd5(matkhaumoi));
			addActionMessage("Cập thật thành công");
			session.put("nguoidung", null);
			return "login";
		}
		else if (matkhau.equals(MD5.getMd5(matkhaucu)) == false)
		{
			loaitourlist = new LoaiTourDAO().getList();
			NguoiDung nd= (NguoiDung) session.get("nguoidung");
			nguoidung =new UserDAO().getNguoiDungByIDAdmin(nd.getId());
			addActionMessage("Mật khẩu cũ không khớp");
			matkhaucu="";
			matkhaumoi="";
			xacnhan="";
			return "fail";
		}
		else
		{
			loaitourlist = new LoaiTourDAO().getList();
			NguoiDung nd= (NguoiDung) session.get("nguoidung");
			nguoidung =new UserDAO().getNguoiDungByIDAdmin(nd.getId());
			addActionMessage("Mật khẩu mới và xác nhận mật khẩu không khớp");
			matkhaucu="";
			matkhaumoi="";
			xacnhan="";
			return "fail";
		}
	}

	public String logout()
	{
		session.put("nguoidung", null);
		return "login";
	}

	public String home() {
		System.out.println("welcome Khach action");
		vetourlist = new VeTourDAO().getList();
		loaitourlist = new LoaiTourDAO().getList();
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		return "success";
	}
	
	public String menu() {
		loaitourlist = new LoaiTourDAO().getList();
		vetourlist = new VeTourDAO().getList();
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		return "success";
	}
	
	public String menutheoloai() {
		loaitourlist = new LoaiTourDAO().getList();
		vetourlist = new VeTourDAO().getList(idloaitour);
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		return "success";
	}
	
	public String Detail() {
		loaitourlist = new LoaiTourDAO().getList();
		vetour = new VeTourDAO().getVeTourByID(idvetour);
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		return "success";
	}
	
	public String Order() {
		loaitourlist = new LoaiTourDAO().getList();
		vetour = new VeTourDAO().getVeTourByID(idvetour);
		NguoiDung nd= (NguoiDung) session.get("nguoidung");
		nguoidung=nd;
		return "success";
	}
}
