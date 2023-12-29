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
	
	<s:form action="updateNguoiDungAction" method="POST" validate="true">
		<input type="hidden" name="id" value='<s:property value="nguoidung.id"/>'/>	
		<input type="hidden" name="matkhau" value='<s:property value="nguoidung.matkhau"/>'/>	
		
		<s:textfield label="Tên loại tour" id="tendangnhap" name="tendangnhap" value="%{nguoidung.tendangnhap}"  />
		<select name="loaiquyen" id="loaiquyen">
			<s:if test="nguoidung.loaiquyen=='admin'">
			<option value="admin" selected="selected">Quản lý</option>
			<option value="khach">Khách hàng</option>
			</s:if>
			<s:if test="nguoidung.loaiquyen=='khach'">
			<option value="khach" selected="selected">Khách hàng</option>
			<option value="admin">Quản lý</option>
			</s:if>
		</select>
		<select name="trangthai" id="trangthai">
			<s:if test="nguoidung.trangthai==1">
			<option value="1" selected="selected">Còn hoạt động</option>
			<option value="0">Ngưng hoạt động</option>
			</s:if>
			<s:if test="nguoidung.trangthai==0">
			<option value="0" selected="selected">Ngưng hoạt động</option>
			<option value="1">Còn hoạt động</option>
			</s:if>
		</select>
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>