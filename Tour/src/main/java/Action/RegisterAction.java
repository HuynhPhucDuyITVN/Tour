package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.UserDAO;
import Model.NguoiDung;

public class RegisterAction extends ActionSupport implements SessionAware {
	String tendangnhap,matkhau;
	Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public String home() {
		System.out.println("welcome register action");
		return "success";
	}
	
	public String register() {
		NguoiDung nd = new UserDAO().checkregister(tendangnhap);
		if (nd == null) {
			addActionMessage("Đăng ký thành công");
			new UserDAO().register(tendangnhap, matkhau);
			return "success";
		} else {
			addActionMessage("Tài khoản đã tồn tại vui lòng đổi tên đăng nhập");
			return "home";
		}
		
	}

}
