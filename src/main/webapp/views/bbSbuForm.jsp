<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--
Template Name: Safety - Vuejs, HTML & Laravel Admin Dashboard Template
Author: PixInvent
Website: http://www.pixinvent.com/
Contact: hello@pixinvent.com
Follow: www.twitter.com/pixinvents
Like: www.facebook.com/pixinvents
Purchase: https://1.envato.market/vuexy_admin
Renew Support: https://1.envato.market/vuexy_admin
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.

-->
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head--> 
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:16 GMT -->
<head>
   
<style>
.mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.form-switch .form-check-input:not(:checked) {
    background-color: #11db00 !important;
}
.dt-table{
display: block !important;
height: 100%;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}
td {
    border: 1px solid #000;
}

tr td:last-child {
    width: 1%;
    white-space: nowrap;
}
.dataTables_scrollHeadInner{
    box-sizing: content-box;
    width: auto !important;
    padding-right: 0px;
}
</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 BrainBox with unlimited possibilities.">
    <meta name="keywords" content="admin template,BrainBox , Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>BrainBox </title>
        <link rel="icon" type="image/png" sizes="96x96" href="/brainbox/resources/images/protect-favicon.png" >

	<script src="/brainbox/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/brainbox/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
            <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/extensions/ext-component-toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/pickadate/pickadate.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/core/menu/menu-types/horizontal-menu.min.css">
        <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/pickers/form-pickadate.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
	<jsp:include page="../views/layout/header.jsp"></jsp:include> 


    <!-- END: Header-->
    <!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
      <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper" data-menu-type="floating-nav">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="#"><span class="brand-logo">
                  <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                       			         <img src="<%=request.getContextPath() %>/resources/images/logo/protect-main.png" width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
                <h2 class="brand-text mb-0"></h2></a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i></a></li>
          </ul>
        </div>
        <div class="shadow-bottom"></div>
        <!-- Horizontal menu content-->
 			<jsp:include page="../views/layout/menu.jsp"></jsp:include> 
      </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div> 
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
           <div class="content-header-left col-md-7 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                 <h2 class="content-header-title float-start mb-0">Idea Bank  </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                  <%--    <c:if test="${sessionScope.BASE_ROLE ne 'User' }">   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li></c:if> --%>

                    <li class="breadcrumb-item active">Idea Bank 
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          
           <div class="content-header-right col-md-5 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
       <button class="btn col-md-12" style="margin-top: 17px; width: 27%;     background-color: #14e014 !important;color: white !important;"  onclick="exportBrainBox();"><i class="fa fa-download" aria-hidden="true"></i> Download</button>
              <a type="button" class="btn " href="<%=request.getContextPath() %>/bb-bank"  style="margin-top: 17px; color: white !important; background-color: white !important;color: black !important;"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a>
   
              </div>
            </div>
          </div>
          
      <!--       <div class="col-lg-4 col-sm-4 col-12"style="
    display: flex;
    align-items: center;
">
    <div class="col-lg-8 col-sm-4 col-4">
    <button type="button" class="btn " onclick="addBox();" data-bs-toggle="modal" data-bs-target="#addIdea"style="margin-top: 17px; width: 62%; color: white !important; background-color: orange !important;"><i data-feather='box'></i> Submit New Idea</button>
     <button class="btn col-md-12" style="margin-top: 17px; width: 22%;     background-color: #14e014 !important;color: white !important;"  onclick="exportBrainBox();"><i class="fa fa-download" aria-hidden="true"></i></button>
     </div>
  
  </div> -->
          
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
<div class="row match-height" >
<div class="col-lg-6 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
  <!-- 
     <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1">
              <select class="select2 form-select" id="select2-theme_filter-container" >
                <option value="">Select Theme</option>
              </select>
 				          </div>
          <h2 class="fw-bolder mt-1"></h2>  
    </div> -->
  <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1">
              <select class="select2 form-select" id="select2-status_filter-container" >
                <option value="">Select Status</option>
                <option value="">Open</option>
                <option value="">Approved</option>
                <option value="">Revoked</option>
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
    <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1">
              <input
            type="text"
            id="from_and_to"
             name="from_and_to"
            class="form-control flatpickr-range"
            placeholder="from and to"
          />
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
    <!--  <div class="row" style=" padding: 1rem;">
     
        <div class="col-md-6 mb-1">
          <input
            type="text"
            id="fp-range"
            class="form-control flatpickr-range"
            placeholder="from and to"
          />
      </div>
      </div> -->
</div>
<div class="col-lg-2 col-sm-2 col-12"  style="box-sizing:border-box; display:table;">
    <div class="col-lg-3 col-sm-3 col-6"  style="padding: .5rem;display:table-cell;">
     <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="getBrainBoxList('');"><i class="fa fa-search" aria-hidden="true"></i></button>
         <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="clearFilter();"><i class="fa fa-undo" aria-hidden="true"></i></button>
     </div>
</div>

     
</div> 
  <div class="row match-height" style=" display: flex;  justify-content: left ">
    <!-- Greetings Card starts -->

    <!-- Greetings Card ends -->
    <!-- Subscribers Chart Card starts -->

<div class="col-lg-3 col-sm-6 col-12">
      <div class="card">
        <div class="card-header">
          <div>
            <h3 class="fw-bolder mt-1">  <span id= "allIncidents"></span>
           </h3>
            <p class="card-text">Total Ideas Submitted</p>
          </div>
          <div class="avatar bg-light-primary p-50 m-0">
            <div class="avatar-content">
<i data-feather='layers'></i>               </div>
          </div>
        </div>
      </div>
    </div>
<div class="col-lg-3 col-sm-6 col-12">
      <div class="card">
        <div class="card-header">
          <div>
            <h3 class="fw-bolder mt-1"><span id= "activeApprovers"></span></h3>
            <p class="card-text">Ideas Evaluation</p>
          </div>
          <div class="avatar bg-light-warning p-50 m-0">
            <div class="avatar-content">
				<i class="fa-solid fa-spinner fa-spin-pulse" style="--fa-animation-duration: 5s;"></i>
		    </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-3 col-sm-6 col-12">
      <div class="card">
        <div class="card-header">
          <div>
            <h3 class="fw-bolder mt-1"><span id= "inActiveApprovers"></span></h3>
            <p class="card-text">Ideas Rejected</p>
          </div>
          <div class="avatar bg-light-danger p-50 m-0">
            <div class="avatar-content">
<i data-feather='zap-off'></i>               </div>
          </div>
        </div>
      </div>
    </div>
 <div class="col-lg-3 col-sm-6 col-12">
      <div class="card">
        <div class="card-header">
          <div>
            <h3 class="fw-bolder mt-1"><span id= "Resolved">0</span></h3>
            <p class="card-text">Ideas Implementation</p>
          </div>
          <div class="avatar bg-light-success p-50 m-0">
            <div class="avatar-content">
<i data-feather='bar-chart'></i>        </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Orders Chart Card ends -->
  </div>
  <!-- List DataTable -->
  <div>
  	
  </div>
    <div>
  	<div class="col-xl-12 col-lg-12">
      <div class="card">

        <div class="card-body">
        <ul class="nav nav-tabs nav-justified" id="myTab2" role="tablist">
            <li class="nav-item" onclick="getBrainBoxList('bb');">
              <span
                class="nav-link active"
                role="tab"
                id="theemeName"
                aria-controls="home-just"
                aria-selected="true"
               >.........</span
              >
            </li>
            </ul>
