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
	
	<s:form action="updateLoaiTourAction" method="POST" enctype="multipart/form-data" validate="true">
		<input type="hidden" name="id" value='<s:property value="loaitour.id"/>'/>	
		
		<s:textfield label="Tên loại tour" id="tenloaitour" name="tenloaitour" value="%{loaitour.tenloaitour}"  />
		<select name="trangthai" id="trangthai">
			<s:if test="loaitour.trangthai==1">
			<option value="1" selected="selected">Còn hoạt động</option>
			<option value="0">Ngưng hoạt động</option>
			</s:if>
			<s:if test="loaitour.trangthai==0">
			<option value="0" selected="selected">Ngưng hoạt động</option>
			<option value="1">Còn hoạt động</option>
			</s:if>
		</select>
		Hình: <img width='80' src='./img/<s:property value="loaitour.hinhanh"/>'/><br/>		
		<s:file name="hinh" label="Chọn hình" accept="image/png, image/jpeg, image/gif"></s:file>
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>