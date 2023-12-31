
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tour - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="ad/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="homeAdminAction">Trang chủ</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="homeKhachAction">Tour</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="logoutKhachAction">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Quản lý</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                               	Tour - Loại Tour
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="listVeTourAction">Tour</a>
                                    <a class="nav-link" href="listLoaiTourAction">Loại Tour</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
	                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
	                            Tài Khoản & Đặt vé
	                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                        </a>
	                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
	                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
	                                <a class="nav-link" href="listNguoiDungAction" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
	                                    Tài khoản
	                                </a>
	                                <a class="nav-link" href="listDatVeAction" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
	                                    Đặt vé
	                                </a>
	                            </nav>
	                        </div>
                        </div>
                        </div>
                    <div class="sb-sidenav-footer"></div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                	<div class="container-fluid px-4">
    <h1 class="mt-4">Danh sách tour</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item "><a class="text-black text-decoration-none" href="homeAdminAction">Trang chủ</a></li>
        <li class="breadcrumb-item active">Tour</li>
    </ol>
    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            <p>
                <a class="btn btn-outline-info" href="createVeTourAction">Thêm mới</a>
            </p>
        </div>
        <div class="card-body">
            <table id="datatablesSimple">
                <thead>
                    <tr>
                        <th>Tên tour</th>
						<th>Mô tả</th>
						<th>Thời gian</th>
						<th>Hình ảnh</th>
						<th>Giá</th>
						<th>Trạng thái</th>
						<th>Loại</th>
						<th>Thao tác</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
						<th>Tên tour</th>
						<th>Mô tả</th>
						<th>Thời gian</th>
						<th>Hình ảnh</th>
						<th>Giá</th>
						<th>Trạng thái</th>
						<th>Loại</th>
						<th>Thao tác</th>
                    </tr>
                </tfoot>
                <tbody>
                    <s:iterator var="vetour" value="vetourlist">
					<tr>
						<td><s:property value="tentour"/></td>
						<td><s:property value="mota"/></td>
						<td><s:property value="thoigian"/></td>
						<td><img class="img-thumbnail" style="width:50px" width='80' src=' ./img/<s:property value="hinhanh"/>'/></td>
						<td><s:property value="getText('{0,number,#,##0}',{gia})"/></td>
						<s:if test="trangthai==1">
						<td>Còn hoạt động</td>
						</s:if>
						<s:if test="trangthai==0">
						<td>Ngưng hoạt động</td>
						</s:if>
						<td><s:property value="tenloaitour"/></td>
						<td><a class="btn btn-outline-warning" href='editVeTourAction?id=<s:property value="id"/>'>Chỉnh sửa</a></td>
					</tr>
					</s:iterator>
                </tbody>
            </table>
        </div>
    </div>
</div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="ad/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="ad/assets/demo/chart-area-demo.js"></script>
        <script src="ad/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="ad/js/datatables-simple-demo.js"></script>
    </body>
</html>