<%--           <ul class="nav nav-tabs nav-justified" id="myTab2" role="tablist">
           <c:if test="${sessionScope.BASE_ROLE eq 'Admin' || sessionScope.BASE_ROLE eq 'Management' }">
            <li class="nav-item" onclick="getBrainBoxList('bb');">
              <a
                class="nav-link active"
                id="home-tab-justified"
                data-bs-toggle="tab"
                href="#home-just"
                role="tab"
                aria-controls="home-just"
                aria-selected="true"
               >My Idea</a
              >
            </li>
           </c:if>
         <c:if test="${sessionScope.BASE_ROLE ne 'User' }">
             <li class="nav-item"  onclick="getBrainBoxList('bb-pending');">
              <a
                class="nav-link"
                id="profile-tab-justified"
                data-bs-toggle="tab"
                href="#profile-just"
                role="tab"
                aria-controls="profile-just"
                aria-selected="true"
                 >Pending Ideas <button type="button" class="btn btn-icon btn-icon rounded-circle btn-danger waves-effect waves-float waves-light">
<i class='fa-solid fa-shake' style="margin-right: 0.0rem;"><span id="counts" style="font-style: initial;">0</span></i></button></a
              >
            </li>
            </c:if>
              <c:if test="${sessionScope.BASE_ROLE ne 'User' }">
            <li class="nav-item"  onclick="getBrainBoxList('bb-completed');">
              <a
                class="nav-link"
                id="messages-tab-justified"
                data-bs-toggle="tab"
                href="#messages-just"
                role="tab"
                aria-controls="messages-just"
                aria-selected="false"
                >Approved Ideas</a
              >
            </li>
              </c:if>
            <c:if test="${sessionScope.BASE_ROLE eq 'Admin' }">
            <li class="nav-item" onclick="getBrainBoxList('bb-no-reviewer');">
              <a
                class="nav-link"
                id="settings-tab-norevirwer"
                data-bs-toggle="tab"
                href="#settings-just"
                role="tab"
                aria-controls="settings-just"
                aria-selected="false"
                >No Reviewer Found</a
              >
            </li>
               </c:if>
            <li class="nav-item" onclick="getBrainBoxList('bb');">
              <a
                class="nav-link"
                id="settings-tab-justified"
                data-bs-toggle="tab"
                href="#settings-just-all"
                role="tab"
                aria-controls="settings-just"
                aria-selected="false"
                >Existing Ideas</a
              >
            </li>
          </ul> --%>

          <!-- Tab panes -->
          <div class="tab-content pt-1">
            <div class="tab-pane active" id="home-just" role="tabpanel" aria-labelledby="home-tab-justified">
             <div class="card-datatable table-responsive">
		       <div class="dt-buttons text-primary" style="height : 1.5em;">
		      
		        </div>
		          <table id="datatable-bb" class="invoice-list-table table" style="width: 100%; font-size:90%">
		            <thead>
		              <tr>
		                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>Role</th>
                <th>Raised By</th>
                <th>Last Modified</th>
                <th>Status</th>
		              </tr>
		            </thead>
		          </table>
		        </div>
            </div>
           <!--  <div class="tab-pane" id="profile-just" role="tabpanel" aria-labelledby="profile-tab-justified" >
               <div class="card-datatable table-responsive">
		       <div class="dt-buttons" style="height : 1.5em;">
		        </div>
		          <table id="datatable-bb-pending" class="invoice-list-table table" style="width: 100%; font-size:90%">
		            <thead>
		              <tr>
		                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>Role</th>
                  <th>Raised By</th>
                <th>Last Modified</th>
                <th>Status</th>
		              </tr>
		            </thead>
		          </table>
		        </div>
            </div> -->
           <!--  <div class="tab-pane" id="messages-just" role="tabpanel" aria-labelledby="messages-tab-justified">
              <div class="card-datatable table-responsive">
		       <div class="dt-buttons text-primary" style="height : 1.5em;">
		      
		        </div>
		          <table id="datatable-bb-completed" class="invoice-list-table table" style="width: 100%; font-size:90%">
		            <thead>
		              <tr>
		                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>Role</th>
                 <th>Raised By</th>
                <th>Last Modified</th>
                <th>Status</th>
		              </tr>
		            </thead>
		          </table>
		        </div>
            </div> -->

	    <!--  <div class="tab-pane" id="settings-just" role="tabpanel" aria-labelledby="settings-tab-norevirwer">
             <div class="card-datatable table-responsive">
		        <div class="dt-buttons text-primary" style="height : 1.5em;">
		      
		        </div>
		          <table id="datatable-bb-no-reviewer" class="invoice-list-table table" style="width: 100%; font-size:90%">
		            <thead>
		              <tr>
		                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>SBU</th>
                <th>Project</th>
                <th>Department</th>
                <th>Status</th>
		              </tr>
		            </thead>
		          </table>
		        </div>
            </div>
             -->
            <div class="tab-pane" id="settings-just-all" role="tabpanel" aria-labelledby="settings-tab-justified">
             <div class="card-datatable table-responsive">
		        <div class="dt-buttons text-primary" style="height : 1.5em;">
		      
		        </div>
		          <table id="datatable-bb" class="invoice-list-table table" style="width: 100%; font-size:90%">
		            <thead>
		              <tr>
		                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>Role</th>
                 <th>Raised By</th>
                <th>Last Modified</th>
                <th>Status</th>
		              </tr>
		            </thead>
		          </table>
		        </div>
            </div>
            
            
          </div>
        </div>
      </div>
    </div>
    <!-- Justified Tabs ends -->
  </div>
<!--   <div class="row">
  
    <div class="col-12">
    
      <div class="card invoice-list-wrapper">
        <div class="card-datatable table-responsive">
       <div class="dt-buttons" style="height : 0.5em;">
      
        </div>
          <table id="datatable-bb" class="invoice-list-table table" style="width: 100%; font-size:90%">
            <thead>
              <tr>
                <th>#</th>
                <th>Action</th>
                <th>Submission<br>Date</th>
                 <th>Theme </th>
                <th class="text-truncate">Title</th>
                 <th>SBU</th>
                <th>Project</th>
                <th>Department</th>
                <th>Status</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div> -->
  <!--/ List DataTable -->

  <div class="modal fade" id="historyIRM" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content" style=" left: 8%;">
      <div class="modal-header bg-transparent"><span id="documentCode"> </span> <span id="createdDate"> </span> 
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
     <div class="row" id="basic-table">
  <div class="col-12">
    <div class="card">

      <div class="table-responsive">
        <table class="invoice-list-table table" style="width: 100%; font-size:90%"  id="historyBody">
          <thead>
            <tr>
              <th>Status</th>
              <th>Reviewer  Type</th>
              <th>Assigned Date</th>
              <th>Action Taken on</th>
              <th>Send Back Notes</th>
            </tr>
          </thead>
          <tbody>
   
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
    </div>
  </div>
</div>

