package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import DAO.LoaiTourDAO;
import Model.LoaiTour;

public class LoaiTourAction extends ActionSupport{
	private List<LoaiTour> loaitourlist;
	
	File hinh;
	String hinhFileName;
	String hinhContentType;
	private int trangthai;

	private String tenloaitour;

	private int id;
	private LoaiTour loaitour;
	
	
	public List<LoaiTour> getLoaitourlist() {
		return loaitourlist;
	}

	public void setLoaitourlist(List<LoaiTour> loaitourlist) {
		this.loaitourlist = loaitourlist;
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

	public String getTenloaitour() {
		return tenloaitour;
	}

	public void setTenloaitour(String tenloaitour) {
		this.tenloaitour = tenloaitour;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LoaiTour getLoaitour() {
		return loaitour;
	}

	public void setLoaitour(LoaiTour loaitour) {
		this.loaitour = loaitour;
	}
	
	
	
	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	public String list()
	{
		loaitourlist=new LoaiTourDAO().getListAdmin();
		return SUCCESS;
	}
	public String create()
	{		
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

		 
		
		new LoaiTourDAO().store(tenloaitour,hinhFileName);
		
		return "list";
	}
	public String edit()
	{
		loaitour =new LoaiTourDAO().getLoaiTourByIDAdmin(id);
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
			 loaitour=new LoaiTourDAO().getLoaiTourByIDAdmin(id);
			 hinhFileName=loaitour.getHinhanh();
		 }
		 
		new LoaiTourDAO().update(id, tenloaitour, hinhFileName,trangthai);
		
		
		return "list";
	}
	
}
