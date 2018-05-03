<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="meta.jsp" %>
<title>Home</title>
</head>
<body>
		<header>
			<div class="container-fluid" style="margin: 0px;padding: 0px;">
				<nav class="navbar toolbar" style="margin: 0px;padding: 0px;z-index: 2;">
					<div class="container-fluid">
						<div class="navbar-header">
						    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mNavbar">
								<span class="icon-bar" style="background-color: white;"></span>
							    <span class="icon-bar" style="background-color: white;"></span>
							    <span class="icon-bar" style="background-color: white;"></span>                        
							</button>
						    <a class="navbar-brand" href="#" style="color: white;">MLM</a>
						</div>
						<div class="collapse navbar-collapse" id="mNavbar">
							<ul class="nav navbar-nav list-menu">
						    	<li class="active"><a href="#"><b>Home</b></a></li>
						    	<li><a href="plans"><b>Business Plan</b></a></li>
						    	<li><a href="product"><b>Product</b></a></li>
						    	<li><a href="pickupcentre"><b>Pick Up Centre</b></a></li>
								<li><a href="contactus"><b>Contact Us</b></a></li>
							</ul>
							<ul class="nav navbar-nav navbar-right list-menu">
						        <li><a href="admin/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						        <li><a href="admin/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
						    </ul>
						</div>
					</div>
				</nav>
			</div>
			
		</header>
		<main>
			<div>
				<div class="container-fluid" style="position: relative;"> 
				  <div id="mCarousel" class="carousel slide" data-ride="carousel">
				    <!-- Indicators -->
				    <ol class="carousel-indicators">
				      <li data-target="#mCarousel" data-slide-to="0" class="active"></li>
				      <li data-target="#mCarousel" data-slide-to="1"></li>
				      <li data-target="#mCarousel" data-slide-to="2"></li>
				    </ol>
				
				    <!-- Wrapper for slides -->
				    <div class="carousel-inner" style="height: 620px;">
				      <div class="item active" >
				        <img class="banner-img" src="images/banner1.jpg" alt="Marketting">
				      </div>
				
				      <div class="item">
				        <img class="banner-img" src="images/banner2.jpg" alt="Marketting">
				      </div>
				    
				      <div class="item">
				        <img class="banner-img" src="images/banner3.jpg"  alt="Marketting">
				      </div>
				    </div>
				
				    <!-- Left and right controls -->
				    <a class="left carousel-control" href="#mCarousel" data-slide="prev" >
				      <span class="glyphicon glyphicon-chevron-left"></span>
				      <span class="sr-only">Previous</span>
				    </a>
				    <a class="right carousel-control" href="#mCarousel" data-slide="next" >
				      <span class="glyphicon glyphicon-chevron-right"></span>
				      <span class="sr-only">Next</span>
				    </a>
				  </div>
				</div>
			</div>
		</main>
		<footer>
			<div class="cls-footer">
				<p><span class="glyphicon glyphicon-copyright-mark"></span> 2018 Copyright: Designed and Developed by linsys</p>
			</div>
		</footer>
</body>
</html>