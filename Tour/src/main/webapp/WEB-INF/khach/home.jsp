<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Tour
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h1>Food list</h1>
	<s:if test='getMessage()"!=""'>
		<p>
			<s:property value="message" />
		</p>
	</s:if>
	<table>
		<tr>
			<th>Tên món ăn</th>
			<th>Hình ảnh</th>
			<th></th>
		</tr>
		<s:iterator var="loaitour" value="loaitourlist">
		<tr>
			<td><s:property value="tenloaitour"/></td>
			<td><img width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
			<td><a href='orderAction?idmonan=<s:property value="id"/>'>chitiet</a></td>
		</tr>
		</s:iterator>		
	</table>
</body>
</html>
