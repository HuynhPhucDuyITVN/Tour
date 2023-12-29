<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm món ăn</title>

</head>
<body>
	<h1>Thêm món ăn</h1>	
	
	<s:form action="storeNguoiDungAction" method="POST" validate="true">
			
	    <s:textfield label="Tên đăng nhập" id="tendangnhap" name="tendangnhap"  />	
		<s:textfield label="Mật khẩu" id="matkhau" name="matkhau"  />
		<select name="loaiquyen" id="loaiquyen">
			<option value="admin" >Quản lý</option>
			<option value="khach">Khách hàng</option>
		</select>
		<s:submit/>
	</s:form>	
	
	
	<script>
	
	</script>
</body>
</html>