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
	<s:if test="hasActionMessages()">
				        <div class="welcome">
				            <s:actionmessage /> 
				        </div>
    				</s:if>
	
	<s:form action="passNguoiDungAction" method="POST" validate="true">
		<input type="hidden" name="id" value='<s:property value="nguoidung.id"/>'/>	
		<input type="hidden" name="matkhau" value='<s:property value="nguoidung.matkhau"/>'/>	
		
		<s:textfield label="Mật khẩu cũ" id="matkhaucu" name="matkhaucu"   />
		<s:textfield label="Mật khẩu mới" id="matkhaumoi" name="matkhaumoi" />
		<s:textfield label="Xác nhận mật khẩu" id="xacnhan" name="xacnhan" />
		<s:submit/>
	</s:form>	
	<script>
	
	</script>
</body>
</html>