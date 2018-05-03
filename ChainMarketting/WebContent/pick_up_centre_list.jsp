<%@page import="com.linsys.dbconnection.DBQueryFunctions"%>
<%@page import="com.linsys.model.PUC_Model_Data"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="meta.jsp" %>
<title>PUC List</title>
<% List<PUC_Model_Data> dataList = DBQueryFunctions.get_pick_up_centre_list_details(); %>
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
						    <a class="navbar-brand" href="home" style="color: white;">MLM</a>
						</div>
						<div class="collapse navbar-collapse" id="mNavbar">
							<ul class="nav navbar-nav list-menu">
						    	<li><a href="home"><b>Home</b></a></li>
						    	<li><a href="plans"><b>Business Plan</b></a></li>
						    	<li><a href="product"><b>Product</b></a></li>
						    	<li class="active"><a href="#"><b>Pick Up Centre</b></a></li>
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
		<% if(dataList.size() == 0){ %>
		<h2>No Data found!!!</h2>
		<% }else{ %>
			<div class="container-fluid table-responsive" style="margin: 0px;padding: 0px;">
				  <h2>Pick Up Centre List</h2>           
				  <table class="table table-striped table-hover ">
				    <thead>
				      <tr>
				        <th>S.No</th>
				        <th>Company Name</th>
				        <th>Address</th>
				        <th>Mobile</th>
				        <th>Email ID</th>
				      </tr>
				    </thead>
				    <tbody>
			<% for(int i=0;i<dataList.size();i++){ %>
				<tr>
					<td><%= i+1 %></td>
					<td><h4><%= dataList.get(i).getCompanyName() %></h4></td>
					<td>
						<b><%= dataList.get(i).getAddress() %>, <%= dataList.get(i).getLandMark() %>,</b>
						<br><b><%= dataList.get(i).getState() %>, Pin: <%= dataList.get(i).getPincode() %> </b>
					</td>
				    <td><%= dataList.get(i).getOfficeMobile1() %>,<%= dataList.get(i).getOfficeMobile2() %></td>
				    <td><%= dataList.get(i).getEmailID() %></td>
				</tr>			
			<% } %>
					</tbody>
				  </table>
				</div>
		<% } %>
		</main>
		<footer>	
			<div class="cls-gen-footer">
				<p><span class="glyphicon glyphicon-copyright-mark"></span> 2018 Copyright: Designed and Developed by linsys</p>
			</div>
		</footer>

</body>
</html>