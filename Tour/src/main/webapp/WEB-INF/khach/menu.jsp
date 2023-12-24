<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h1>Food list</h1>
	<a href="menuKhachAction">DSTONG</a>
	<s:if test='getMessage()"!=""'>
		<p>
			<s:property value="message" />
		</p>
	</s:if>
	<table>
		<tr>
			<th>Tên tour</th>
			<th>Mô tả</th>
			<th>Thời gian</th>
			<th>Hình ảnh</th>
			<th>Giá</th>
			<th></th>
		</tr>
		<s:iterator var="vetour" value="vetourlist">
		<tr>
			<td><s:property value="tentour"/></td>
			<td><s:property value="mota"/></td>
			<td><s:property value="thoigian"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
			<td><s:property value="gia"/></td>
			<td><a href='DetailKhachAction?idvetour=<s:property value="id"/>'>chitiet</a></td>
		</tr>
		</s:iterator>		
	</table>
</body>
</html>