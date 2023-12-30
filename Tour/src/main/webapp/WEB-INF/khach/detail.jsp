

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap4" />

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&family=Source+Serif+Pro:wght@400;700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="css/daterangepicker.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

	<title>Tour</title>
</head>

<body>


	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav" style="background-color: #6998AB;">
		<div class="container">
			<div class="site-navigation">
				<a href="homeKhachAction" class="logo m-0">Tour <span class="text-primary">.</span></a>

				<ul class="js-clone-nav d-none d-lg-inline-block text-left site-menu float-right">
					<li class="active"><a href="homeKhachAction">Home</a></li>
					<li class="has-children">
						<a href="#">Danh sách</a>
						<ul class="dropdown">
							<li><a href="menuKhachAction">Danh sách Tour</a></li>
							<li class="has-children">
								<a href="#">Danh mục</a>
								<ul class="dropdown">
								<s:iterator var="loaitour" value="loaitourlist">
									<li><a href='menutheoloaiKhachAction?idloaitour=<s:property value="id"/>'><s:property value="tenloaitour"/></a></li>
								</s:iterator>
								</ul>
							</li>
						</ul>
					</li>
					
					<li class="has-children">
						<a href="#">Tác vụ</a>
						<ul class="dropdown">
							<li><a href="vedatKhachAction">Vé đã đặt</a></li>
							<li><a href="changeKhachAction">Đổi mật khẩu</a></li>
							<li><a href="logoutKhachAction">Đăng xuất</a></li>
						</ul>
					</li>
				</ul>

				<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
					<span></span>
				</a>

			</div>
		</div>
	</nav>
	
	<div class="pt-5" style="background-color: #6998AB;">
		<div class="untree_co-section">
		<s:iterator value="vetour">
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-4 col-md-5 col-sm-6">
                        <div class="white-box text-center">
                            <img class="img-thumbnail" style="height:300px" src=' ./img/<s:property value="hinhanh"/>' />
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7 col-sm-6">
                        <div class="heading_container">
                            <h2 class="text-uppercase">
                                <s:property value="tentour"/>
                            </h2>
                        </div>
                        <h4 class="box-title">
							Thời gian
                        </h4>
                        <p><s:property value="thoigian"/></p>
                        <h4 class="box-title">
                            Mô tả
                        </h4>
                        <p><s:property value="mota"/></p>
                        <h2>
                            <s:property value="gia"/>
                        </h2>
                        <a class="btn btn-info text-light font-weight-bold" href='OrderKhachAction?idvetour=<s:property value="id"/>'>
                            Đặt vé
                            <i class="fa fa-shopping-cart" ></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</div>
	</div>
	
	</s:iterator>
	<div class="site-footer">
		<div class="inner first">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="widget">
							<h3 class="heading">Thông tin</h3>
							<p>Trang web được tạo bởi bốn thành viên: Huỳnh Phúc Duy, Nguyễn Chí Cường, Trần Đình Huy, Lê Hải Đăng</p>
						</div>
						<div class="widget">
							<ul class="list-unstyled social">
								<li><a href="#"><span class="icon-twitter"></span></a></li>
								<li><a href="#"><span class="icon-instagram"></span></a></li>
								<li><a href="#"><span class="icon-facebook"></span></a></li>
								<li><a href="#"><span class="icon-linkedin"></span></a></li>
								<li><a href="#"><span class="icon-dribbble"></span></a></li>
								<li><a href="#"><span class="icon-pinterest"></span></a></li>
								<li><a href="#"><span class="icon-apple"></span></a></li>
								<li><a href="#"><span class="icon-google"></span></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-lg-2 pl-lg-5">
						<div class="widget">
							<h3 class="heading">Pages</h3>
							<ul class="links list-unstyled">
								<li><a href="#">Blog</a></li>
								<li><a href="#">About</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-lg-2">
						<div class="widget">
							<h3 class="heading">Resources</h3>
							<ul class="links list-unstyled">
								<li><a href="#">Blog</a></li>
								<li><a href="#">About</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="widget">
							<h3 class="heading">Liên hệ</h3>
							<ul class="list-unstyled quick-info links">
								<li class="email"><a href="#">hpduy_21th@student.agu.edu.vn</a></li>
								<li class="phone"><a href="#">0378108260</a></li>
								<li class="address"><a href="#">Trường đại học An Giang</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="inner dark">
			<div class="container">
				<div class="row text-center">
					<div class="col-md-8 mb-3 mb-md-0 mx-auto">
						<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co" class="link-highlight">Untree.co</a> <!-- License information: https://untree.co/license/ -->Distributed By <a href="https://themewagon.com" target="_blank" >ThemeWagon</a>
						</p>
					</div>
					
				</div>
			</div>
		</div>
	</div>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/daterangepicker.js"></script>

	<script src="js/typed.js"></script>
	<script>
		$(function() {
			var slides = $('.slides'),
			images = slides.find('img');

			images.each(function(i) {
				$(this).attr('data-id', i + 1);
			})

			var typed = new Typed('.typed-words', {
				strings: ["San Francisco."," Paris."," New Zealand.", " Maui.", " London."],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 4000,
				startDelay: 1000,
				loop: true,
				showCursor: true,
				preStringTyped: (arrayPos, self) => {
					arrayPos++;
					console.log(arrayPos);
					$('.slides img').removeClass('active');
					$('.slides img[data-id="'+arrayPos+'"]').addClass('active');
				}

			});
		})
	</script>

	<script src="js/custom.js"></script>

</body>
</html>
