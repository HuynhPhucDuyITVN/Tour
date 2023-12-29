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
	
	<s:form action="updateVeTourAction" method="POST" enctype="multipart/form-data" validate="true">
		<input type="hidden" name="id" value='<s:property value="vetour.id"/>'/>	
		
		<s:textfield label="Tên tour" id="tentour" name="tentour" value="%{vetour.tentour}"  />
		<s:textfield label="Mô tả" id="mota" name="mota" value="%{vetour.mota}"  />
		<s:textfield label="Thời gian" id="thoigian" name="thoigian" value="%{vetour.thoigian}"  />
		Hình: <img width='80' src='./img/<s:property value="vetour.hinhanh"/>'/><br/>		
		<s:file name="hinh" label="Chọn hình" accept="image/png, image/jpeg, image/gif"></s:file>
		<s:textfield label="Giá" id="gia" name="gia" value="%{vetour.gia}"  />
		<select name="trangthai" id="trangthai">
			<s:if test="vetour.trangthai==1">
			<option value="1" selected="selected">Còn hoạt động</option>
			<option value="0">Ngưng hoạt động</option>
			</s:if>
			<s:if test="vetour.trangthai==0">
			<option value="0" selected="selected">Ngưng hoạt động</option>
			<option value="1">Còn hoạt động</option>
			</s:if>
		</select>
		<select name="idloaitour" id="idloaitour">
		<s:iterator var="loaitour" value="loaitourlist">
		<s:if test="vetour.idloaitour==id">
		    <option value="<s:property value="id"/>" selected="selected"><s:property value="tenloaitour"/></option>
		</s:if>
		<s:else>
		   <option value="<s:property value="id"/>"><s:property value="tenloaitour"/></option>
		</s:else>
			
		</s:iterator>
		</select>
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>