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
	
	<s:form action="storeVeTourAction" method="POST" enctype="multipart/form-data" validate="true">
	    <s:textfield label="Tên tour" id="tentour" name="tentour"  />
	    <s:textfield label="Mô tả" id="mota" name="mota"/>
	    <s:textfield label="Thời gian" id="thoigian" name="thoigian"/>
		<s:file name="hinh" label="Chọn hình" accept="image/png, image/jpeg, image/gif"
		></s:file>
		<s:textfield label="Giá" id="gia" name="gia"/>
		<select name="idloaitour" id="idloaitour">
		<s:iterator var="loaitour" value="loaitourlist">
		   <option value="<s:property value="id"/>"><s:property value="tenloaitour"/></option>
		</s:iterator>
		</select>
		<s:submit/>
	</s:form>	
	
	
	<script>
	
	</script>
</body>
</html>