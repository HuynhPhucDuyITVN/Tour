<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<section class="py-5">
    <div class="container px-4 px-lg-5 mt-1">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <div class="p-3 shadow">
                    <h3 class="text-info text-center">ĐĂNG NHẬP</h3>
                    <form action="loginUser" method="POST">
                        <div class="my-3">
                            <label>User Name</label>
                            <input type="text" name="tendangnhap" class="form-control" />
                        </div>
                        <div class="my-3">
                            <label>Mật khẩu</label>
                            <input type="password" name="matkhau" class="form-control" required />
                        </div>
                        <div class="d-grid">
                            <input type="submit" value="Đăng nhập" class="btn btn-info btn btn-block" />
                        </div>
                    </form>
                    <s:if test="hasActionMessages()">
				        <div class="welcome">
				            <s:actionmessage /> 
				        </div>
    				</s:if>
                    <div class="my-3">
                        <p class="text-center">Chưa có tài khoản <a href="registerAction" >Đăng ký</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</section>
</body>
</html>