<div class="modal fade" id="addIdea" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content" id="bgimage">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center">
          <h1 class="mb-1 alert alert-danger">Submit Your Idea <i class="fa-solid fa-lightbulb"></i></h1>
        </div>
        <form id="addIdeaForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-idea" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
        	<!--  <div class="alert " role="alert">
              <div class="alert-body fw-normal">
              <div class="pull-left">
                   <h6 ><span id="incidentValue">Reviewer : </span><span id="approverForIncident" style="color: orange;">No Reviewer Assigned</span> </h6>
              </div>
              </div>
            </div> -->
             <input type="hidden" id="project_code" name="project_code" value="${sessionScope.BASE_PROJECT_CODE }"/>
             <input type="hidden" id="department_code" name="department_code" value="${sessionScope.BASE_DEPARTMENT }"/>
             <input type="hidden" id="sbu_code" name="sbu_code" value="${sessionScope.BASE_SBU }"/>
             <input type="hidden" id="approver_code" name="approver_code" />
           <input type="hidden" id="approver_type" name="approver_type" /> 
            <input type="hidden" id="email_id" name="email_id" />
             <input type="hidden" id="approver_name" name="approver_name" />
             <input type="hidden" id="incident_name" name="incident_name" />
        <div class="col-12 col-md-12">
            <label class="form-label" for="modalEditUserFirstName"> Idea in Short</label><span class="required"> *</span>
            <input
              type="text"
              id="title_add"
              name="title"
              class="form-control"
              placeholder="Idea in Short"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="title_addError" class="error-msg" ></span>
          </div> 
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Idea in Detail</label>
    		 <div class="row">
		    <div class="col-12">
		          <div class="row">
		            <div class="col-12">
		              <div class="mb-1">
		                <textarea
		                  class="form-control"
		                  id="description_add"
		                  name="description"
		                  rows="3"
		                  placeholder="Idea Description"
		                ></textarea>
		              </div>
		            </div>
		   
		      </div>
		    </div>
		  </div>
             <span id="description_addError" class="error-msg" ></span>
          </div>
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Select Idea Theme</label><span class="required"> *</span>
    		   <select 
              id="select2-theme_add-container"
              name="theme"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="roleMapping('Evaluator');"
            >
              <option value="">Select Idea Theme</option>
             <c:forEach var="obj" items="${themeList}">
					<option value="${obj.theme_code }" >[${obj.theme_code }] - ${obj.theme_name }</option>
				</c:forEach>
            </select>
             <span id="select2-theme_add-containerError" class="error-msg" ></span>
          </div>
          
         <%--  <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-sbu_code_add-container"
              name="sbu_code"
              class="select2 form-select formSelect" disabled
              aria-label="Default select example" 
            >
              <option value="">Select SBU</option>
             	<c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }" <c:if test="${sessionScope.BASE_SBU eq obj.sbu_code }"> selected</c:if> >[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
            <span id="select2-sbu_code_add-containerError" class="error-msg" ></span>
          </div> --%>
		<%-- <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-project_add-container"
             
              class="select2 form-select formSelect"
              aria-label="Default select example" disabled
            >
              <option value="">Select Project</option>
             	<c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }" <c:if test="${sessionScope.BASE_PROJECT_CODE eq obj.project_code }"> selected</c:if> >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach>
            </select>
             <span id="select2-project_add-containerError" class="error-msg" ></span>
          </div> --%>
          <%-- <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-department_code_add-container"
              
              class="select2 form-select formSelect"
              aria-label="Default select example" disabled
            >
              <option value="">Select Department</option>
             	<c:forEach var="obj" items="${deptsList}">
					<option value="${obj.department_code }" <c:if test="${sessionScope.BASE_DEPARTMENT eq obj.department_code }"> selected</c:if> >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach>
            </select>
             <span id="select2-department_code_add-containerError" class="error-msg" ></span>
          </div> --%>
            
              <div class="col-12 col-md-12" > 
              <label class="form-label" for="select2-basic">Upload Files (optional)</label>
               <div class="mb-1">
                <div class="control-group" id="fields">
	                     
	                           <div class="controls">
	                               <div class="entry input-group upload-input-group">
	                                   <input class="form-control" id="files${index.count }" name="mediaList" type="file" placeholder="choose relevent file">
	                                   <button class="btn btn-upload btn-success btn-add" type="button">
	                                       <i class="fa fa-plus"></i>
	                                   </button>
	                               </div>
	                           </div>
	                       </div>  
	                </div>
              </div>
               <div class="col-12 col-md-12" > 
               
               <div class="demo-inline-spacing">
               <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label btn-flat-success " for="customSwitch1"></label>
		            </div>
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label btn-flat-success " for="customSwitch1"></label>
		            </div>
		            
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <label class="form-check-label badge bg-success " id="lableSuccess" for="customSwitch1">Public</label>
		            </div>
		            <div class="mb-1 form-check form-switch form-check-secondary">
		              <input type="checkbox" class="form-check-input" name="is_anonymous"  id="customSwitch11">
		              <label class="form-check-label" for="customSwitch11">
                  <span class="switch-icon-left"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg></span>
                  <span class="switch-icon-right"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></span>
                </label>
		              <label class="form-check-label badge badge-light-dark" id="lableDark" for="customSwitch2">Submit Idea Anonymously</label>
		            </div>
		          </div>
          <!-- 
          
                <div class=" mb-1 form-check form-switch form-check-secondary" id="switch_case"><label class="form-label badge badge-light-dark" for="select2-basic">Submit Idea as Anonymous <i class="fa fa-user-secret" aria-hidden="true"></i></label>
                <input type="checkbox" class="form-check-input" id="customSwitch11" value="false">
                <label class="form-check-label" for="customSwitch11">
                  <span class="switch-icon-left"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg></span>
                  <span class="switch-icon-right"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg></span>
                </label>
              </div> -->
              </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="button" class="btn btn-primary me-1" onclick="addIdea();">Submit</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
 																					<!--  model end -->
 	 			
  <div class="modal fade" id="historyRE" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content" style=" left: 8%;">
      <div class="modal-header bg-transparent">${sessionScope.USER_NAME} - Rewards History - You have <b> &nbsp;${reward_points } Rewards!</b>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
     <div class="row" id="basic-table">
  <div class="col-12">
    <div class="card">

     
      <div class="table-responsive">
        <table class="table"  id="historyBody2">
          <thead>
            <tr>
             	<th>#</th>
              <th>Rewards</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach var="obj" items="${rewardsList}" varStatus="index">
			<tr>
				<td>${index.count }</td>
              <td>${obj.reward_points }</td>
              <td>${obj.action }<br>(${obj.created_date })</td>
            </tr>
				</c:forEach>
				<c:if test="${ empty rewardsList}"><tr> <td>No Rewards Found </td> </tr></c:if>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
    </div>
  </div>
