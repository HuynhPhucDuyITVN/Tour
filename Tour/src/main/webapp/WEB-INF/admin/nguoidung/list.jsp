<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách món ăn</title>
<style>
	table,td,tr,th
	{
		border: 1px solid;
	}
	table
	{
		width:100%;
	}
</style>
</head>
<body>
	<h1>Danh sách món ăn</h1>
	 <s:if test="hasActionMessages()">
	      <p>
	          <s:actionmessage/> 
	      </p>
	  </s:if>
	<p><a href="createNguoiDungAction">Thêm mới</a>  <a href="homeAdminAction">Trang chủ</a></p>
	<table >
	<tr>
	<th>Tên món ăn</th>
	<th>Hình ảnh</th>
	<th>Hình ảnh</th>
	<th></th>
	</tr>

	
		<s:iterator var="nguoidung" value="nguoidunglist">
		<tr>
			<td><s:property value="tendangnhap"/></td>
			<td><s:property value="loaiquyen"/></td>
			<s:if test="trangthai==1">
			<td>Còn hoạt động</td>
			</s:if>
			<s:if test="trangthai==0">
			<td>Ngưng hoạt động</td>
			</s:if>
			
			
			<td><a href='editNguoiDungAction?id=<s:property value="id"/>'>Chỉnh sửa</a>
			<a href='changeNguoiDungAction?id=<s:property value="id"/>'>doimk</a></td>
		</tr>
		</s:iterator>
	
	</table>
	
</body>
</html>