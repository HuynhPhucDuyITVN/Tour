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
	          <s:actionmessage /> 
	      </p>
	  </s:if>
	<p><a href="createVeTourAction">Thêm mới</a>  <a href="homeAdminAction">Trang chủ</a></p>
	<table >
	<tr>
	<th>Tên món ăn</th>
	<th>Mô tả</th>
	<th>Thời gian</th>
	<th>Hình ảnh</th>
	<th>Giá</th>
	<th>Trạng thái</th>
	<th>Loại</th>
	<th></th>
	</tr>

	
		<s:iterator var="vetour" value="vetourlist">
		<tr>
			<td><s:property value="tentour"/></td>
			<td><s:property value="mota"/></td>
			<td><s:property value="thoigian"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
			<td><s:property value="gia"/></td>
			<s:if test="trangthai==1">
			<td>Còn hoạt động</td>
			</s:if>
			<s:if test="trangthai==0">
			<td>Ngưng hoạt động</td>
			</s:if>
			<td><s:property value="tenloaitour"/></td>
			<td><a href='editVeTourAction?id=<s:property value="id"/>'>Chỉnh sửa</a></td>
		</tr>
		</s:iterator>
	
	</table>
	
</body>
</html>