</div>																				
 <%--  <div class="modal fade" id="updateBrainBox" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center mb-2">
          <h1 class="mb-1">Edit BrainBox </h1>
        </div>
        <form id="updateIdeaForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-idea" method="post" class="form-horizontal" role="form" >
        <input type="hidden" id="id" name="id" />
       <div class="col-12 col-md-12">
            <label class="form-label" for="modalEditUserFirstName"> Title</label><span class="required"> *</span>
            <input
              type="text"
              id="title_edit"
              name="title"
              class="form-control"
              placeholder="eg : Re Sustainablity"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="title_editError" class="error-msg" ></span>
          </div>
          
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Theme</label><span class="required"> *</span>
    		   <select 
              id="select2-theme_edit-container"
              name="theme"
              class="select2 form-select formSelect"
              aria-label="Default select example" 
            >
              <option value="">Select Theme</option>
             <c:forEach var="obj" items="${themeList}">
					<option value="${obj.theme_code }" >[${obj.theme_code }] - ${obj.theme_name }</option>
				</c:forEach>
            </select>
             <span id="select2-theme_edit-containerError" class="error-msg" ></span>
          </div>
          	<div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Description</label><span class="required"> *</span>
    		 <div class="row">
		    <div class="col-12">
		          <div class="row">
		            <div class="col-12">
		              <div class="mb-1">
		                <textarea
		                  class="form-control"
		                  id="description_edit"
		                  name="description"
		                  rows="3"
		                  placeholder="Description"
		                ></textarea>
		              </div>
		            </div>
		   
		      </div>
		    </div>
		  </div>
             <span id="select2-description_edit-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-sbu_code_edit-container"
              name="sbu_code"
              class="select2 form-select formSelect" disabled
              aria-label="Default select example" 
            >
              <option value="">Select SBU</option>
             	<c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }" <c:if test="${sessionScope.BASE_SBU eq obj.sbu_code }"> selected</c:if> >[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
            <span id="select2-sbu_code_edit-containerError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-project_edit-container"
              
              class="select2 form-select formSelect"
              aria-label="Default select example" disabled
            >
              <option value="">Select Project</option>
             	<c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }" <c:if test="${sessionScope.BASE_PROJECT_CODE eq obj.project_code }"> selected</c:if> >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach>
            </select>
             <span id="select2-project_edit-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-department_code_edit-container"
             
              class="select2 form-select formSelect"
              aria-label="Default select example" disabled
            >
              <option value="">Select Department</option>
             	<c:forEach var="obj" items="${deptsList}">
					<option value="${obj.department_code }" <c:if test="${sessionScope.BASE_DEPARTMENT eq obj.department_code }"> selected</c:if> >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach>
            </select>
             <span id="select2-department_code_edit-containerError" class="error-msg" ></span>
          </div>
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Status</label><span class="required"> *</span>
            <select 
              id="select2-status_code_edit-container"
              name="status"
              class="select2 form-select formSelect"
              aria-label="Default select example" 
            >
              <option value="">Select Status</option>
              		<option value="Open">Open</option>
					<option value="Approved">Approved</option>
					<option value="Rejected">Rejected</option>
            </select>
             <span id="select2-status_edit-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="submit" class="btn btn-primary me-1" onclick="updateIdea();">Update</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
  
        </form>
      </div>
    </div>
  </div>
</div> --%>
 										
</section>

											
 																					
 																					
 																					
<!-- Dashboard Analytics end -->

        </div>
      </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Customizer-->     <!--
    <div class="customizer d-none d-md-block"><a class="customizer-toggle d-flex align-items-center justify-content-center" href="#"><i class="spinner" data-feather="settings"></i></a><div class="customizer-content">
  <!-- Customizer header -->
  <!-- <div class="customizer-header px-2 pt-1 pb-0 position-relative">
    <h4 class="mb-0">Theme Customizer</h4>
    <p class="m-0">Customize & Preview in Real Time</p>

    <a class="customizer-close" href="#"><i data-feather="x"></i></a>
  </div>

  <hr />

  <!-- Styling & Text Direction -->
  <!-- <div class="customizer-styling-direction px-2">
    <p class="fw-bold">Skin</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinlight"
          name="skinradio"
          class="form-check-input layout-name"
          checked
          data-layout=""
        />
        <label class="form-check-label" for="skinlight">Light</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinbordered"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="bordered-layout"
        />
        <label class="form-check-label" for="skinbordered">Bordered</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skindark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="dark-layout"
        />
        <label class="form-check-label" for="skindark">Dark</label>
      </div>
      <div class="form-check">
        <input
          type="radio"
          id="skinsemidark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="semi-dark-layout"
        />
        <label class="form-check-label" for="skinsemidark">Semi Dark</label>
      </div>
    </div>
  </div>

  <hr />

  <!-- Menu --> <!--
  <div class="customizer-menu px-2">
    <div id="customizer-menu-collapsible" class="d-flex">
      <p class="fw-bold me-auto m-0">Menu Collapsed</p>
      <div class="form-check form-check-primary form-switch">
        <input type="checkbox" class="form-check-input" id="collapse-sidebar-switch" />
        <label class="form-check-label" for="collapse-sidebar-switch"></label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Layout Width --> <!--
  <div class="customizer-footer px-2">
    <p class="fw-bold">Layout Width</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="layout-width-full" name="layoutWidth" class="form-check-input" checked />
        <label class="form-check-label" for="layout-width-full">Full Width</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="layout-width-boxed" name="layoutWidth" class="form-check-input" />
        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
      </div>
    </div>
  </div>
  <hr />

  <!-- Navbar --> <!-- 
  <div class="customizer-navbar px-2">
    <div id="customizer-navbar-colors">
      <p class="fw-bold">Navbar Color</p>
      <ul class="list-inline unstyled-list">
        <li class="color-box bg-white border selected" data-navbar-default=""></li>
        <li class="color-box bg-primary" data-navbar-color="bg-primary"></li>
        <li class="color-box bg-secondary" data-navbar-color="bg-secondary"></li>
        <li class="color-box bg-success" data-navbar-color="bg-success"></li>
        <li class="color-box bg-danger" data-navbar-color="bg-danger"></li>
        <li class="color-box bg-info" data-navbar-color="bg-info"></li>
        <li class="color-box bg-warning" data-navbar-color="bg-warning"></li>
        <li class="color-box bg-dark" data-navbar-color="bg-dark"></li>
      </ul>
    </div>

    <p class="navbar-type-text fw-bold">Navbar Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="nav-type-floating" name="navType" class="form-check-input" checked />
        <label class="form-check-label" for="nav-type-floating">Floating</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-sticky" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-static" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-static">Static</label>
      </div>
      <div class="form-check">
        <input type="radio" id="nav-type-hidden" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Footer --> <!-- 
  <div class="customizer-footer px-2">
    <p class="fw-bold">Footer Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="footer-type-sticky" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-static" name="footerType" class="form-check-input" checked />
        <label class="form-check-label" for="footer-type-static">Static</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-hidden" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
