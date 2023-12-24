<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đặt Vé</title>
</head>
<body>
	<h1>Order</h1>
	<s:form action="submitOrderKhacAction" method="Post" validate ="true">
		<s:textfield label="Tên tour" redonly="true" value='%{vetour.tentour}'/>
		<s:textfield id="thoigian" name="thoigian" label="Thời gian" value='%{vetour.thoigian}' readonly="true" />
		<s:textfield id="sdt" name="sdt" label="Số điện thoại" />
		<s:textfield id="gia" name="gia" label="Giá" value='%{vetour.gia}' readonly="true" />
		<s:textfield id="soluong" name="soluong" label="Số lượng" onchange="tinhthanhtien()"/>
		<s:textfield id="thanhtien" name="thanhtien" label="Thành tiền" redonly="true"/>
		<input type="hidden" name="idvetour" value='<s:property value="idvetour"/>'/>
		<s:submit/>
	</s:form>
	<script>
		function tinhthanhtien(){
			var soluong =document.getElementById("soluong").value;
			var gia=document.getElementById("gia").value;
			document.getElementById("thanhtien").value=soluong*gia;
		}
	</script>
</body>
</html>