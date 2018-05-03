<%@page import="java.util.ArrayList"%>
<%@page import="com.linsys.model.DownlineModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="a_meta.jsp"></jsp:include>
 
 <% List<DownlineModel> downlineModel = new ArrayList<>(); %>
 <% 
 for(int j=0;j<20;j++){
	 DownlineModel model = new DownlineModel();
	 model.setCustomerID(j);
	 model.setCustomerName("testing");
	 model.setCustomerTag("#INV7656IF");
	 model.setLevel(j%4);
	 downlineModel.add(model);
 }
 
 
 %>
</head>
<body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="index.html" class="navbar-brand nav-link"><img alt="branding logo" src="../app-assets/images/logo/robust-logo-light.png" data-expand="../app-assets/images/logo/robust-logo-light.png" data-collapse="../app-assets/images/logo/robust-logo-small.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5">         </i></a></li>
              <li class="nav-item hidden-sm-down"><a href="#" class="nav-link nav-link-expand"><i class="ficon icon-expand2"></i></a></li>
              
            </ul>
            <ul class="nav navbar-nav float-xs-right">
              <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online"><img src="../app-assets/images/portrait/small/avatar-s-1.png" alt="avatar"><i></i></span><span class="user-name">John Doe</span></a>
                <div class="dropdown-menu dropdown-menu-right"><a href="#" class="dropdown-item"><i class="icon-head"></i> Edit Profile</a><a href="#" class="dropdown-item"><i class="icon-mail6"></i> My Inbox</a><a href="#" class="dropdown-item"><i class="icon-clipboard2"></i> Task</a><a href="#" class="dropdown-item"><i class="icon-calendar5"></i> Calender</a>
                  <div class="dropdown-divider"></div><a href="#" class="dropdown-item"><i class="icon-power3"></i> Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu header-->
      
      <!-- / main menu header-->
      <!-- main menu content-->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" nav-item"><a href="Dashboard.jsp"><i class="icon-home3"></i><span data-i18n="nav.dash.main" class="menu-title">Dashboard</span></a>
          </li>
          <li class=" nav-item"><a href="#"><i class="icon-stack-2"></i><span data-i18n="nav.page_layouts.main" class="menu-title">Products</span></a>
            <ul class="menu-content">
              <li><a href="#" data-i18n="nav.page_layouts.1_column" class="menu-item">Add Product</a>
              </li>
              <li><a href="layout-2-columns.html" data-i18n="nav.page_layouts.2_columns" class="menu-item">Product List</a>
              </li>
            </ul>
          </li>
          
        </ul>
      </div>
      <!-- /main menu content-->
      <!-- main menu footer-->
      <!-- include includes/menu-footer-->
      <!-- main menu footer-->
    </div>
    <!-- / main menu-->

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">Profile</h2>
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Dashboard.jsp">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Profile</a>
                </li>
              </ol>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Basic form layout section start -->
			<section id="basic-form-layouts">
				<div class="row match-height">
					<div class="col-md-12">
						<div class="card">
				            <div class="card-header">
				                <h4 class="card-title">Personal Info</h4>
				                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
				            </div>
				            <div class="card-body collapse in">
				                <div class="table-responsive">
				                    <table class="table">
				                        <tbody>
				                            <tr>
				                                <td>Customer ID</td>
				                                <td>#AGH748298</td>
				                            </tr>
				                            <tr>
				                                <td>Customer Name</td>
				                                <td>Tester</td>
				                            </tr>
				                            <tr>
				                                <td>Mobile Number</td>
				                                <td>8877665544</td>
				                            </tr>
				                            <tr>
				                                <td>Email ID</td>
				                                <td>tester@g.co</td>
				                            </tr>
				                            <tr>
				                                <td>Aadhar ID</td>
				                                <td>9876 3435 6784</td>
				                            </tr>
				                            <tr>
				                                <td>Account Status</td>
				                                <td>Active</td>
				                            </tr>
				                        </tbody>
				                    </table>
				                </div>
				            </div>
				        </div>
					</div>
				</div>
				<div class="row match-height">
					<div class="col-md-6">
						<div class="card">
				            <div class="card-header">
				                <h4 class="card-title">Correspondance Address</h4>
				                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
				            </div>
				            <div class="card-body collapse in">
				                <p style="padding: 10px;">B-1/414,Veer Singh Marg, Jankpuri East, New Delhi - 110001</p>
				            </div>
				        </div>
					</div>
					
					<div class="col-md-6">
						<div class="card">
				            <div class="card-header">
				                <h4 class="card-title">Permament Address</h4>
				                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
				            </div>
				            <div class="card-body collapse in">
				                <p style="padding: 10px;">B-1/414,Veer Singh Marg, Jankpuri East, New Delhi - 110001</p>
				            </div>
				        </div>
					</div>
					
				</div>
				
				<div class="row match-height">
					<div class="col-md-12">
						<div class="card">
				            <div class="card-header">
				                <h4 class="card-title">Bank Details</h4>
				                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
				            </div>
				            <div class="card-body collapse in">
				                <div class="table-responsive">
				                    <table class="table">
				                        <tbody>
				                            <tr>
				                                <td>Bank Name</td>
				                                <td>State Bank of India</td>
				                            </tr>
				                            <tr>
				                                <td>Account Number</td>
				                                <td>1234 2334 3456 2356</td>
				                            </tr>
				                            <tr>
				                                <td>IFSC Code</td>
				                                <td>SIB5544</td>
				                            </tr>
				                            <tr>
				                                <td>Branch</td>
				                                <td>Janakpuri</td>
				                            </tr>
				                        </tbody>
				                    </table>
				                </div>
				            </div>
				        </div>
					</div>
				</div>
				
			</section>
			
			
			<section class="recent_invoice">
				<div>
					<div class="row match-height">
						<div class="col-xl-12 col-md-12 col-lg-12">
					        <div class="card">
					            <div class="card-header">
					                <h4 class="card-title">Recent Invoices</h4>
					                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					                <div class="heading-elements">
					                    <ul class="list-inline mb-0">
					                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
					                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
					                    </ul>
					                </div>
					            </div>
					            <div class="card-body">
					                
					                <div class="table-responsive">
					                    <table class="table table-hover mb-0">
					                        <thead>
					                            <tr>
					                                <th>Invoice#</th>
					                                <th>Customer Name</th>
					                                <th>Status</th>
					                                <th>Due</th>
					                                <th>Amount</th>
					                            </tr>
					                        </thead>
					                        <tbody>
					                            <tr>
					                                <td class="text-truncate"><a href="#">INV-001001</a></td>
					                                <td class="text-truncate">Elizabeth W.</td>
					                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
					                                <td class="text-truncate">10/05/2016</td>
					                                <td class="text-truncate">$ 1200.00</td>
					                            </tr>
					                            <tr>
					                                <td class="text-truncate"><a href="#">INV-001012</a></td>
					                                <td class="text-truncate">Andrew D.</td>
					                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
					                                <td class="text-truncate">20/07/2016</td>
					                                <td class="text-truncate">$ 152.00</td>
					                            </tr>
					                            <tr>
					                                <td class="text-truncate"><a href="#">INV-001401</a></td>
					                                <td class="text-truncate">Megan S.</td>
					                                <td class="text-truncate"><span class="tag tag-default tag-success">Paid</span></td>
					                                <td class="text-truncate">16/11/2016</td>
					                                <td class="text-truncate">$ 1450.00</td>
					                            </tr>
					                            <tr>
					                                <td class="text-truncate"><a href="#">INV-01112</a></td>
					                                <td class="text-truncate">Doris R.</td>
					                                <td class="text-truncate"><span class="tag tag-default tag-warning">Overdue</span></td>
					                                <td class="text-truncate">11/12/2016</td>
					                                <td class="text-truncate">$ 5685.00</td>
					                            </tr>
					                            <tr>
					                                <td class="text-truncate"><a href="#">INV-008101</a></td>
					                                <td class="text-truncate">Walter R.</td>
					                                <td class="text-truncate"><span class="tag tag-default tag-warning">Overdue</span></td>
					                                <td class="text-truncate">18/05/2016</td>
					                                <td class="text-truncate">$ 685.00</td>
					                            </tr>
					                        </tbody>
					                    </table>
					                </div>
					            </div>
					        </div>
					    </div>
					</div>
					
				</div>
			</section>
			
			
			<section>
				<div class="row match-height">
					<div class="col-xl-12 col-md-12 col-lg-12">
						<div class="card">
					    	<div class="card-header">
					        	<h4 class="card-title">Downline</h4>
					        </div>
					        <div class="card-body">
					        
					            <% for(int i=0;i<downlineModel.size();i++){ %>
					            	<% System.out.print("--->>>"+downlineModel.get(i).getLevel()); %>
					            	<% if(downlineModel.get(i).getLevel() == 1){ %>
					            		<br><h4 style="margin-left: 20px;">+--> <%= downlineModel.get(i).getCustomerTag() + " - " +downlineModel.get(i).getCustomerName() %></h4>
					            	<% }else if(downlineModel.get(i).getLevel() == 2){ %>
					            		<br><h4 style="margin-left: 50px;">|_____ <%= downlineModel.get(i).getCustomerTag() + " - " +downlineModel.get(i).getCustomerName() %></h4>
					            	<% }else if(downlineModel.get(i).getLevel() == 3){ %>
					            		<br><h4 style="margin-left: 80px;">|_____ <%= downlineModel.get(i).getCustomerTag() + " - " +downlineModel.get(i).getCustomerName() %></h4>
					            	<% }else if(downlineModel.get(i).getLevel() == 4){ %>
					            		<br><h4 style="margin-left: 110px;">|_____ <%= downlineModel.get(i).getCustomerTag() + " - " +downlineModel.get(i).getCustomerName() %></h4>
					            	<% }else if(downlineModel.get(i).getLevel() == 5){ %>
					            		<br><h4 style="margin-left: 140px;">|_____ <%= downlineModel.get(i).getCustomerTag() + " - " +downlineModel.get(i).getCustomerName() %></h4>
					            	<% } %>
					            <% } %>
					            
					        </div>
					    </div>
					</div>
				</div>
			</section>
<!-- // Basic form layout section end -->
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <footer class="footer footer-static footer-light navbar-border">
      <p class="clearfix text-muted text-sm-center mb-0 px-2"><span class="float-md-left d-xs-block d-md-inline-block">Copyright  &copy; 2017 <a href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent" target="_blank" class="text-bold-800 grey darken-2">PIXINVENT </a>, All rights reserved. </span><span class="float-md-right d-xs-block d-md-inline-block">Hand-crafted & Made with <i class="icon-heart5 pink"></i></span></p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="../app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="../app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="../app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN ROBUST JS-->
    <script src="../app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="../app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END ROBUST JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
  </body>
</html>