</div>

    </div>
    --> <!-- End: Customizer-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

 
    <!-- BEGIN: Vendor JS-->
    <script src="/brainbox/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/brainbox/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/brainbox/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/brainbox/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/brainbox/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/brainbox/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/brainbox/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/brainbox/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/brainbox/resources/js/dataTables.material.min.js"  ></script>
      <script src="/brainbox/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/brainbox/resources/js/core/app-menu.min.js"></script>
    <script src="/brainbox/resources/js/core/app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/customizer.min.js"></script>
     <script src="/brainbox/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/brainbox/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/brainbox/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    
        <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
     <script src="/brainbox/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
    <!-- END: Page JS-->
    
  <form action="<%=request.getContextPath()%>/export-idea" name="exportBrainBoxForm" id="exportBrainBoxForm" target="_blank" method="post">	
      
        <input type="hidden" name=status id="exportBrainBox_filter" />
        <input type="hidden" name="theme" id="exportTheme_code_filter" />
         <input type="hidden" name="from_date" id="exportFrom_filter" />
        <input type="hidden" name="from_and_to" id="exportTo_filter" />
	</form>
	
	  <form action="<%=request.getContextPath()%>/get-bb-bank" name="updateIRM" id="updateIRM" method="post">	
      
        <input type="hidden" name=idea_no id="document_codeUpdate" />
        <input type="hidden" name=approver_type id="approver_typeUpdate" />
        <input type="hidden" name=status id="statusUpdate" />
        <input type="hidden" name=approver_code id="approver_codeUpdate" />
        <input type="hidden" name=sendBack id="sendBack" />
         <input type="hidden" name=theme id="theme1" />
	</form>
	 <form action="<%=request.getContextPath()%>/bb-sbu" name="getIRM" id="getIRM" method="post">	
      
         <input type="hidden" name=theme id="theme" />
        
	</form>
    <script>
    $('#addIdea').on('show.bs.modal', function (event) {
        $(document).ready(function() {
            $('.select2').select2({
                dropdownParent: $('#addIdea')
            });
        }); 
    });
      $(window).on("load",(function(){
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
          getBrainBoxList('');
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      var tag1;
	    function getBrainBox(idea_no,theme,description,status,title){
	    	$('#document_codeUpdate').val($.trim(idea_no));
	    	$('#approver_typeUpdate').val($.trim(approver_type));
	    	$('#statusUpdate').val($.trim(status));
	    	$('#approver_codeUpdate').val($.trim(approver_code));
	    	 $("#updateIRM ").submit();
	    	
	    	
		/* 	 $('select[name^="theme"] option:selected').removeAttr("selected");
			 $('select[name^="status"] option:selected').removeAttr("selected");
		      $('#id').val($.trim(id));
		      $('#updateBrainBox').modal('show');
		      $('#updateBrainBox #title_edit').val($.trim(title)).focus();
		      $('#updateBrainBox #description_edit').val($.trim(description)).focus();
		      if(theme != null && theme != ''  && theme != "undefined"){
		    	  $('select[name^="theme"] option[value="'+ theme +'"]').attr("selected",true);
		    	  $('select[name^="status"] option[value="'+ status +'"]').attr("selected",true);
		    	  $('select').select2();
		      }  */
	   }
	    function historyRE(document_code,approver_type,status,approver_code){
	       	  $('#historyRE').modal('show');
	      }
      
	    function exportBrainBox(){
	         var theme = '${theme}';
	         var status = $("#select2-status_filter-container").val();
	         var from_date = $("#from_date").val();
		     var from_and_to = $("#from_and_to").val();
		     
	    	 $("#exportBrainBox_filter").val(status);
	     	 $("#exportTheme_code_filter").val(theme);
	     	 $("#exportFrom_filter").val(from_date);
	     	 $("#exportTo_filter").val(from_and_to);
	     	 $("#exportBrainBoxForm ").submit();
	  	}
	    
      function clearFilter(){
    	  		var theme = '${theme}';
    	  		 $('#theme').val($.trim(theme));
    	    	
		    	$("#select2-status_filter-container").val("");
		    	$("#from_date").val("");
			    $("#from_and_to").val("");
			    $("#getIRM ").submit();
	    }

      function getThemeFilterList() {
	        var theme = '${theme}';
	        var status = $("#select2-status_filter-container").val();
	        var from_date = $("#from_date").val();
	        var from_and_to = $("#from_and_to").val();
	        admin_incidents = '';
	    	 i_pending = '';
	    	 i_completed = '';
	    	 i_no_reviewer = ''
	    	if(tag1== 'bb'){
	    		admin_incidents = '${sessionScope.USER_ID}';
	    	}else if(tag1 == 'bb-pending'){
	    		i_pending = 'In Progress';
	    	}else if(tag1 == 'bb-completed'){
	    		i_completed = 'Resolved' 
	    	}else if(tag1 == 'bb-no-reviewer'){
	    		i_no_reviewer = 'null'
	    	}
	        if ($.trim(theme) == "") {
	        	$("#select2-theme_filter-container option:not(:first)").remove();
	        	var myParams = {theme: theme, status : status, from_date : from_date, from_and_to :from_and_to
						,admin_incidents : admin_incidents, i_pending : i_pending,i_completed : i_completed};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getThemeFilterListInBB",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-theme_filter-container").append('<option value="' + val.theme_code + '">' + "[ "+$.trim(val.theme_code) +" ]"+" - " + $.trim(val.theme_name)  +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

      function getStatusFilterList() {
    	  var theme = '';
	        var status = $("#select2-status_filter-container").val();
	        var from_date = $("#from_date").val();
	        var from_and_to = $("#from_and_to").val();
	        admin_incidents = '';
	    	 i_pending = '';
	    	 i_completed = '';
	    	 i_no_reviewer = ''
	    	if(tag1== 'bb'){
	    		theme = '${theme}';
	    	}else if(tag1 == 'bb-pending'){
	    		i_pending = 'In Progress';
	    	}else if(tag1 == 'bb-completed'){
	    		i_completed = 'Resolved' 
	    	}else if(tag1 == 'bb-no-reviewer'){
	    		i_no_reviewer = 'null'
	    	}
	        if ($.trim(status) == "") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = {theme: theme, status : status, from_date : from_date, from_and_to :from_and_to
						,admin_incidents : admin_incidents, i_pending : i_pending,i_completed : i_completed};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getStatusFilterListInBB",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-status_filter-container").append('<option value="' + val.status + '">' + $.trim(val.status) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

	    function getBrainBoxList1(){
	    	getThemeFilterList('');
	    	getStatusFilterList('');
	        var theme = $("#select2-theme_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        var from_date = $("#from_date").val();
	        var from_and_to = $("#from_and_to").val();
	      
	    	$('#allIncidents').html(0)
    		$('#activeApprovers').html(0)
    		$('#inActiveApprovers').html(0)
    		$('#Resolved').html(0)
	     	table = $('#datatable-bb').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-bb').DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
	            columnDefs: [],
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
					}
	        }).rows().remove().draw();
			table.state.clear();		
		 	var myParams = {theme: theme, status : status, from_date : from_date, from_and_to :from_and_to};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getBBListSBU",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var bb_data = "'"+val.idea_no+"','"+val.theme_code+"','"+val.description+"','"+val.status+"','"+val.title+"'";
		                    var actions = '<a href="javascript:void(0);"  onclick="getBrainBox('+bb_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-eye"></i></a>';   
		         			var title = "<p font-size:50%>"+$.trim(val.title)+"<br>( "+$.trim(val.created_date)+" )</p>";
		                   	var rowArray = [];    
		                   	key++;
		                   	$('#allIncidents').html(val.all_themes)
		            		$('#activeApprovers').html(val.not_assigned)
		            		$('#inActiveApprovers').html(val.inActive_themes)
		            		$('#Resolved').html(val.active_themes)
		                   	rowArray.push($.trim(key));
		                	rowArray.push($.trim(actions));  
		                 	rowArray.push($.trim(title));
		                   	rowArray.push("["+ $.trim(val.theme_code)+"]"+" - "+val.theme_name);
		                	rowArray.push($.trim(val.description));
		                  	rowArray.push("["+ $.trim(val.sbu_code)+"]"+" - "+ val.sbu_name);
		                   	rowArray.push("["+ $.trim(val.project_code)+"]"+" - "+ val.project_name);
		                	rowArray.push("["+ $.trim(val.department_code)+"]"+" - "+ val.department_name);
		                	rowArray.push($.trim(val.status));  
		           
		                   
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
	    } 

	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.theme === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.theme == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.theme == 500) {
	  	        msg = 'Internal Server Error [500].';
	  	    } else if (exception === 'parsererror') {
	  	        msg = 'Requested JSON parse failed.';
	  	    } else if (exception === 'timeout') {
	  	        msg = 'Time out error.';
	  	    } else if (exception === 'abort') {
	  	        msg = 'Ajax request aborted.';
	  	    } else {
	  	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
	  	    }
	  	    console.log(msg);
        }

	    function addIdea(){
	    	if(validator.form()){ // validation perform
	    		 $('.formSelect').prop("disabled", false);
	    		 $('#addIdea').modal('hide');
	        	document.getElementById("addIdeaForm").submit();	
	    	}
	    }
	    function updateIdea(){
	    	if(validator1.form()){ // validation perform
	    		 $('.formSelect').prop("disabled", false);
	        	document.getElementById("updateIdeaForm").submit();	
	    	}
	    }
	    
	    var validator =	$('#addIdeaForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "title": {
		   			 			required: true
		   			 	  },"theme": {										 
		   			 			required: true
		   			 	  },"description": {
		   	                 	required: false,
		   			 	  }
		   		 	},
		   		    messages: {
		   		 		 "title": {
		   				 	required: 'Required',
		   			 	  },"theme": {
		   			 		required: 'Required'
		   			 	  },"description": {
		   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "title_add" ){
		   				 document.getElementById("title_addError").innerHTML="";
		   		 		 error.appendTo('#title_addError');
		   			}else if(element.attr("id") == "select2-theme_add-container" ){
		   			   document.getElementById("select2-theme_add-containerError").innerHTML="";
		   		 	   error.appendTo('#select2-theme_add-containerError');
		   			}else if(element.attr("id") == "description_add" ){
		   				document.getElementById("description_addError").innerHTML="";
		   			 	error.appendTo('#description_addError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});
	    
	    var validator1 =	$('#updateIdeaForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "title": {
		   			 			required: true
		   			 	  },"theme": {										 
		   			 			required: true
		   			 	  },"description": {
		   	                 	required: true,
		   			 	  }
		   		 	},
		   		    messages: {
		   		 		 "title": {
		   				 	required: 'Required',
		   			 	  },"theme": {
		   			 		required: 'Required'
		   			 	  },"description": {
		   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "title_edit" ){
		   				 document.getElementById("title_editError").innerHTML="";
		   		 		 error.appendTo('#title_editError');
		   			}else if(element.attr("id") == "select2-theme_edit-container" ){
		   			   document.getElementById("select2-theme_edit-containerError").innerHTML="";
		   		 	   error.appendTo('#select2-theme_edit-containerError');
		   			}else if(element.attr("id") == "description_edit" ){
		   				document.getElementById("description_editError").innerHTML="";
		   			 	error.appendTo('#description_editError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});
	    
		$('.formSelect').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	$('input').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
		function addBox(){
	   		$('select[name^="theme"] option:selected').removeAttr("selected");
	   		$('form-select').select2();
	   	}
		
	    

        $(function () {
            $(document).on('click', '.btn-add', function (e) {
                e.preventDefault();

                var controlForm = $('.controls:first'),
                    currentEntry = $(this).parents('.entry:first'),
                    newEntry = $(currentEntry.clone()).appendTo(controlForm);

                newEntry.find('input').val('');
                controlForm.find('.entry:not(:last) .btn-add')
                    .removeClass('btn-add').addClass('btn-remove')
                    .removeClass('btn-success').addClass('btn-danger')
                    .html('<span class="fa fa-trash"></span>');
            }).on('click', '.btn-remove', function (e) {
                $(this).parents('.entry:first').remove();

                e.preventDefault();
                return false;
            });
        });


	    function roleMapping(role){
	    	//$("#approverForIncident").html('No Reviewer Assigned').css("color", "orange");
	    
	        if ($.trim(role) != "") {
	        	var myParams = { role_code: role};
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getRoleMappingforBBForm",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                        	if($.trim(val.user_name) != ''){
	                        		//$("#approverForIncident").html(val.user_name).css("color", "#05f305").append('&nbsp; <i class="fa fa-check" aria-hidden="true"></i>');
	                        		$("#approver_code").val(val.user_id);
	                        		$("#approver_type").val(val.role_code);
	                        		$("#email_id").val(val.email_id);
	                        		$("#approver_name").val(val.user_name);
	                        	}else{
	                        		 $("#approver_code").val(null);
	                        		 $("#approver_type").val("No Reviewer Assigned");
	                        		// $("#approverForIncident").html('No Reviewer Found').css("color", "red");
	                        	}
	                        });
	                    }else{
	                    	 // $("#approverForIncident").html('No Reviewer Found').css("color", "red");
	                    	  $("#approver_code").val(null);
                      		  $("#approver_type").val(null);
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    	
	    }
	    
	    function historyIRM(idea_no,approver_type,status,approver_code){
	     	  $('#historyIRM').modal('show');
	     	  $('#documentCode').html("#"+idea_no+" - Idea Flow History ")
	        table = $('#historyBody').DataTable();
	  			table.destroy();
	  			$.fn.dataTable.moment('DD-MMM-YYYY');
	  			table = $('#historyBody').DataTable({
	  				"bStateSave": true,  
	  	     		fixedHeader: true,
	  	         	//Default: Page display length
	  					"iDisplayLength" : 10,
	  					"iData" : {
	  						"start" : 52
	  					},"iDisplayStart" : 0,
	  					"drawCallback" : function() {
	  					},
	  	            columnDefs: [],
	  	            // "ScrollX": true,
	  	            //"scrollCollapse": true,
	  	            "sScrollX": "100%",
	  	            "sScrollXInner": "100%",
	  	            "bScrollCollapse": true,
	  	            "initComplete" : function() {
	  					}
	  	        }).rows().remove().draw();
	  			table.state.clear();		
	  		 	var myParams = {idea_no: idea_no};
	  			$.ajax({url : "<%=request.getContextPath()%>/ajax/getBBHistoryList",type:"POST",data:myParams,success : function(data){    				
	  					if(data != null && data != '' && data.length > 0){ 
	  						sNo = (data.length - 1);
	  		         		$.each(data,function(key,val){
	  							var approver =  "<p style='color : red; font-size: 12px;'  title='No Reviewer Assigned'><b>No Reviewer Assigned</b></p>";
	  		         			
	  		         			var status = '<p class="badge rounded-pill badge-light-warning me-0" title="Reviewed">'+$.trim(val.status)+'</p>';
	  		         			if($.trim(val.status) == "Reviewed" && key == 0){
	  		         				status = '<p class="badge rounded-pill badge-light-success me-0" title="Reviewed"><i class="fas fa-dot-circle"></i></p>'; 
	  		         			}else if($.trim(val.status) == "Reviewed" && key != sNo){
	  		         				status = '<p class="badge rounded-pill badge-light-success me-0" title="Reviewed"><i class="fa fa-arrow-up " ></i></p>'; 
	  		         			}else if($.trim(val.status) == "In Progress"){
	  		         				status = '<p class="badge rounded-pill badge-light-warning me-0" title="In Progress"><i class="fa fa-spinner fa-spin"></i></p>';
	  		         			}else if($.trim(val.status) == "Sent Back"){
	  		         				status = '<p class="badge rounded-pill badge-light-danger me-0" title="Sent Back"><i class="fas fa-level-down-alt" ></i></p>';
	  		         			}else if($.trim(val.status) == "Send Back"){
	  		         				status = '<p class="badge rounded-pill badge-light-warning me-0" title="Recieved"><i class="fa fa-arrow-up " ></i></p>';
	  		         			}else if($.trim(val.status) == "Rejected"){
	  		         				status = '<p class="badge rounded-pill badge-light-danger me-0" title="Rejected"><i class="fa fa-ban" aria-hidden="true"></i></p>';
	  		         			}
	  		         			
	  		         			var incident_no = "<p font-size:50%>"+$.trim(val.idea_no)+"<br>&nbsp;&nbsp;&nbsp;&nbsp;( "+$.trim(val.created_date)+" )</p>";
	  		         			if($.trim(val.approver_code) != ''){
	  		         				approver = 'Committee';
	  		         				if(val.user_name == null){
	  		         					approver = 'Evaluator';
	  		         				}
	  		         				//approver = "["+ $.trim(val.approver_code)+"]"+" - "+ val.user_name;
	  		         			}else{
	  		         				/* status =  "<p style='color : red; font-size: 12px;' title='No Reviewer Assigned'><b>No Reviewer Assigned</b></p>"; */
	  		         				status =  "";
	  		         			}
	  		                   	var rowArray = [];    
	  		                   	key++;
	  		                   	var date = val.action_taken;
	  		                   	if(date == '' || date == null){
	  		                   		date = val.sb_date
	  		                   	}
	  		                   	var appvr = val.approver_type;
	  		                   	if(key == data.length ){
	  		                   		status = '<p class="badge rounded-pill badge-light-dark me-0" title="Incident Created"><i class="fa fa-arrow-up " ></i></p>';
	  		                   		appvr = "";
	  		                   	}
	  		                   	
	  		                   	rowArray.push($.trim(status));
	  		                	rowArray.push(appvr);
	  		                	//rowArray.push($.trim(approver));
	  		                	rowArray.push($.trim(val.assigned_on));
	  		                	rowArray.push($.trim(date));
	  		                	rowArray.push($.trim(val.sb_notes));
	  		                   
	  		                    table.row.add(rowArray).draw( true );  //.order([data.length, 'desc'])
	  						});
	  					}
	  				},error: function (jqXHR, exception) {
	  		         	getErrorMessage(jqXHR, exception);
	  		     }});
	        	}
	  
	    function getBrainBoxList(tag){
	    	if(tag == ''){
	    		tag = 'bb'
	    	}
	    	 var theme = '';
	    	$('#counts').html('${counts}')
	    	tag1 = tag;
	    	 admin_incidents = '';
	    	 i_pending = '';
	    	 i_completed = '';
	    	 i_no_reviewer = ''
	    	if(tag== 'bb'){
	    		theme = '${theme}';
	    	}else if(tag == 'bb-pending'){
	    		i_pending = 'In Progress';
	    	}else if(tag == 'bb-completed'){
	    		i_completed = 'Resolved' 
	    	}else if(tag == 'bb-no-reviewer'){
	    		i_no_reviewer = 'null'
	    	}
	    	$(".page-loader").show();
	    	getThemeFilterList('');
	    	getStatusFilterList('');
	        var status = $("#select2-status_filter-container").val();
	        var from_date = $("#from_date").val();
	        var from_and_to = $("#from_and_to").val();
	    	$('#allIncidents').html(0)
    		$('#activeApprovers').html(0)
    		$('#inActiveApprovers').html(0)
    		$('#Resolved').html(0)
	     	table = $('#datatable-'+tag).DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-'+tag).DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
	            columnDefs: [],
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
					}
	        }).rows().remove().draw();
			table.state.clear();		
			var myParams = {theme: theme, status : status, from_date : from_date, from_and_to :from_and_to
					,admin_incidents : admin_incidents, i_pending : i_pending,i_completed : i_completed};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getBBListSBU",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var irm_data = "'"+val.idea_no+"','"+val.approver_type+"','"+val.status+"','"+val.approver_code+"','"+val.theme_code+"'";
		         			var irm_initiate_data = "'"+val.idea_no+"','"+val.project_code+"','"+val.incident_code+"'";
		         			 if(('${sessionScope.BASE_ROLE}' != 'User' && '${sessionScope.BASE_ROLE}' != 'Management' 
		         					 && $.trim(val.status) != 'Resolved' && $.trim(val.status) != 'Rejected') || '${sessionScope.USER_ID}'.indexOf($.trim(val.committee_members)) != -1 ){
	                    		 var text = ' <a href="javascript:void(0);" onclick="getIdea('+irm_data+');" title="Edit" class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>'
	                    	 }else if('${sessionScope.BASE_ROLE}' != 'User' && '${sessionScope.BASE_ROLE}' != 'Management' && ($.trim(val.status) == 'Resolved' ||$.trim(val.status) == 'Rejected' )){
		                    		var text = ' <a  href="javascript:void(0);" onclick="getIdea('+irm_data+');" title="View"  class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>'
	                    	 }else{
 	                    		var text = ' <a  href="javascript:void(0);" onclick="getIdea('+irm_data+');" title="View"  class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>'
                    	     }
		                    var actions = ' <div class="col-lg-6 col-12">'
		                    	 +' <div class="btn-group" role="group" aria-label="Basic example">'+text
		                    	
		                    +'  <a href="javascript:void(0);" onclick="historyIRM('+irm_data+');" title="History" class="btn btn-outline-primary"><i class="fa fa-history"></i></a>'
		                    +' </div>';
		         			var title = "<p font-size:50% style=' text-align: center;'><span class='badge bg-dark' >#"+$.trim(val.idea_no)+"</span><br><span style='font-size: .8rem;'><b>( "+$.trim(val.created_date)+" )</b></span></p>";

		                    if('${sessionScope.BASE_ROLE}' == 'Admin' && tag == 'bb-no-reviewer'){
		                    	$('#document_id').val($.trim(val.idea_no));
		                    	$('#project').val($.trim(val.project_code));
		                    	$('#department_code').val($.trim(val.department_code));
		                    	$('#projectDetails').html("["+ $.trim(val.project_code)+"]"+" - "+ val.project_name);
		                    	$('#deptDetails').html("["+ $.trim(val.department_code)+"]"+" - "+ val.department_name);
		                    	empFilter(val.project_code);
		                    	//filterRoles_add(val.project_code,val.department_code);
		                    	$('#document_id2').html($.trim(val.idea_no));
		                    	actions = ' <div class="col-lg-6 col-12">'
			                    	 +' <div class="btn-group" role="group" aria-label="Basic example"><a href="javascript:void(0);" onclick="getIdea('+irm_data+');" title="Edit" class="btn btn-outline-primary"><i class="fa fa-eye"></i></a>'
			                    +'  <a href="javascript:void(0);" onclick="InitiateIRM('+irm_initiate_data+');" title="Re-Initiate" class="btn btn-outline-primary"><i class="fa fa-repeat"></i></a>'
			                    +'  <a href="javascript:void(0);" onclick="historyIRM('+irm_data+');" title="History" class="btn btn-outline-primary"><i class="fa fa-history"></i></a>'
			                    +' </div>';
		                    }
		                    
							var approver =  "<p style='color : red; font-size: 12px;'><b>No Reviewer  Assigned</b></p>";
		         			if($.trim(val.approver_code) != ''){
		         				approver = "["+ $.trim(val.approver_code)+"]"+" - "+ val.approver_name;
		         			}
		         			var incident_no = "<p font-size:50%>"+$.trim(val.idea_no)+"<br> ( "+$.trim(val.created_date)+" )</p>";
		         			var status = '<span class="badge rounded-pill badge-light-warning me-1" style=" text-align: center;font-size: .9rem;">'+$.trim(val.status)+'</span>';
		         			if($.trim(val.status) != "In Progress"){status = '<span class="badge rounded-pill badge-light-success me-1" style=" text-align: center;font-size: .9rem;">'+$.trim(val.status)+'</span>';}
		         			var type = '<p class="text-primary"> '+$.trim(val.approver_type)+"</p>";
		                   	var rowArray = [];    
		                   	var maxRole =  $.trim(val.maxRole)
		                   	var maxRole2 =  $.trim(val.maxRole2);
		                   	if( $.trim(val.status) == 'Resolved'){
		                   		maxRole2 = '<span class="badge rounded-pill badge-light-success me-1">Committee</span>';
		                    }
		                    if($.trim(maxRole2) == 'Committee' &&  $.trim(val.status) != 'Resolved'){
		                    	maxRole2 = '<span class="badge rounded-pill badge-light-warning me-1">Committee</span>';
		                    	status = '<span class="badge rounded-pill badge-light-warning me-1" style=" text-align: center;font-size: .9rem;">Committee Evaluation <br> In progress</span>';
		                    }else if($.trim(maxRole2) == 'Evaluator' && $.trim(val.status) != 'Resolved'){
		                    	maxRole2 = '<span class="badge rounded-pill badge-light-warning me-1">Evaluator</span>';
		                    	status = '<span class="badge rounded-pill badge-light-warning me-1" style=" text-align: center;font-size: .9rem;">Evaluation<br>In progress</span>';

		                    }
		                    if(maxRole.indexOf('Back') != -1 && $.trim(val.status) != 'Resolved'){
		                    	status = '<span class="badge rounded-pill badge-light-danger me-1" style=" text-align: center;font-size: .9rem;">Sent Back<br>to Submitter</span>';
		                    }
		                    if( $.trim(val.status) == 'Resolved'){
		                    	status = '<span class="badge rounded-pill badge-light-success me-1" style=" text-align: center;font-size: .9rem;">Approved</span>';
		                    }
		                    if( $.trim(val.status) == 'Rejected'){
		                    	status = '<span class="badge rounded-pill badge-light-danger me-1" style=" text-align: center;font-size: .9rem;">Rejected</span>';
		                    }
		                    if($.trim(val.approver_code) != ''){
		         				approver = "["+ $.trim(val.approver_code)+"]"+" - "+ val.approver_name;
		         			}else{
		         				status = approver;
		         			}
		                    if( $.trim(val.status) == 'Resolved'){
		                    	type = maxRole;
		                    }
		                   	key++;
		                	$('#counts').html(val.counts)
		                    $('#allIncidents').html(val.all_themes)
		            		$('#activeApprovers').html(val.not_assigned)
		           
		            		$('#inActiveApprovers').html(val.inActive_themes)
		            		$('#Resolved').html(val.active_themes)
		            		var A_Taken = $.trim(val.action_taken);
		                	 if(A_Taken != ''){
			                  		A_Taken = "<span style='font-size: .8rem;'><b>( "+$.trim(A_Taken)+" )</b></span></p>";
			                  	 }else{
			                  		A_Taken = '' ;
			                  	 }
		                	//A_Taken = A_Taken.replace("<br>", "<br> <i class='fa-solid fa-clock fa-fade' style='--fa-animation-duration: 2s; --fa-fade-opacity: 0.6;' ></i>");
		                	
		                	/* var C_Date = $.trim(val.created_date);
		                	C_Date = C_Date.replace("<br>", "<br> <i class='fa-solid fa-clock fa-fade' style='--fa-animation-duration: 2s; --fa-fade-opacity: 0.6;' ></i>");
		                  	 */
		                  	 $('#theemeName').html("<b>"+val.theme_name+"</b>")
		                	rowArray.push($.trim(key));
		                	rowArray.push($.trim(actions));  
		                 	rowArray.push($.trim(title));
		                	//rowArray.push("["+ $.trim(val.theme_code)+"]"+" - "+val.theme_name);
		                	rowArray.push($.trim(val.theme_name));
		                	rowArray.push($.trim(val.title));
		                	rowArray.push($.trim(maxRole2));
		                  	/* rowArray.push("["+ $.trim(val.sbu_code)+"]"+" - "+ val.sbu_name);
		                   	rowArray.push("["+ $.trim(val.project_code)+"]"+" - "+ val.project_name);
		                	rowArray.push("["+ $.trim(val.department_code)+"]"+" - "+ val.department_name); */
		                	rowArray.push("["+ $.trim(val.created_by)+"]"+" - "+ val.user_name);
		                	rowArray.push(A_Taken);
		                	rowArray.push($.trim(status));  
		                	//rowArray.push($.trim(val.created_date));  
		                   
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
			 $(".page-loader").hide();
	    } 
 function getIdea(idea_no,approver_type,status,approver_code,theme){
	    	
	    	$('#document_codeUpdate').val($.trim(idea_no));
	    	$('#approver_typeUpdate').val($.trim(approver_type));
	    	$('#statusUpdate').val($.trim(status));
	    	$('#approver_codeUpdate').val($.trim(approver_code));
	    	$('#theme1').val($.trim(theme));
	    	$("#updateIRM ").submit();
	    	
	   }
	   
	   var switchStatus = false;
	   $("#customSwitch11").on('change', function() {
	       if ($(this).is(':checked')) {
	           switchStatus = $(this).is(':checked');
	           $("#customSwitch11").val(switchStatus)
	           $("#lableSuccess").removeClass('badge bg-success');
	           $("#lableDark").removeClass('badge badge-light-dark');
	           $("#lableDark").addClass('badge bg-dark');
	           $("#lableSuccess").addClass('badge badge-light-success');
	          // $('#bgimage').css('background-image','url(https://static.thenounproject.com/png/3825456-200.png)');
	       }
	       else {
	          switchStatus = $(this).is(':checked');
	          $("#customSwitch11").val(switchStatus)
	          $("#lableDark").addClass('badge badge-light-dark');
	          $("#lableDark").removeClass('badge bg-dark');
	          $("#lableSuccess").removeClass('badge badge-light-success');
	          $("#lableSuccess").addClass('badge bg-success');
	          //$('#bgimage').css('background-image','url(https://static.thenounproject.com/png/3825456-200.png)');
	       }
	   });
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>