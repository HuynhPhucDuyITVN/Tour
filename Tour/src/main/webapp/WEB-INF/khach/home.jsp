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

	<nav class="site-nav">
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
							<s:if test="nguoidung.loaiquyen=='admin'">
								<li><a href="homeAdminAction">Trang quản lý</a></li>
							</s:if>
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


	<div class="hero">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="intro-wrap">
						<h1 class="mb-5"><span class="d-block">Hãy tận hưởng</span> Những chuyến đi <span class="typed-words"></span></h1>

						<div class="row">
							<div class="col-12">
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="slides">
						<img src="images/hero-slider-1.jpg" alt="Image" class="img-fluid active">
						<img src="images/hero-slider-2.jpg" alt="Image" class="img-fluid">
						<img src="images/hero-slider-3.jpg" alt="Image" class="img-fluid">
						<img src="images/hero-slider-4.jpg" alt="Image" class="img-fluid">
						<img src="images/hero-slider-5.jpg" alt="Image" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-6 text-center">
					<h2 class="section-title text-center mb-3">Dịch vụ</h2>
				</div>
			</div>
			<div class="row align-items-stretch">
				<div class="col-lg-4 order-lg-1">
					<div class="h-100"><div class="frame h-100"><div class="feature-img-bg h-100" style="background-image: url('images/hero-slider-1.jpg');"></div></div></div>
				</div>

				<div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-1" >

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-house display-4 text-primary"></span>
							<h3>Tour độc đáo</h3>
							<p class="mb-0">Những tour đi vô cục thú vị và hấp dẫn đang chờ.</p>
						</div>
					</div>

					<div class="feature-1 ">
						<div class="align-self-center">
							<span class="flaticon-restaurant display-4 text-primary"></span>
							<h3>Danh mục thú vị</h3>
							<p class="mb-0">Các danh mục đó luôn đem lại nhiều sự tò mò để tìm hiểu</p>
						</div>
					</div>

				</div>

				<div class="col-6 col-sm-6 col-lg-4 feature-1-wrap d-md-flex flex-md-column order-lg-3" >

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-mail display-4 text-primary"></span>
							<h3>Dễ liên lạc</h3>
							<p class="mb-0">Sẽ giúp bạn có được dịch vụ tốt nhất có thể.</p>
						</div>
					</div>

					<div class="feature-1 d-md-flex">
						<div class="align-self-center">
							<span class="flaticon-phone-call display-4 text-primary"></span>
							<h3>Hỗ trợ 24/7</h3>
							<p class="mb-0">Không để bạn bị lạc lõng trong khoản thời gian tận hưởng chuyến đi</p>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>

	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7"><h2 class="section-title text-center">Danh mục</h2></div>
			</div>

			<div class="owl-carousel owl-3-slider">
				<s:iterator var="loaitour" value="loaitourlist">
					<div class="item">
						<a style="width: 350px; height: 350px" class="media-thumb" href='menutheoloaiKhachAction?idloaitour=<s:property value="id"/>'>
							<div class="media-text">
								<h3><s:property value="tenloaitour"/></h3>
							</div>
							<img style="width: 100%; height: 100%; object-fit: cover;" src=' ./img/<s:property value="hinhanh"/>' alt="Image" class="img-fluid">
						</a> 
					</div>
				</s:iterator>
			</div>
		</div>
	</div>


	<div class="untree_co-section testimonial-section mt-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 text-center">
					<h2 class="section-title text-center mb-5">Testimonials</h2>

					<div class="owl-single owl-carousel no-nav">
						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="images/person_2.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Adam Aderson</h3>
							<blockquote>
								<p>&ldquo;Website tour du lịch có thiết kế giao diện thân thiện, dễ sử dụng. Các thông tin về tour du lịch được sắp xếp khoa học, rõ ràng, giúp khách hàng dễ dàng tìm kiếm và lựa chọn. Nội dung thông tin về tour du lịch được cập nhật thường xuyên, đầy đủ và chính xác. Đặc biệt, website còn có nhiều chương trình khuyến mãi hấp dẫn, giúp khách hàng tiết kiệm chi phí khi đi du lịch.&rdquo;</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="images/person_3.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Lukas Devlin</h3>
							<blockquote>
								<p>&ldquo;Website tour du lịch MegaTravel có kho tàng tour du lịch phong phú, đa dạng, đáp ứng nhu cầu của mọi đối tượng khách hàng. Các tour du lịch được thiết kế linh hoạt, có thể tùy chỉnh theo yêu cầu của khách hàng. Hình ảnh và video về tour du lịch được đầu tư kỹ lưỡng, giúp khách hàng có cái nhìn chân thực nhất về điểm đến. Bên cạnh đó, website còn cung cấp nhiều thông tin hữu ích về du lịch, giúp khách hàng có chuyến du lịch trọn vẹn và đáng nhớ.&rdquo;</p>
							</blockquote>
						</div>

						<div class="testimonial mx-auto">
							<figure class="img-wrap">
								<img src="images/person_4.jpg" alt="Image" class="img-fluid">
							</figure>
							<h3 class="name">Kayla Bryant</h3>
							<blockquote>
								<p>&ldquo;Website tour du lịch VietjetTravel có giao diện hiện đại, bắt mắt. Các thông tin về tour du lịch được trình bày sinh động, hấp dẫn, giúp khách hàng dễ dàng tìm kiếm và lựa chọn. Website còn có tính năng đặt tour trực tuyến tiện lợi, giúp khách hàng tiết kiệm thời gian và công sức. Ngoài ra, website còn có đội ngũ nhân viên tư vấn nhiệt tình, sẵn sàng giải đáp mọi thắc mắc của khách hàng.rdquo;</p>
							</blockquote>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="untree_co-section">
		<div class="container">
			<div class="row text-center justify-content-center mb-5">
				<div class="col-lg-7"><h2 class="section-title text-center">Tour</h2></div>
			</div>
			<div class="owl-carousel owl-3-slider">
				<s:iterator var="vetour" value="vetourlist"> 
					<div class="item">
						 <div class="media-1">
							<a style="width: 350px; height: 350px" href='DetailKhachAction?idvetour=<s:property value="id"/>' class="media-thumb">
								<img style="width: 100%; height: 100%; object-fit: cover;" src=' ./img/<s:property value="hinhanh"/>' alt="Image" class="img-fluid">
							</a>
							<span class="d-flex align-items-center loc mb-2">
								<span class="icon-clock mr-3">&#128339;</span>
								<span><s:property value="thoigian"/></span>
							</span>
							<div class="d-flex align-items-center">
								<div>
									<h3 style="width: 350px; overflow: hidden; text-overflow: ellipsis; line-height: 30px; -webkit-line-clamp: 1; display: -webkit-box; -webkit-box-orient: vertical; ">
									<a href='DetailKhachAction?idvetour=<s:property value="id"/>'><s:property value="tentour"/></a>
									</h3>
									<div class="price ml-auto">
										<span><s:property  value="getText('{0,number,#,##0}',{gia})"/></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>
			</div>
		</div>
	</div>
	
	
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
