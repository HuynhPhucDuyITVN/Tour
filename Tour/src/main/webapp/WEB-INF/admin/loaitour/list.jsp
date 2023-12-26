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
	<p><a href="createLoaiTourAction">Thêm mới</a>  <a href="homeAdminAction">Trang chủ</a></p>
	<table >
	<tr>
	<th>Tên món ăn</th>
	<th>Hình ảnh</th>
	<th></th>
	<th></th>
	</tr>

	
		<s:iterator var="loaitour" value="loaitourlist">
		<tr>
			<td><s:property value="tenloaitour"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
			<td><a href='editLoaiTourAction?id=<s:property value="id"/>'>Chỉnh sửa</a></td>
		</tr>
		</s:iterator>
	
	</table>
	
</body>
</html>