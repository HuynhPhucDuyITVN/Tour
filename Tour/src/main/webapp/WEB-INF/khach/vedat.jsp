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
	<table >
	<tr>
	<th>Tên tài khoản</th>
	<th>Tour</th>
	<th>Hình ảnh</th>
	<th>Số điện thoại</th>
	<th>Số lượng</th>
	<th>Giá</th>
	<th>Thành tiền</th>
	<th>Trạng thái</th>
	<th></th>
	</tr>

	
		<s:iterator var="datve" value="datvelist">
		<tr>
			<td><s:property value="tendangnhap"/></td>
			<td><s:property value="tentour"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
			<td><s:property value="sdt"/></td>
			<td><s:property value="soluong"/></td>
			<td><s:property value="gia"/></td>
			<td><s:property value="thanhtien"/></td>
			<s:if test="trangthai==1">
			<td>Đặt hàng thành công</td>
			</s:if>
			<s:if test="trangthai==0">
			<td>Đã hủy</td>
			</s:if>
			<s:if test="trangthai==1">
				<td><a href='fixvedatKhachAction?id=<s:property value="id"/>'>Chỉnh sửa</a></td>
			</s:if>
			
		</tr>
		</s:iterator>
	
	</table>
	
</body>
</html>