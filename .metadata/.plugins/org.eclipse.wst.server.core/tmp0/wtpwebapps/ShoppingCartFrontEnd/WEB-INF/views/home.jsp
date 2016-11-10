<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Perfume | Home</title>
<link href="resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!---- start-smoth-scrolling---->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
</script>
<!----webfonts--->
<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<!---//webfonts--->
<!----start-top-nav-script---->
<script>
	$(function() {
		var pull = $('#pull');
		menu = $('nav ul');
		menuHeight = menu.height();
		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});
		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	});
</script>
<!----//End-top-nav-script---->
</head>
<body>
	<!----container---->
	<div class="container">
		<!----top-header---->
		<div class="top-header">
			<div class="logo">
				<a href="index.html"><img src="resources/images/logo.png"
					title="barndlogo" /></a>
			</div>
			<div class="top-header-info">
				<div class="top-contact-info">
					<ul class="unstyled-list list-inline">
						<li><span class="phone"> </span>+91 - 859 38 96782</li>
						<li><span class="mail"> </span><a href="#">harisankar6715@gmail.com</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="cart-details">
					<div class="add-to-cart">
						<ul class="unstyled-list list-inline">
							<li><span class="cart"> </span>
								<ul class="cart-sub">
									<li><p>0 Products</p></li>
								</ul></li>
						</ul>
					</div>
					<div class="login-rigister">
						<ul class="unstyled-list list-inline">
							<li><a class="login" href="loginhere">Login</a></li>
							<li><a class="rigister" href="register">REGISTER <span>
								</span></a></li>
							<div class="clearfix"></div>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!----//top-header---->
		<!---top-header-nav---->
		<div class="top-header-nav">
			<!----start-top-nav---->
			<nav class="top-nav main-menu">
				<ul class="top-nav">
					<li><a href="products.html">BRANDS</a><span> </span></li>
					<li><a href="products.html">ABOUT US</a></li>
					<div class="clearfix"></div>
				</ul>
				<a href="#" id="pull"><img src="resources/images/nav-icon.png"
					title="menu" /></a>
			</nav>
			<!----End-top-nav---->
			<!---top-header-search-box--->
			<div class="top-header-search-box">
				<form>
					<input type="text" placeholder="Search" required / maxlength="22">
					<input type="submit" value=" ">
				</form>
			</div>
			<!---top-header-search-box--->
			<div class="clearfix"></div>
		</div>
	</div>
	<!--//top-header-nav---->
	<!----start-slider-script---->
	<script src="resources/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : true,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!----//End-slider-script---->
	<!-- Slideshow 4 -->
	<div id="top" class="callbacks_container">
		<ul class="rslides" id="slider4">
			<li><img src="resources/images/slide1.jpg" alt=""></li>
			<li><img src="resources/images/slide2.jpg" alt=""></li>
			<li><img src="resources/images/slide3.jpg" alt=""></li>
		</ul>
	</div>
	<div class="clearfix"></div>
	<!----- //End-slider---->
	<!----content---->
	<div class="content">
		<div class="container">
			<!---top-row--->
			<div class="top-row">
				<div class="col-xs-4">
					<div class="top-row-col1 text-center">
						<h2>WOMAN</h2>
						<img class="r-img text-center" src="resources/images/img-w.jpg"
							title="name" />
						<h4>TOTAL</h4>
						<label>357 PRODUCTS</label> <a class="r-list-w"
							href="single-page.html"><img
							src="resources/images/list-icon.png" title="list" /></a>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="top-row-col1 text-center">
						<h2>MAN</h2>
						<img class="r-img text-center"
							src="resources/images/man-r-img.jpg" title="name" />
						<h4>TOTAL</h4>
						<label>357 PRODUCTS</label> <a class="r-list-w"
							href="single-page.html"><img
							src="resources/images/list-icon.png" title="list" /></a>
					</div>
				</div>
				<div class="col-xs-4">
					<div class="top-row-col1 text-center">
						<h2>KIDS</h2>
						<img class="r-img text-center"
							src="resources/images/kid-r-img.jpg" title="name" />
						<h4>TOTAL</h4>
						<label>357 PRODUCTS</label> <a class="r-list-w"
							href="single-page.html"><img
							src="resources/images/list-icon.png" title="list" /></a>
					</div>
				</div>
				<vdi class="clearfix">
			</div>
		</div>
		<div id="login">
			<c:if test="${isUserClickedLoginHere==true || invalidCredentials==true}">
				<div id="error">${errorMessage}</div>
				<%@ include file="login.jsp"%>

			</c:if>
		</div>
		<div id="isAdmin">
			<c:if test="${isAdmin==true }">
				<%@ include file="isAdmin.jsp"%>
			</c:if>
		</div>

		<div id="category">
			<c:if test="${isAdminCLickedCategory==true }">
				<%@ include file="Category.jsp"%>
			</c:if>
		</div>

		<div id="product">
			<c:if test="${isAdminClickedProduct==true }">
				<%@ include file="Product.jsp"%>
			</c:if>
		</div>

		<div id="supplier">
			<c:if test="${isAdminClickedSupplier==true }">
				<%@ include file="Supplier.jsp"%>
			</c:if>
		</div>

		<div id="register">
			<c:if test="${isUserClickedRegisterHere==true}">
				<div id="success">${successMessage}</div>
				<%@ include file="register1.jsp"%>

			</c:if>
		</div>
		<!---top-row--->
		<div class="container">
			<!----speical-products---->
			<div class="special-products">
				<div class="s-products-head">
					<div class="s-products-head-left">
						<h3>
							SPECIAL <span>PRODUCTS</span>
						</h3>
					</div>
					<div class="s-products-head-right">
						<a href="products.html"><span> </span>view all products</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<!----special-products-grids---->
				<div class="special-products-grids">
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b1.jpg" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p1.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">Hugo Boss</a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b2.png" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p2.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">Usher</a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b3.jpg" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p3.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">Spicy </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b4.png" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p4.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html"> Positively Purple </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b5.jpg" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p5.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">Legend </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b6.png" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p6.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">212 Men Nyc </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b7.jpg" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p7.jpg" title="product-name" /></a>
						<h4>
							<a href="single-page.html">COCO </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="col-md-3 special-products-grid text-center">
						<a class="brand-name" href="single-page.html"><img
							src="resources/images/b8.png" title="name" /></a> <a
							class="product-here" href="single-page.html"><img
							src="resources/images/p8.png" title="product-name" /></a>
						<h4>
							<a href="single-page.html">Baby Perfume </a>
						</h4>
						<a class="product-btn" href="single-page.html"><span>109.90$</span><small>GET
								NOW</small><label> </label></a>
					</div>
					<div class="clearfix"></div>
				</div>
				<!---//special-products-grids---->
			</div>
			<!---//speical-products---->
		</div>
		<!----content---->
		<!----footer--->
		<div class="footer">
			<div class="container">
				<div class="col-md-3 footer-logo">
					<a href="index.html"><img src="resources/images/flogo.png"
						title="perfume" /></a>
				</div>
				<div class="col-md-7 footer-links">
					<ul class="unstyled-list list-inline">

						<li><a href="#"> Terms and Conditions</a> <span> </span></li>

						<li><a href="contact.html"> Contact</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="col-md-2 footer-social">
					<ul class="unstyled-list list-inline">
						<li><a class="pin" href="#"><span> </span></a></li>
						<li><a class="twitter" href="#"><span> </span></a></li>
						<li><a class="facebook" href="#"><span> </span></a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
		<!---//footer--->
		<!---copy-right--->
		<div class="copy-right">
			<div class="container">

				<script type="text/javascript">
					$(document).ready(function() {
						/*
						var defaults = {
							containerID: 'toTop', // fading element id
							containerHoverID: 'toTopHover', // fading element hover id
							scrollSpeed: 1200,
							easingType: 'linear' 
						};
						 */

						$().UItoTop({
							easingType : 'easeOutQuart'
						});

					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span
					id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
		</div>
		<!--//copy-right--->
	</div>
	<!----container---->

</body>
</html>

