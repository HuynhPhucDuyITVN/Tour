package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.UserDAO;
import Model.NguoiDung;

public class LoginAction extends ActionSupport implements SessionAware {
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
	public String login() {
		NguoiDung nd = new UserDAO().login(tendangnhap, matkhau);
		if (nd != null) {
			if(nd.getTrangthai() == 1)
			{
				session.put("nguoidung", nd);
				System.out.println("Login success");
				if (nd.getLoaiquyen().equals("admin")) {
					return "admin";
				} else
					return "khach";
			}
			else
			{
				addActionMessage("Tài khoản đã khóa vui lòng liên hệ với Quản trị viên để mở!");
				System.out.println("Login fail");
				return "login";
				
			} 
		}
		else {
			addActionMessage("Bạn nhập sai tên đăng nhập hoặc mật khẩu!");
			System.out.println("Login fail");
			return "login";
		}
	}

}
