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
	
	<s:form action="storeLoaiTourAction" method="POST" enctype="multipart/form-data" validate="true">
			
	    <s:textfield label="Tên loại tour" id="tenloaitour" name="tenloaitour"  />	
		<s:file name="hinh" label="Chọn hình" accept="image/png, image/jpeg, image/gif"
		></s:file>
			
		<s:submit/>
	</s:form>	
	
	
	<script>
	
	</script>
</body>
</html>