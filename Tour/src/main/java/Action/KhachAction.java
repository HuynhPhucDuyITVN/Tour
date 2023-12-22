package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.LoaiTourDAO;
import Model.LoaiTour;
import Model.NguoiDung;

public class KhachAction extends ActionSupport implements SessionAware {
	List<LoaiTour> loaitourlist;
	private int idloaitour;
	Map<String, Object> session;
	private LoaiTour loaitour;
	
	
	
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



	public String home() {
		System.out.println("welcome Khach action");
		loaitourlist = new LoaiTourDAO().getList();
		return "success";
	}
	
	

	

}
