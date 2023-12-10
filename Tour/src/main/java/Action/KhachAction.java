package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import Model.NguoiDung;

public class KhachAction extends ActionSupport {
	
	
	public String home() {
		System.out.println("welcome Khach action");
		return "success";
	}
	
	

	

}
