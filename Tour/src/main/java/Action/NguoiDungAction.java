package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.catalina.User;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import DAO.LoaiTourDAO;
import DAO.MD5;
import DAO.UserDAO;
import Model.NguoiDung;

public class NguoiDungAction extends ActionSupport{
	private List<NguoiDung> nguoidunglist;
	
	private int trangthai;
	private String tendangnhap;
	private String loaiquyen;
	private String matkhau;

	private int id;
	private NguoiDung nguoidung;
	
	private String matkhaucu;
	private String matkhaumoi;
	private String xacnhan;
	
	public List<NguoiDung> getNguoidunglist() {
		return nguoidunglist;
	}
	public void setNguoidunglist(List<NguoiDung> nguoidunglist) {
		this.nguoidunglist = nguoidunglist;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getLoaiquyen() {
		return loaiquyen;
	}
	public void setLoaiquyen(String loaiquyen) {
		this.loaiquyen = loaiquyen;
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
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
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
	public String list()
	{
		nguoidunglist=new UserDAO().getListAdmin();
		return SUCCESS;
	}
	
	public String create()
	{		
		return SUCCESS;
	}
	
	public String store()
	{
		NguoiDung nd = new UserDAO().checkregister(tendangnhap);
		if (nd == null) {
			new UserDAO().store(tendangnhap,matkhau,loaiquyen);
			return "login";
		} else {
			addActionMessage("Tài khoản đã tồn tại vui lòng đổi tên đăng nhập");
			return "list";
		}
		
	}
	public String edit()
	{
		nguoidung =new UserDAO().getNguoiDungByIDAdmin(id);
		return SUCCESS;
	}
	public String update()
	{
		new UserDAO().update(id, tendangnhap,matkhau,loaiquyen,trangthai);
		return "login";
	}
	public String change() {
		nguoidung =new UserDAO().getNguoiDungByIDAdmin(id);
		return SUCCESS;
	}
	public String pass() {
		
		if(matkhau.equals(MD5.getMd5(matkhaucu)) && matkhaumoi.equals(xacnhan))
		{
			new UserDAO().updatePass(id, MD5.getMd5(matkhaumoi));
			addActionMessage("Cập thật thành công");
			return "login";
		}
		else if (matkhau.equals(MD5.getMd5(matkhaucu)) == false)
		{
			addActionMessage("Mật khẩu cũ không khớp");
			return "list";
		}
		else
		{
			addActionMessage("Mật khẩu mới và xác nhận mật khẩu không khớp");
			return "list";
		}
	}
}
