<%@page import="java.util.Base64"%>
<%@page import="com.linsys.dbconnection.DBQueryFunctions"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.linsys.model.ProductModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="meta.jsp" %>
<title>Products</title>
<% List<ProductModel> productModel = new ArrayList<>();%>
<% productModel = DBQueryFunctions.getAllProducts(); %>

</head>
<body style="background-color: #e5e5e5;">
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
						    <a class="navbar-brand" href="home" style="color: white;">MLM</a>
						</div>
						<div class="collapse navbar-collapse" id="mNavbar">
							<ul class="nav navbar-nav list-menu">
						    	<li><a href="home"><b>Home</b></a></li>
						    	<li><a href="plans"><b>Business Plan</b></a></li>
						    	<li class="active"><a href="#"><b>Product</b></a></li>
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
		
		
		<main class="cls-content">
		<% if(productModel.size() == 0){ %>
		<h4>No products found!</h4>
		<% }else{ %>
			<div class="container-fluid">
			<% for(int i=0;i<productModel.size();i++){ %>
				<% if(i%4 == 0){ %>
				<div class="row">
				<% } %>
					<div class="col-md-3">
						<div class="product-card">
						<%
						int blobLength = (int) productModel.get(i).getImageFile().length();  
					    byte[] val = productModel.get(i).getImageFile().getBytes(1, blobLength);
					    String encode = Base64.getEncoder().encodeToString(val);
						
						%>
							<img class="product-img" alt="Product Image" src="data:image/jpg;base64,<%= encode %>">
							<p class="product-title"><%= productModel.get(i).getProductName() %></p>
							<p class="product-desc"><%= productModel.get(i).getDescription() %></p>
							<p class="product-price"><b>Rs <%= productModel.get(i).getSellingPrice() %></b></p>
						</div>
					</div>
				<% if(i%4 == 3){ %>
				</div>
				<br>
				<% } %>
			<% } %>
			
			</div>
		<% } %>
		
		<br>
		<br><br>
		<br>
		</main>
		
		
		<footer>	
		
			<div class="cls-gen-footer">
				<p><span class="glyphicon glyphicon-copyright-mark"></span> 2018 Copyright: Designed and Developed by linsys</p>
			</div>
		</footer>
</body>
</html>