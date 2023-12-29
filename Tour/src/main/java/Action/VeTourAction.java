package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import DAO.LoaiTourDAO;
import DAO.VeTourDAO;
import Model.LoaiTour;
import Model.VeTour;

public class VeTourAction extends ActionSupport {
	private List<VeTour> vetourlist;
	private List<LoaiTour> loaitourlist;
	File hinh;
	String hinhFileName;
	String hinhContentType;
	private int trangthai;
	String tentour;
	String mota;
	String thoigian;
	private String tenloaitour;
	private int gia;
	private int id;
	private int idloaitour;
	private VeTour vetour;
	public List<VeTour> getVetourlist() {
		return vetourlist;
	}
	public void setVetourlist(List<VeTour> vetourlist) {
		this.vetourlist = vetourlist;
	}
	public File getHinh() {
		return hinh;
	}
	public void setHinh(File hinh) {
		this.hinh = hinh;
	}
	public String getHinhFileName() {
		return hinhFileName;
	}
	public void setHinhFileName(String hinhFileName) {
		this.hinhFileName = hinhFileName;
	}
	public String getHinhContentType() {
		return hinhContentType;
	}
	public void setHinhContentType(String hinhContentType) {
		this.hinhContentType = hinhContentType;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getTenloaitour() {
		return tenloaitour;
	}
	public void setTenloaitour(String tenloaitour) {
		this.tenloaitour = tenloaitour;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdloaitour() {
		return idloaitour;
	}
	public void setIdloaitour(int idloaitour) {
		this.idloaitour = idloaitour;
	}
	public VeTour getVetour() {
		return vetour;
	}
	public void setVetour(VeTour vetour) {
		this.vetour = vetour;
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
	
	public List<LoaiTour> getLoaitourlist() {
		return loaitourlist;
	}
	public void setLoaitourlist(List<LoaiTour> loaitourlist) {
		this.loaitourlist = loaitourlist;
	}
	public String list() {
		vetourlist= new VeTourDAO().getListAdmin();
		return SUCCESS;
	}
	public String edit()
	{
		vetour =new VeTourDAO().getVeTourByIDAdmin(id);
		loaitourlist = new VeTourDAO().getListAdminLoaiTour();
		return SUCCESS;
	}
	public String update()
	{
		
		String path = ServletActionContext.getServletContext().getRealPath("./img");
		//System.out.println("Image Location:" + path);
		//System.out.println(hinhFileName);
		 if(hinhFileName!=null)
		 {
			// handling the file
			File file = new File(path, hinhFileName);
			
			try {
				
				FileUtils.copyFile(hinh, file);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		 }
		 else
		 {
			 vetour=new VeTourDAO().getVeTourByIDAdmin(id);
			 hinhFileName=vetour.getHinhanh();
		 }
		 
		new VeTourDAO().update(id, tentour,mota,thoigian, hinhFileName,gia,idloaitour,trangthai);
		
		return "list";
	}
	public String create()
	{	
		loaitourlist = new VeTourDAO().getListAdminLoaiTour();
		return SUCCESS;
	}
	public String store()
	{
		String path = ServletActionContext.getServletContext().getRealPath("./img");
		//System.out.println("Image Location:" + path);
		//System.out.println(hinhFileName);
		 if(hinhFileName!=null)
		 {
			// handling the file
			File file = new File(path, hinhFileName);
			
			try {
				
				FileUtils.copyFile(hinh, file);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 }
		
		new VeTourDAO().store(tentour,mota,thoigian,hinhFileName,gia,idloaitour);
		
		return "list";
	}
}
