<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginUser" method="POST">
	            UserName:<input type="text" name="tendangnhap" /><br /> 
	            Password:<input type="password" name="matkhau" /><br />
	            <input type="submit" value="Login" />
	 </form>
    <s:if test="hasActionMessages()">
        <div class="welcome">
            <s:actionmessage /> 
        </div>
    </s:if>
</body>
</html>