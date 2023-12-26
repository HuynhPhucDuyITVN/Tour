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
		Hình: <img width='80' src='./img/<s:property value="loaitour.hinhanh"/>'/><br/>		
		<s:file name="hinh" label="Chọn hình" accept="image/png, image/jpeg, image/gif"></s:file>
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>