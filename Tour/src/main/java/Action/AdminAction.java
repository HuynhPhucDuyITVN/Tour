package Action;

import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	public String home() {
		System.out.println("welcome Admin action");
		return "success";
	}
}
