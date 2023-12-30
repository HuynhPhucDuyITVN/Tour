<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa món ăn</title>

</head>
<body>
	<h1>Chỉnh sửa món ăn</h1>	
	
	<s:form action="updateKhachAction" method="POST" validate="true">
		<input type="hidden" name="id" value='<s:property value="datve.id"/>'/>	
		
		<s:textfield readonly="true"  label="Tên tài khoản" id="tendangnhap" name="tendangnhap" value="%{datve.tendangnhap}"  />
		<s:textfield readonly="true" label="Tour" id="tentour" name="tentour" value="%{datve.tentour}"  />
		Hình: <img width='80' src='./img/<s:property value="datve.hinhanh"/>'/><br/>
		<s:textfield readonly="true" label="Số điện thoại" id="sdt" name="sdt" value="%{datve.sdt}"  />
		<s:textfield readonly="true" label="Số lượng" id="soluong" name="soluong" value="%{datve.soluong}"  />
		<s:textfield readonly="true" label="Giá" id="gia" name="gia" value="%{datve.gia}"  />
		<s:textfield readonly="true" label="Thành tiền" id="thanhtien" name="thanhtien" value="%{datve.thanhtien}"  />
		<select name="trangthai" id="trangthai">
			<s:if test="datve.trangthai==1">
			<option value="1" selected="selected">Đặt thành công</option>
			<option value="0">Hủy đơn</option>
			</s:if>
			<s:if test="datve.trangthai==0">
			<option value="0" selected="selected">Hủy đơn</option>
			<option value="1">Đặt thành công</option>
			</s:if>
		</select>	
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>