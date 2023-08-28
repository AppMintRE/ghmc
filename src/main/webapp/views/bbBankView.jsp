<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.resustainability.reisp.constants.CommonConstants"%>
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
.card-imgs {
    margin-left: -6.5% !important
}
.textAreaColumn{
    width:100%;    
}
.textAreaColumn div{
    float:left;
    width:50%;
    padding:10px;
    box-sizing: border-box;
}

.textAreaColumn div span{
    display:block;
}

.textAreaColumn div textarea{
    box-sizing: border-box;
    width:100%;
    border:1px solid grey;
    min-height:5rem;
    border-top-right-radius: 1rem;
}
.p-1 {
    padding: 1!important;
}
@media print {
  .noPrint{
    display:none;
  }
}
h1{
  color:#f6f6;
}

.btn-upload {
    padding: 10px 20px;
    margin-left: 10px;
}
.upload-input-group {
    margin-bottom: 10px;
}

.input-group>.custom-select:not(:last-child), .input-group>.form-control:not(:last-child) {
  height: 45px;
}
#container {
  width: 100%;
  display: flex;
}
.box {
  flex: 1;
}
.btn.disabled, .btn:disabled, fieldset:disabled .btn {
    pointer-events: painted !important;
    opacity: 1.65 !important;
}
.py-1 {
    padding-top: 1rem!important;
    padding-bottom: 1rem!important;
    padding-left: 2rem;
        color: #6E6B7B;
}
::file-selector-button {
  display: none;
}


.bootstrap-tagsinput {
  background-color: #fff;
  border: 1px solid #ccc;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  display: inline-block;
  padding: 4px 6px;
  color: #555;
  vertical-align: middle;
  border-radius: 4px;
  max-width: 100%;
  line-height: 22px;
  cursor: text;
}
.bootstrap-tagsinput input {
  border: none;
  box-shadow: none;
  outline: none;
  background-color: transparent;
  padding: 0 6px;
  margin: 0;
  width: auto;
  max-width: inherit;
}
.bootstrap-tagsinput.form-control input::-moz-placeholder {
  color: #777;
  opacity: 1;
}
.bootstrap-tagsinput.form-control input:-ms-input-placeholder {
  color: #777;
}
.bootstrap-tagsinput.form-control input::-webkit-input-placeholder {
  color: #777;
}
.bootstrap-tagsinput input:focus {
  border: none;
  box-shadow: none;
}
.bootstrap-tagsinput .tag {
  margin-right: 2px;
  color: white;
}
.bootstrap-tagsinput .tag [data-role="remove"] {
  margin-left: 8px;
  cursor: pointer;
}
.bootstrap-tagsinput .tag [data-role="remove"]:after {
  content: "x";
  padding: 0px 2px;
}
.bootstrap-tagsinput .tag [data-role="remove"]:hover {
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05);
}
.bootstrap-tagsinput .tag [data-role="remove"]:hover:active {
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
  .teal-color {
        color:orange;
    }
     
    .green-color {
    color:green;
    }
    
    .red-color {
        color:red;
    }
</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 BrainBox with unlimited possibilities.">
    <meta name="keywords" content="admin template,BrainBox, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>BrainBox - Action</title>
       <link rel="icon" type="image/png" sizes="96x96" href="/brainbox/resources/images/protect-favicon.png" >
	<script src="/brainbox/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/brainbox/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
     <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
        <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/pickadate/pickadate.css">
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
    <!-- END: Page CSS-->
      <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/form-file-uploader.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static " data-open="hover" data-menu="horizontal-menu" data-col="">

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
                                             			         <img src="<%=request.getContextPath() %>/resources/images/logo/P2-LoginPage.png" width="" height="40" class="card-imgs">

                      </g>
                    </g> 
                  </svg></span>
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
     <div class="app-content content">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
       <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
              <div class="content-header-left col-md-10 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">Idea Bank </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                  <%--  <c:if test="${sessionScope.BASE_ROLE ne 'User' }">  <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li></c:if> --%>
                     <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/bb-bank">${BBDetails.theme_name }</a>
                    </li>

                    <li class="breadcrumb-item active">${BBDetails.title }
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
       <!--    <div class="content-header-left col-md-2 col-12 mb-2">
            <div class="col-xl-12 col-md-4 col-12 invoice-actions mt-md-0 mt-2">
      <div class="card">
        <div class="card-body">

          <a class="btn btn-outline-secondary w-100 mb-75"  onclick="printDiv('printableArea')" class="noPrint"><i class="fa fa-print"></i> Print</a>

        </div>
      </div>
    </div>
          </div> -->
        </div>
 <div class="">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="invoice-preview-wrapper">
  <div class="row invoice-preview">

               <c:forEach var="obj1" items="${themeListOne}">
   
     <div class="col-xl-3 col-md-4 col-12 invoice-actions mt-md-0 mt-2">
      <div class="card">
           <div class="card-body">
          <!-- account setting header -->
          <h6 class="kb-title">
            <span><b>Ideas Related to ${obj1.theme_name } (${ obj1.counts})</b></span>
            <input class="tCodes" type="hidden" value="${obj1.theme_code}  ${obj1.theme_name }" />
          </h6>
          <div class="list-group list-group-circle mt-2 stdtable">
           <c:choose>
		         <c:when test="${  fn:contains( obj1.title, ',' ) }">
		            <c:set var="filesLists" value="${fn:split(obj1.idea_no, ',')}" />
             		  <c:set var="filesList" value="${fn:split(obj1.title, ',')}" />
             		   <c:set var="filesListss" value="${fn:split(obj1.status, ',')}" />
             		    <c:set var="sbus" value="${fn:split(obj1.sbu, ',')}" />
             		     <c:set var="sbun" value="${fn:split(obj1.sbu_name, ',')}" />
             		 <c:forEach var="obj" items="${filesLists}" varStatus="index"> 
             		 
             		 <p  >
             		 <c:if test="${filesListss[index.count - 1] eq 'In Progress' }"><i class='fa-solid fa-circle teal-color fa-fade' style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6; font-size: 10px;" ></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Resolved' }"><i class='fa fa-circle green-color'  style="font-size: 10px;"></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Rejected' }"><i class='fa fa-circle red-color'  style="font-size: 10px;"></i></c:if> &nbsp;
             		 
             		 
             		  <a  href="javascript:void(0);" onclick="getIdea('${ obj}','${ obj1.theme_code}');"  id="stdname" title="click to View ${filesList[index.count - 1]}"  class="">${filesList[index.count - 1]}
             		   <span style="display:none"> ${sbus[index.count - 1]} - ${sbun[index.count - 1]}</span> </a>
             		  
					<%--  <c:if test="${index.count eq 6 }">
             		   <div style="text-align: end;"><button type="button" onclick="goToFilterPage('${obj1.theme_code }')" class="btn btn-relief-danger">More</button></div>
             		   </c:if> --%>
					</c:forEach>
		         </c:when>
		         <c:otherwise>
		             <p>
		             <c:if test="${filesListss[index.count - 1] eq 'In Progress' }"><i class='fa-solid fa-circle teal-color fa-fade' style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6; font-size: 10px;" ></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Resolved' }"><i class='fa fa-circle green-color'  style="font-size: 10px;"></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Rejected' }"><i class='fa fa-circle red-color'  style="font-size: 10px;"></i></c:if> &nbsp;
		              <a  href="javascript:void(0);" onclick="getIdea('${ obj1.idea_no}','${ obj1.theme_code}');" id="stdname" title="click to View ${obj1.title} "  class="list-group-item text-body">${obj1.title}
		              <span style="display:none"> ${obj1.sbu} - ${obj1.sbu_name}</span>  </a>
		              </a> </p>
		         </c:otherwise>
		      </c:choose>
          </div>
          
        </div>
           <%--   <div style="text-align: end;position: relative;top: -1rem;left: -2rem;"><button type="button" onclick="goToFilterPage('${obj1.theme_code }')"
              class="btn btn-relief-danger" title="view in Detail">More..</button></div> --%>
        
        </a>
      </div>
    </div>
   </c:forEach>
      
    <!-- Invoice -->
    <div class="col-xl-9 col-md-8 col-12" id="printableArea">
    <form class="form" action="<%=request.getContextPath() %>/update-idea" id="irmForm" name="irmForm" method="post" class="form-horizontal invoice-repeater" role="form" enctype="multipart/form-data">
        <fieldset <c:if test="${sessionScope.BASE_ROLE eq 'User' }" > disabled</c:if> >
      <div class="card invoice-preview-card">
      
        <div class="card-body invoice-padding pb-0">
          <!-- Header starts -->
          <div class="d-flex justify-content-between flex-md-row flex-column invoice-spacing mt-0">
            <div>
              <div class="logo-wrapper">
                <svg
                  viewBox="0 0 139 95"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                  height="24"
                >
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
			         <img src="<%=request.getContextPath() %>/resources/images/logo/P2-LoginPage.png" width="" height="60" class="card-imgs" >
                    </g>
                  </g>
                </svg>
              </div>
                <c:choose>
			         <c:when test = "${BBDetails.is_anonymous eq 'true' && (sessionScope.BASE_ROLE eq 'Admin' || sessionScope.BASE_ROLE eq 'Management' || sessionScope.IDEA_BASE_ROLE eq 'Committee' )  }">
			            	<p class="card-text mb-25 mt-1"><b>Name of Submitter</b>: [${BBDetails.created_by }] - ${BBDetails.user_name } </p>
              			    <c:if test="${BBDetails.is_anonymous eq 'true' }"><p class="card-text mb-25 text-center"><span class="badge badge-light-dark">( Anonymously Submitted )</span></p></c:if>
			         </c:when>
			         <c:when test = "${BBDetails.is_anonymous ne 'true' }">
			            	<p class="card-text mb-25 mt-1"><b>Name of Submitter</b>: [${BBDetails.created_by }] - ${BBDetails.user_name } </p>
			         </c:when>
			          <c:when test = "${BBDetails.is_anonymous eq 'true' &&  sessionScope.BASE_ROLE eq 'User'}">
              			  <p class="card-text mb-25 mt-1"><b>Name of Submitter <span class="badge badge-light-dark">( Anonymously Submitted )</span></p>
			         </c:when>
			         <c:otherwise>
			            	<p class="card-text mb-25 mt-1"><b>Name of Submitter</b>: [${BBDetails.created_by }] - ${BBDetails.user_name } </p>
			         </c:otherwise>
			      </c:choose>
              <p class="card-text mb-25 "><b>Project of Idea Submitter </b>:  [${BBDetails.sbu_code }]/[${BBDetails.project_code }] - ${BBDetails.project_name } </p>
              <p class="card-text mb-25"><b>Department of Idea Submitter</b>: [${BBDetails.department_code }] - ${BBDetails.department_name } </p>
             <%--  <p class="card-text mb-0"><b>Location </b>: [${BBDetails.location_code }] - ${BBDetails.location_name } </p> --%>
            </div>
           <div class="mt-md-0 mt-2">
              <h4 class="invoice-title">
                Idea No : 
                <span class="invoice-number">#${BBDetails.idea_no }</span>
              </h4>
              <div class="invoice-date-wrapper">
                <p class="invoice-date"><b>Date </b>: ${BBDetails.created_date } </p>
                <p class="invoice-date"><b>Last Updated </b>: ${BBDetails.action_taken }<c:if test ="${empty BBDetails.action_taken }" ><span id="lastDate">${BBDetails.created_date }</span> </c:if></p>
                 <p class="invoice-date-title"><b> Current Status </b> :
             		<span class="badge rounded-pill badge-light-success me-1"  id="app_type"><c:if test="${BBDetails.mainStatus eq 'Resolved'}">Approved</c:if></span>
             		<span class="badge rounded-pill badge-light-danger me-1"  id="app_type"><c:if test="${BBDetails.mainStatus eq 'Rejected'}">Rejected</c:if></span>
                   </p> 
              </div>
  
            </div>
          </div>
          <!-- Header ends -->
        </div>

        <hr class="invoice-spacing" />
  		<input type="hidden"  name="idea_no" value="${BBDetails.idea_no }"/>  
  		<%-- <input type="hidden"  name="theme" value="${BBDetails.theme }"/>   --%>
        <!-- Address and Contact starts -->
<%--         <div class="card-body invoice-padding pt-0">
          <div class="row invoice-spacing">
            <div class="col-xl-8 p-1">
              <h6 class="mb-25"></h6>
              <p class="card-text mb-25"><b> Incident Type </b> : ${BBDetails.theme }</p>
             
            </div>
            <div class="col-xl-4 p-0 mt-xl-0 mt-2">
              <h6 class="mb-2"></h6>
              <table>
                <tbody>

                  <tr>
                    <td class="pe-1"><b> Risk Type </b>:</td>
                    <td>${BBDetails.risk_type }</td>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div> --%>
        <!-- Address and Contact ends -->

        <!-- Invoice Description starts -->
        <div class="table-responsive">
          <table class="table" style=" border-spacing: 0px;
            table-layout: fixed;
            margin-left: auto;
            margin-right: auto;">
            <thead>
              <tr>
                <th class="py-1"> Idea Details</th>
                <th class="py-1"></th>
              </tr>
            </thead>
            <tbody>
            <tr style=" border-style: hidden;">
	            <td class="py-1">
	             <p class="card-text">
	             <b> Theme Type </b> : ${BBDetails.theme } - ${BBDetails.theme_name }
	             </p>
	             <input type="hidden"  name="theme" value="${BBDetails.theme }"/>
	            </td>
	            <td class="py-1">
	             <input type="hidden"  name="title" value="${BBDetails.title }"/>
	             <b> Idea </b> : ${BBDetails.title } 
	            </td>
            </tr>
              <tr>
               <td class="py-1">
	             <b> Idea Description</b> : ${BBDetails.description } 
	            </td>
                <td class="py-1">
                 <p class="card-text">
                <b>Attachments </b>: <br>
               
                 <c:choose>
  					 <c:when test="${  fn:contains( BBDetails.attachment, ',' ) }">
		  	                <c:set var="filesList" value="${fn:split(BBDetails.attachment, ',')}" />
			                 <c:choose>
					         <c:when test ="${fn:length(filesList) gt 0}" >
					             <c:forEach var="obj" items="${filesList}">
									<input type="hidden" id="design_file_ids" value="${obj}"/>
							        <a href="<%=CommonConstants.BB_FILE_SAVING_PATH_LOC%>${BBDetails.idea_no }/${obj }" class="filevalue" download ="${obj}"><i class="fa fa-arrow-down"></i>
				                  <span class="fw-bold">${obj }</span></a><br>
								</c:forEach>
					         </c:when>
					         <c:otherwise>
					          <p >   <i class="fa-solid fa-file"></i> No Attachments Found!</p>
					         </c:otherwise>
					      </c:choose>
			      </c:when>
			       <c:otherwise> 
			       <c:if test="${ not empty fn:trim(BBDetails.attachment) }">
		        		<input type="hidden" id="design_file_ids" value="${BBDetails.attachment}"/>
				        <a href="<%=CommonConstants.BB_FILE_SAVING_PATH_LOC%>${BBDetails.idea_no }/${BBDetails.attachment }" class="filevalue" download ="${BBDetails.attachment}"><i class="fa fa-arrow-down"></i>
	                    <span class="fw-bold">${BBDetails.attachment }</span></a>
			       </c:if>
			        <c:if test="${ empty fn:trim(BBDetails.attachment) }">
			         <p >   <i class="fa-solid fa-file"></i> No Attachments Found!</p>
			        </c:if>
			         </c:otherwise>
			       </c:choose>
			         </p>
                </td>
            
  <%--               <td class="py-1">
            <b>Incident Category </b> : <br>
             <c:choose>
 					 <c:when test="${  fn:contains( BBDetails.incident_category, ',' ) }">
	  	                <c:set var="filesList" value="${fn:split(BBDetails.incident_category, ',')}" />
		                 <c:choose>
				         <c:when test ="${fn:length(filesList) gt 0}" >
				             <c:forEach var="obj" items="${filesList}">
			                <span class="">&#x2022; ${obj }</span><br>
							</c:forEach>
				         </c:when>
				         <c:otherwise>
				          <p >  <i class="fa-solid fa-file"></i> No Data Found!</p>
				         </c:otherwise>
				      </c:choose>
		      </c:when>
		       <c:otherwise>
		       <c:if test="${ not empty fn:trim(BBDetails.incident_category) }">
                    <span class="">&#x2022; ${BBDetails.incident_category}</span>
		       </c:if>
		        <c:if test="${ empty fn:trim(BBDetails.incident_category) }">
		         <p ></p>
		        </c:if>
		       </c:otherwise>
	       </c:choose>
            </td> --%>
              </tr>
            </tbody>
          </table>
        </div>
      
       <input type="hidden"  name="email_id" value="${BBDetails.email_id }"/>
       <c:if test ="${fn:length(BBDetails.BBIncidentsList) eq 0}">
           <script>
           if('${BBDetails.mainStatus}' != "Rejected"){
        	   $('#app_type').removeClass('badge rounded-pill badge-light-warning me-1');
		       $('#app_type').html('<b>Rejected</b>').addClass('text-danger')
           }
		    </script>
         </c:if>
         <c:forEach var="fObj" items="${BBDetails.BBIncidentsList }" varStatus="index">
         <fieldset>
     <div class="table-responsive" <c:if test ="${empty fObj.approver_code }"> style ="display:none;"</c:if>
      <c:if test="${fObj.status eq 'Send Back' && sessionScope.USER_ID ne fObj.approver_code || fObj.status eq 'Sent Back' && sessionScope.USER_ID ne fObj.approver_code }" > style="display:none;" </c:if>  >
     <script> 
        if('${fObj.action_taken}' != ''){
         	$('#lastDate').html('${fObj.action_taken}');
        }
     </script>
    
     <div class="card" 
     <c:if test="${  fn:contains( not fObj.approver_code ,  sessionScope.USER_ID ) && sessionScope.BASE_ROLE ne 'Admin' && empty fObj.comments }" > style="display:none;" </c:if>  
     
     >
       
        <div class="col-12">
              <div class="alert alert-primary" role="alert">
                <div class="py-1"><strong>ACTION TAKEN </strong></div>
            </div>
            <p class="badge rounded-pill badge-light-success me-1 invoice-total-title" style=" margin-left: 2rem;"><b>Level ${index.count } : </b>${fObj.approver_type }</p>
        <div class="card-body">
         <c:if test ="${fn:length(BBDetails.BBIncidentsList) eq 1  &&  fObj.status eq 'In Progress' }" >

         </c:if>

          <div class="row">
           <c:if test ="${  fn:contains(fObj.approver_type , 'Evaluator' ) }" >  
          
           	 <div class="col-md-6 col-12 mb-1">
              <label class="form-label" for="exampleFormControlTextarea1"><b>Idea Theme</b><span class="required"> *</span></label>
		               <select 
			              id="select2-assign_theme-container"
			              name="assign_theme"
			              class="select2 form-select formSelect"
			              aria-label="Default select example" <c:if test ="${  fObj.status eq 'Reviewed' }" > disabled </c:if>
			            >
			              <option value="">Select Theme</option>
			             <c:forEach var="obj" items="${themeList}">
									<option value="${obj.theme_code }" <c:if test="${BBDetails.theme eq obj.theme_code }" >selected</c:if>>[${obj.theme_code }] - ${obj.theme_name }</option>
							</c:forEach>
			            </select>
			              <span id="select2-assign_theme-containerError" class="error-msg" ></span>
            </div>
     
	      			          
               <div class="col-md-6 col-12 mb-1">
              <label class="form-label" for="exampleFormControlTextarea1"><b>Tag Relevent Ideas</b><span class="required"> </span></label>
		               <select 
			              id="select2-theme_add-container"
			              name="relevent_idea"
			              class="select2 form-select formSelect" multiple
			              aria-label="Default select example" <c:if test ="${  fObj.status eq 'Reviewed' }" > disabled </c:if>
			            >
			              <option value="">Select Relevent Idea</option>
			                <c:forEach var="obj" items="${ideaList}">
								<option value="${obj.idea_no }" <c:if test="${  fn:contains( fObj.relevent_idea, obj.idea_no ) }"> selected</c:if>>[${obj.idea_no }] - ${obj.title }</option>
							</c:forEach>
			            </select>
            </div>
            </c:if>
               <c:if test ="${  fn:contains(fObj.approver_type , 'Committee' ) }" >  
               <input type="hidden" name="relevent_idea" value="${fObj.relevent_idea }" />
               <div class="col-md-6 col-12 mb-1">
	              <label class="form-label" for="exampleFormControlTextarea1"><b>Idea Theme</b><span class="required"> *</span></label>
			               <select 
				              id="select2-assign_theme-container"
				              name="assign_theme"
				              class="select2 form-select formSelect"
				              aria-label="Default select example" 
				            >
				              <option value="">Select Theme</option>
				             <c:forEach var="obj" items="${themeList}">
										<option value="${obj.theme_code }" <c:if test="${BBDetails.theme eq obj.theme_code }" >selected</c:if>>[${obj.theme_code }] - ${obj.theme_name }</option>
								</c:forEach>
				            </select>
				              <span id="select2-assign_theme-containerError" class="error-msg" ></span>
	            </div>
				<div class="col-md-6 col-12 mb-1">
              		<label class="form-label" for="exampleFormControlTextarea1"><b>Status</b><span class="required"> *</span></label>
		               <select 
			              id="select2-status-container"
			              name="status"
			              class="select2 form-select formSelect form-control"
			              aria-label="Default select example" <c:if test ="${  fObj.status eq 'Reviewed' }" > disabled </c:if>
			            >
			              <option value="">Select Status</option>
			              <option value="Forward Implementation"  <c:if test ="${  fObj.status eq 'Reviewed' }" > selected  </c:if>>Forward Implementation</option>
			              <option value="Send Back" <c:if test ="${  fObj.status eq 'Send Back' }" > selected  </c:if>>Send Back</option>
			  
			            </select>
			            
            	</div>
            	 <c:if test ="${fObj.status eq 'In Progress' }" >  <span id="statusError" class="invalid-feedback" ></span></c:if>
           <div class="col-md-6 col-12 mb-1">
              <label class="form-label" for="exampleFormControlTextarea1"><b>Comments</b><span class="required"> *</span></label>
		               <c:if test ="${fObj.status ne 'In Progress' }" > <p > ${fObj.comments }</p> </c:if>
		                   
		                   <c:if test ="${fObj.status eq 'In Progress' }" > <p> 
									<textarea class=" form-control"  rows="3"  placeholder="Comments"
					                  <c:if test ="${fObj.status eq 'In Progress' }" > id="comments" name="comments"   </c:if>
					                  <c:if test ="${fObj.status ne 'In Progress' || sessionScope.BASE_ROLE eq 'Management' }" > readonly </c:if>>${fObj.comments }</textarea>
							</c:if>
		                  <c:if test ="${fObj.status eq 'In Progress' }" >  <span id="commentsError" class="invalid-feedback" ></span></c:if>
            </div>


          
          
          
          
	        </c:if>
	        <c:if test ="${  fn:contains(fObj.approver_type , 'Evaluator' ) }" >  
	  <!--       

          <div class="col-md-6 col-12 mb-1">
          
			<input type="text" value="" data-role="tagsinput" placeholder="Add tags" />
          </div> -->
             <div class="col-md-6 col-12 mb-1">
              		<label class="form-label" for="exampleFormControlTextarea1"><b>Status</b><span class="required"> *</span></label>
		               <select 
			              id="select2-status-container"
			              name="status"
			              class="select2 form-select formSelect form-control"
			              aria-label="Default select example" <c:if test ="${  fObj.status eq 'Reviewed' }" > disabled </c:if>
			            >
			              <option value="">Select Status</option>
			              <option value="Forward to Committee" <c:if test ="${  fObj.status eq 'Reviewed' }" > selected  </c:if>>Forward to Committee </option>
			              <option value="Send Back" <c:if test ="${  fObj.status eq 'Send Back' }" > selected  </c:if>>Send Back</option>
			  
			            </select>
			             <c:if test ="${fObj.status eq 'In Progress' }" >  <span id="statusError" class="error-msg" ></span></c:if>
            </div>
                   <div class="col-md-6 col-12 mb-1">
              <label class="form-label" for="exampleFormControlTextarea1"><b>Comments</b><span class="required"> *</span></label>
		               <c:if test ="${fObj.status ne 'In Progress' }" > <p > ${fObj.comments }</p> </c:if>
		                   
		                   <c:if test ="${fObj.status eq 'In Progress' }" > <p> 
									<textarea class=" form-control"  rows="3"  placeholder="Comments"
					                  <c:if test ="${fObj.status eq 'In Progress' }" > id="comments" name="comments"   </c:if>
					                  <c:if test ="${fObj.status ne 'In Progress' || sessionScope.BASE_ROLE eq 'Management' }" > readonly </c:if>>${fObj.comments }</textarea>
							</c:if>
		                  <c:if test ="${fObj.status eq 'In Progress' }" >  <span id="commentsError" class="invalid-feedback" ></span></c:if>
            </div>
             </c:if>
            <c:if test="${ not empty fn:trim(fObj.sb_notes) && fObj.status eq 'In Progress'}">
             <div class="col-md-12 col-12 mb-1">
             <div class="card shadow-none bg-transparent border-danger">
		        <div class="card-body">
		          <h6 class="card-title">Send Back Notes :</h6>
		          <p class="card-text">${fObj.sb_notes }</p>
		        </div>
		        
		      </div>
		      
             </div>
            
             </c:if>
          </div>
        <%--  </c:if> --%>
        </div>
      </div>
     </div>
    <div class="table-responsive">
  
      <c:if test ="${fObj.status eq 'In Progress' }" >  
      
    <script>
	    var app_type ="${BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList) - 1].role_code }";
	    var sendBack = "${BBDetails.maxRole}";
	    $('#app_type').removeClass('badge rounded-pill badge-light-danger me-1');
	    $('#app_type').addClass('badge rounded-pill badge-light-warning me-1');
	    if(app_type != '' && !(app_type.indexOf('Committee') != -1)){
	       $('#app_type').html('Evaluation<br>In progress')
	    }else if(app_type != '' && !(app_type.indexOf('Evaluator') != -1) ){
	       $('#app_type').html('Committee Evaluation <br> In progress')
	    }
	    if(sendBack == 'Back'){
	       $('#app_type').removeClass('badge rounded-pill badge-light-warning me-1');
	       $('#app_type').addClass('badge rounded-pill badge-light-danger me-1');
	       $('#app_type').html('<b>Sent Back<br>to Submitter</b>').addClass('text-danger')
	    }
    </script>
       <input type="hidden"  name="created_by" value="${BBDetails.created_by }"/> 
       <input type="hidden"  name="Creater_user_name" value="${BBDetails.user_name }"/> 
        <input type="hidden"  name="submitter_email" value="${BBDetails.submitter_email }"/> 
       <input type="hidden"  name="approver_type_name" value="${fObj.approver_type }"/>  
       <input type="hidden"  name="approver_type" value="${BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].role_code }"/>  
 		<input type="hidden"  name="employee_code" value="${BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].employee_code }"/> 
       <input type="hidden"  name="email_id" value="${BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].email_id }"/>
      <%--  <input type="hidden"  name="incident_category" value="${BBDetails.incident_category}"/> --%>
       
       <input type="hidden"  name="next_level_user" value="${fObj.approver_name }"/>
       <input type="hidden"  name="approver_type_before" value="${fObj.approver_type }"/>  
       <input type="hidden"  name="employee_code_before" value="${fObj.approver_code }"/>
      <%--  <c:if test ="${empty BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].employee_code }" >   <input type="hidden"  name="user_id" value="${fObj.user_id }"/>  </c:if> --%>
       </c:if>

  <%--   <input type="hidden"  name="project_code" value="${fObj.project_code }"/>
    <input type="hidden"  name="department_code" value="${fObj.department_code }"/> --%>
    
     <%-- <div class="">
        <div class="col-12">
        <c:if test="${BBDetails.mainStatus ne 'Rejected'}">
               <div class="alert alert-primary" role="alert">
                <c:if test="${fObj.approver_type ne 'Committee'}">
                <div class="py-1"><strong>EVALUATOR</strong> </div>
                 </c:if> 
                 <c:if test="${fObj.approver_type eq 'Committee'}">
                <div class="py-1"><strong>COMMITTEE</strong> </div>
                 </c:if> 
            </div>
        </c:if>
        
          <div class="row">
            <div class="col-md-4 col-12 mb-0" style=" margin-left: 2rem;">
               <c:choose>
			         <c:when test ="${not empty fObj.approver_name}">
				          <p class="text-primary"><b>Name : </b>${fObj.approver_name }</p>
	                   	  <p class="text-primary"><b>Email : </b>${fObj.email_id }</p>
			         </c:when>
			         
			         <c:otherwise>
			         <c:if test="${BBDetails.mainStatus eq 'Rejected'}">
			         	  <p class="badge badge-light-dark">The Idea has been Rejected by :</p>
				          <p class="text-primary"><b>Name : </b>${fObj.modified_user_name }</p>
	                   	  <p class="text-primary"><b>Email : </b>${fObj.modified_user_email }</p>
			         </c:if> 

			         </c:otherwise>
			      </c:choose>
            </div>
              <div 
              <c:if test="${fObj.approver_type eq 'Committee'}">  class="col-md-12 col-12 mb-0"  </c:if>  
              <c:if test="${fObj.approver_type ne 'Committee'}">  class="col-md-6 col-12 mb-0"  </c:if>  
              style="text-align: center;">
              <div  class="col-md-12 col-12 mb-0" style="text-align: center;">
                   <c:if test ="${fObj.status eq 'In Progress' && not empty fObj.approver_code && fn:contains( fObj.approver_code ,  sessionScope.USER_ID ) || sessionScope.BASE_ROLE eq 'Admin'}" >
                   <c:if test ="${fObj.status eq 'In Progress' }" >
	                <button type="button" class="btn btn-primary me-1" 
	                 <c:if test ="${fObj.status ne 'In Progress' }" >disabled</c:if>
	                 
	                  onclick="submitBB();">
	                   <c:if test ="${fn:contains(fObj.approver_type , 'Evaluator' )  }" >  
	                   	Submit Evaluation
	                    </c:if>
	                      <c:if test ="${fn:contains(fObj.approver_type , 'Committee' )  && BBDetails.status ne 'Resolved'}" >  
	                   	Approve
	                    </c:if>
	                  </button>
	                 <c:if test ="${ fObj.status eq 'In Progress' || fn:contains( not fObj.approver_code ,  sessionScope.USER_ID )}" >
	                  <button type="button" class="btn btn-warning me-1"   onclick="sendBackPopUp();" title="Send Back" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">
	          			 Send Back 
	          			   </button>
	                 </c:if>
	                   <a href="<%=request.getContextPath()%>/bb-bank" class="btn btn-outline-secondary" ><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a>
	                  </c:if>
	                  </c:if>
	                  <c:if test ="${fObj.status ne 'In Progress'}" >
	                	<button type="button"  class="btn btn-success me-1" 
	                 	<c:if test ="${fObj.status ne 'In Progress' }" >disabled</c:if>>
	                   <i class="fa fa-check" aria-hidden="true"></i>
	                     <c:if test ="${empty BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].employee_code}" >  
	                    	Approved 
	                      </c:if>
	                       <c:if test ="${not empty BBDetails.BBRolesList[fn:length(BBDetails.BBIncidentsList)].employee_code }" >  
	                    	   ${fObj.status} 
	                      </c:if>
	                 
	                    
	                  </button>
	                    </c:if> 
	                  	<a href="<%=request.getContextPath()%>/bb-bank" class="btn btn-outline-secondary" ><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a>
	               
            </div>
          </div>
      </div>
     </div>
        </div> --%>
        </div>

         </fieldset>
      </c:forEach>
            <c:if test ="${fn:length(BBDetails.BBIncidentsList) eq 0}">
          <div class="col-12">
          <c:if test="${BBDetails.mainStatus eq 'Rejected'}">
               <div class="alert alert-primary" role="alert">
                <div class="py-1"><strong>DETAILS : </strong>  <p class="badge badge-light-danger">The Idea has been Rejected </p></div>
            </div>
            <c:if test="${ not empty fn:trim(fObj.sb_notes)}">
             <div class="col-md-12 col-12 mb-1">
             <div class="card shadow-none bg-transparent border-danger">
		        <div class="card-body">
		          <h6 class="card-title">Reason :</h6>
		          <p class="card-text">${fObj.sb_notes }</p>
		        </div>
		        
		      </div>
		      
             </div>
            
             </c:if>
        </c:if>
        <c:if test="${BBDetails.mainStatus ne 'Rejected'}">
               <div class="alert alert-primary" role="alert">
                <div class="py-1"><strong>EVALUATOR</strong> </div>
            </div>
        </c:if>
 			
	   </div>
	   <div class="row">
        <%--     <div class="col-md-12 col-12 mb-0" style=" margin-left: 2rem;">
 				  <c:if test="${BBDetails.mainStatus eq 'Rejected'}">
			         	  <p class="badge badge-light-danger">The Idea has been Rejected </p>
				          <p class="text-primary"><b>Name : </b>${fObj.approver_name }</p>
	                   	  <p class="text-primary"><b>Email : </b>${fObj.email_id }</p>
			         </c:if> 
			         <c:if test="${BBDetails.mainStatus ne 'Rejected'}">
			         <h6 class="text-danger"><b>No Reviewer Assigned </b></h6> 
			             <p class="badge badge-light-dark">Please Assign a Reviewer for further Actions!</p>
			         </c:if>
			</div> --%>
			<div class="col-md-12 col-12 mb-0" style="text-align:center;">
 				<a href="<%=request.getContextPath()%>/bb-bank" class="btn btn-outline-secondary" ><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a>
			</div>
     </div>
		</c:if>
        <!-- Invoice Description ends -->

        <hr class="invoice-spacing" />
<!-- 
        Invoice Note starts
        <div class="card-body invoice-padding pt-0">
          <div class="row">
            <div class="col-12">
   				<div class="col-12" style="text-align: center;">
	                <button type="button" class="btn btn-primary me-1" onclick="submitBB();">Reviewed</button>
	                <a href="" class="btn btn-outline-secondary" onclick="irmForm.reset();">Go back</a>
                </div>
            </div>
          </div>
        </div> -->
        <!-- Invoice Note ends -->
      </div>
        </fieldset >
        		<div
                class="modal fade"
                id="exampleModalCenter"
                tabindex="-1"
                aria-labelledby="exampleModalCenterTitle"
                aria-hidden="true"
              >
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalCenterTitle">Send Back</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                     <div class="row">
                     	<input type="hidden" name="ca_before" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - 2].comments }" />
<%--                       	<input type="hidden" name="pa_before" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - 2].preventive_action }" />
 --%>                       	<%-- <input type="hidden" name="remarks_before" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - 2].remarks }" /> --%>
                       <%--  <input type="hidden" name="doc_before" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - 1].attachment }" /> --%>
                        <input type="hidden" name="type_prevs" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - fn:length(BBDetails.BBIncidentsList)].approver_type }" />
                         <input type="hidden" name="send_back_email" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - fn:length(BBDetails.BBIncidentsList)].email_id }" />
                        <input type="hidden" name="approver_prvs" value="${BBDetails.BBIncidentsList[fn:length(BBDetails.BBIncidentsList) - fn:length(BBDetails.BBIncidentsList)].approver_code }" />
			            <div class="col-12">
			              <div class="mb-1">
			                <label class="form-label" for="exampleFormControlTextarea1">Add Comments<span class="required"> *</span></label>
			                <textarea class="form-control" id="exampleFormControlTextarea1" name="sb_notes" rows="3" placeholder="Comments" onkeyup="checkLength(this)"></textarea>
			              </div>
			               <span id="exampleFormControlTextarea1Error" class="invalid-feedback" ></span>
			            </div>
			           
			          </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button"  onclick="sendBackBB();" id="dBtn" disabled class="btn btn-primary" >Send Back</button>
                    </div>
                  </div>
                </div>
              </div>
      </form>
    </div>
    <!-- /Invoice -->

    <!-- Invoice Actions -->

    <!-- /Invoice Actions -->
  </div>
</section>
	
<!-- Send Invoice Sidebar -->


        </div>
      </div>
    </div>
    <!-- END: Content-->

<!-- Basic Floating Label Form section end -->
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
        <script src="/brainbox/resources/vendors/js/forms/repeater/jquery.repeater.min.js"></script>
    
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
 <script src="/brainbox/resources/js/materialize-v.1.0.min.js"  ></script>
    <script src="/brainbox/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/brainbox/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/brainbox/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/brainbox/resources/js/dataTables.material.min.js"  ></script>
      <script src="/brainbox/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/brainbox/resources/js/core/app-menu.min.js"></script>
    <script src="/brainbox/resources/js/core/app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/customizer.min.js"></script>
        <script src="/brainbox/resources/js/scripts/forms/form-repeater.min.js"></script>
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
    <script src="/brainbox/resources/vendors/js/file-uploaders/dropzone.min.js"></script>
    <script src="/brainbox/resources/js/scripts/forms/form-file-uploader.min.js"></script>
      <script src="/brainbox/resources/js/scripts/extensions/ext-component-blockui.js"></script> 
      
       <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.date.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/picker.time.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/pickadate/legacy.js"></script>
    <script src="/brainbox/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    
        <script src="/brainbox/resources/js/scripts/forms/pickers/form-pickers.min.js"></script>
     <form action="<%=request.getContextPath()%>/get-bb-bank" name="updateIRM" id="updateIRM" method="post">	
        <input type="hidden" name=idea_no id="document_codeUpdate" />
         <input type="hidden" name=theme id="theme1" />
	</form>

    <!-- END: Page JS-->
    
  <form action="<%=request.getContextPath()%>/export-company" name="exportBBForm" id="exportBBForm" target="_blank" method="post">	
      
        <input type="hidden" name="company_code" id="exportBB_filter" />
        <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
    <script>
      $(window).on("load",(function(){
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
    
          if('${sessionScope.BASE_ROLE}' != 'User'){
        	  $('#irmForm').children(':input').attr('disabled', 'disabled');
          }
          //getBBList();
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      function getIdea(idea_no,theme){
    	  	
    	  	$('#document_codeUpdate').val($.trim(idea_no));
    	  	$('#theme1').val($.trim(theme));
    	  	$("#updateIRM ").submit();
    	  	
    	}
      function clearFilter(){
		    	$("#select2-company_filter-container").val("");
		    	$("#select2-status_filter-container").val("");
		    	window.location.href="<%=request.getContextPath()%>/company";
	    }
      
      function getBBFilterList() {
	        var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(company_code) =="") {
	        	$("#select2-company_filter-container option:not(:first)").remove();
	        	var myParams = { company_code: company_code, status: status };
	            $.ajax({
	                url:"<%=request.getContextPath()%>/ajax/getBBFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-company_filter-container").append('<option value="' + val.company_code + '">'+"["+$.trim(val.company_code) +" ]"+" -" + $.trim(val.company_name) +'</option>');
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
    	  var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(status) =="") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = { company_code: company_code, status: status };
	            $.ajax({
	                url:"<%=request.getContextPath()%>/ajax/getStatusFilterList",
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

	    function exportBB(){
	    	 var company_code = $("#select2-company_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	    	
	    	 $("#exportBB_filter").val(company_code);
	     	 $("#exportStatus_filter").val(status);
	     	 $("#exportBBForm").submit();
	  	}
	    
	    function getBBList(){
	    	getBBFilterList('');
	    	getStatusFilterList('');
	    	var company_code = $("#select2-company_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        $('#allCompanies').html(0)
    		$('#activeCompanies').html(0)
    		$('#inActiveCompanies').html(0)

	    } 
	    
	    function getBB(company_code,status,company_name,id){
	    	 $('#company_name_edit').val('');
			 $('#company_code_edit').val('');
			 $('select[name^="status"] option:selected').removeAttr("selected");
		      $('#id').val($.trim(id));
		      $('#updateBB').modal('show');
		      $('#updateBB #company_name_edit').val($.trim(company_name)).focus();
		      $('#updateBB #company_code_edit').val($.trim(company_code)).focus();
		      if(status != null && status != ''  && status !="undefined"){
		    	  $('select[name^="status"] option[value="'+ status +'"]').attr("selected",true);
		    	  $('select').select2();
		      }
	   }
	    
	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.status === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.status == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.status == 500) {
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
	    
	    function submitBB(){
	    	if(validator.form()){ // validation perform
	    		 $('.formSelect').prop("disabled", false);
	        	document.getElementById("irmForm").submit();	
	    	}
	    }
	    var validator =	$('#irmForm').validate({
		   	 errorClass:"my-error-class is-invalid",
		   	 validClass:"my-valid-class is-valid",
		   	 ignore:":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		 "comments": {
		   			 			required: true
		   			 	  },"status": {										
		   			 			required: true
		   			 	  }, "ua_type": {
		   			 		  required:"#ua_checkbox:checked"
		   			 	  },"uc_type": {
		   			 		  required:"#uc_checkbox:checked"
		   			 	  },"management_type": {
		   			 		  required:"#nm_checkbox:checked"
		   			 	  },"incident_seviourity": {										
		   			 			required: true
		   			 	  },"assign_theme": {
		   			 		required: true
		   			 	  }
		   		 	},
		   		    messages: {
		   		 			"comments": {
		   				 	required: 'Required',
		   			 	  },"status": {
		   			 		required: 'Required'
		   			 	  },"ua_type": {
		   			 		required: 'Required'
		   			 	  },"uc_type": {
		   			 		required: 'Required'
		   			 	  },"management_type": {
		   			 		required: 'Required'
		   			 	  },"incident_seviourity": {
		   			 		required: 'Required'
		   			 	  },"assign_theme": {
		   			 		required: 'Required'
		   			 	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") =="comments" ){
		   				 document.getElementById("commentsError").innerHTML="";
		   		 		 error.appendTo('#commentsError');
		   			}else if(element.attr("id") =="select2-status-container" ){
		   			   document.getElementById("statusError").innerHTML="";
		   		 	   error.appendTo('#statusError');
		   			}else if(element.attr("id") =="ua_dp" ){
			   			   document.getElementById("select2-ua_dp-containerError").innerHTML="";
			   		 	   error.appendTo('#select2-ua_dp-containerError');
			   		}else if(element.attr("id") =="uc_dp" ){
			   			   document.getElementById("select2-uc_dp-containerError").innerHTML="";
			   		 	   error.appendTo('#select2-uc_dp-containerError');
			   		}else if(element.attr("id") =="nm_dp" ){
			   			   document.getElementById("select2-nm_dp-containerError").innerHTML="";
			   		 	   error.appendTo('#select2-nm_dp-containerError');
			   		}else if(element.attr("id") =="select2-assign_theme-container" ){
			   			   document.getElementById("select2-assign_theme-containerError").innerHTML="";
			   		 	   error.appendTo('#select2-assign_theme-containerError');
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
	   /*  $.validator.addMethod("requiredIfChecked", function (val, ele, arg) {
	        if ($("#ua_checkbox").is(":checked") && ($.trim(val) == '')) { return false; }
	        return true;
	    }, "Required "); */

	    function sendBackBB(){
	    		 $('#exampleModalCenter').modal('hide');
	        	document.getElementById("irmForm").submit();	
	    }
	  
	   	$('.select2Form').change(function(){
	   	    if ($(this).val() !=""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	$('input').change(function(){
	   	    if ($(this).val() !=""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	function getDeptAndLocationList(project){
	   		getDepartmentList(project);
	   		getLocationList(project);
	   	}
	   	
	    function getDepartmentList(Project) {
		        if ($.trim(Project) !="") {
		        	$("#select2-department_code-container option:not(:first)").remove();
		        	var myParams = { project: Project };
		            $.ajax({
		                url:"<%=request.getContextPath()%>/ajax/getDepartments",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-department_code-container").append('<option value="' + val.department_code + '">' +'[ '+ $.trim(val.department_code) +' ] - '+ $.trim(val.department_name) + '</option>');
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }
	    
	    function getLocationList(Project) {
	        if ($.trim(Project) !="") {
	        	$("#select2-location-container option:not(:first)").remove();
	        	var myParams = { project_code: Project };
	            $.ajax({
	                url:"<%=request.getContextPath()%>/ajax/getLocations",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-location-container").append('<option value="' + val.location_code + '">' +'[ '+ $.trim(val.location_code) +' ] - '+ $.trim(val.location_name) + '</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

	    function roleMapping(){
	    	$("#approverForIncident").html('Not Assigned').css("color","orange");
	    	var project_code = $("#select2-project_code-container").val();
	    	var department_code = $("#select2-department_code-container").val();
	        if ($.trim(project_code) !="" && $.trim(department_code) !="" ) {
	        	var myParams = { project_code: project_code,department_code : department_code };
	            $.ajax({
	                url:"<%=request.getContextPath()%>/ajax/getRoleMappingforBBForm",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                        	if($.trim(val.user_name) != ''){
	                        		$("#approverForIncident").html(val.user_name).css("color","#05f305").append('&nbsp; <i class="fa fa-check" aria-hidden="true"></i>');
	                        		$("#approver_code").val(val.user_id);
	                        		$("#approver_type").val(val.role_code);
	                        		$("#email_id").val(val.email_id);
	                        		$("#approver_name").val(val.user_name);
	                        	}else{
	                        		 $("#approver_code").val(null);
	                        		 $("#approver_type").val("No Approver Assigned");
	                        		 $("#approverForIncident").html('No Approver Found').css("color","red");
	                        	}
	                        });
	                    }else{
	                    	  $("#approverForIncident").html('No Approver Found').css("color","red");
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
	    $("#btn").click(function() {
	    	 $("#irmForm")[0].reset();
    		 $("#select2-project_code-container").val('').trigger('change');
    		 $("#select2-department_code-container").val('').trigger('change');
    		 $("#select2-location-container").val('').trigger('change');
    		 $("#select2-ptw_code-container").val('').trigger('change');
    		 $("#select2-risk_type-container").val('').trigger('change');
        });
	    function showFrom(incident){
	    	if(incident != ''){
	    		 $("#irmForm")[0].reset();
	    		 $("#select2-project_code-container").val('').trigger('change');
	    		 $("#select2-department_code-container").val('').trigger('change');
	    		 $("#select2-location-container").val('').trigger('change');
	    		 $("#select2-ptw_code-container").val('').trigger('change');
	    		 $("#select2-risk_type-container").val('').trigger('change');
		    	 $('#showOnIncidentSelect').css("display","block");
		    	 $('#theme').val(incident)
	    		 $("#approverForIncident").html('Not Assigned').css("color","orange");
		    	 var incident_name = $('#select2-irm_type-container').find(":selected").text();
		    	 $('#incident_name').val(incident_name)
		    	 $('#incidentValue').html(incident_name+" Form").css("text-transform","uppercase");
	    	}else{
	    		 $('#showOnIncidentSelect').css("display","none");
	    	}
	    }
	    
	    function printDiv(divName) {
	        var printContents = document.getElementById(divName).innerHTML;
	        var originalContents = document.body.innerHTML;
	        document.body.innerHTML = printContents;
	        window.print();
	        document.body.innerHTML = originalContents;
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

       /*  $('.datepicker').live("click", function() {
            $(this).datepicker({
                changeMonth: true,
                changeYear: true,
                gotoCurrent: true,
                dateFormat: 'yy-mm-dd',
                yearRange: '1980:c',
                defaultDate: '-10y'
            }).datepicker('show');
        }); */
    
    function displayIncidentDropdown(button){
    	if(button == 'UA'){
    		if($('#ua_checkbox').is(":checked")){
    			$('#ua_incident').val('UA');
    			$('#ua_dp_toggle').css('display','block');
    		}else{
    			$('#ua_incident').val('');
    			$('#ua_dp_toggle').css('display','none');
    		}
    	}else if(button == 'UC'){
    		if($('#uc_checkbox').is(":checked")){
    			$('#uc_incident').val('UC');
    			$('#uc_dp_toggle').css('display','block');
    		}else{
    			$('#uc_incident').val('');
    			$('#uc_dp_toggle').css('display','none');
    		}
    	}else if(button == 'NM'){
    		if($('#nm_checkbox').is(":checked")){
    			$('#nm_incident').val('Near Miss');
        		$('#nm_dp_toggle').css('display','block');
    		}else{
    			$('#nm_incident').val('');
        		$('#nm_dp_toggle').css('display','none');
    		}
    	}else{
    		$('#ua_dp_toggle').css('display','none');
    		$('#uc_dp_toggle').css('display','none');
    		$('#nm_dp_toggle').css('display','none');
    	}
    	
    }
function checkLength(val){
	 var len = val.value.length;
	  if (len >= 500) {
		  $('#dBtn').attr('disabled', true);
	  }else if(len == 0){
		  $('#dBtn').attr('disabled', true);
	  } else{
		  $('#dBtn').removeAttr('disabled');
	  }
	  
}

function projectFilter(){
	  var sbu_code = $("#select2-sbu_add-container").val();
	    if ($.trim(sbu_code) != "" ) {
      	$("#select2-project_add-container option:not(:first)").remove();
      	$("#project_head").html('');
        $("#email_id").html('');
      	var myParams = {sbu_code: sbu_code};
          $.ajax({
              url: "<%=request.getContextPath()%>/ajax/getFilteredProjectsListBB",
              data: myParams, cache: false,async: false,
              success: function (data) {
                  if (data.length > 0) {
                      $.each(data, function (i, val) {
	                      $("#select2-project_add-container").append('<option  value="' + val.project_code + '">'+'['+$.trim(val.project_code) +"] - "+$.trim(val.project_name) +'</option>');
                  	});
                   }           
                  },error: function (jqXHR, exception) {
  	   			      $(".page-loader").hide();
     	          	  getErrorMessage(jqXHR, exception);
     	     	  }
          });
      }
}

function deptFilter(){
	  var project = $("#select2-project_add-container").val();
	    if ($.trim(project) != "" ) {
      	$("#select2-department_code_add-container option:not(:first)").remove();
      	$("#project_head").html('');
        $("#email_id").html('');
      	var myParams = {project: project};
          $.ajax({
              url: "<%=request.getContextPath()%>/ajax/getFilteredDeptList",
              data: myParams, cache: false,async: false,
              success: function (data) {
                  if (data.length > 0) {
                      $.each(data, function (i, val) {
                    	  if("PH" == val.department_code){
    	                      $("#select2-department_code_add-container").append('<option  value="'+val.department_code+'">'+'['+$.trim(val.department_code) +"] - "+$.trim(val.department_name) +'</option>');
                    	  }
                  	});
                   }           
                  },error: function (jqXHR, exception) {
  	   			      $(".page-loader").hide();
     	          	  getErrorMessage(jqXHR, exception);
     	     	  }
          });
      }
}

function PHFilter(){
	  var project_code = $("#select2-project_add-container").val();
	  var department_code = $("#select2-department_code_add-container").val();
	    if ($.trim(department_code) != "" ) {
    	var myParams = {project_code: project_code, department_code : department_code};
        $.ajax({
            url: "<%=request.getContextPath()%>/ajax/PHFilter",
            data: myParams, cache: false,async: false,
            success: function (data) {
                if (data.length > 0) {
                    $.each(data, function (i, val) {
  	                      $("#project_head").html('['+$.trim(val.user_id) +"] - "+$.trim(val.user_name) );
  	                      $("#email_id").html( $.trim(val.email_id) );
                	});
                 }           
                },error: function (jqXHR, exception) {
	   			      $(".page-loader").hide();
   	          	  getErrorMessage(jqXHR, exception);
   	     	  }
        });
    }
}




//bootstrap-tagsinput.js file - add in local

(function ($) {
  "use strict";

  var defaultOptions = {
    tagClass: function(item) {
      return 'label label-info';
    },
    itemValue: function(item) {
      return item ? item.toString() : item;
    },
    itemText: function(item) {
      return this.itemValue(item);
    },
    itemTitle: function(item) {
      return null;
    },
    freeInput: true,
    addOnBlur: true,
    maxTags: undefined,
    maxChars: undefined,
    confirmKeys: [13, 44],
    delimiter: ',',
    delimiterRegex: null,
    cancelConfirmKeysOnEmpty: true,
    onTagExists: function(item, $tag) {
      $tag.hide().fadeIn();
    },
    trimValue: false,
    allowDuplicates: false
  };

  /**
   * Constructor function
   */
  function TagsInput(element, options) {
    this.itemsArray = [];

    this.$element = $(element);
    this.$element.hide();

    this.isSelect = (element.tagName === 'SELECT');
    this.multiple = (this.isSelect && element.hasAttribute('multiple'));
    this.objectItems = options && options.itemValue;
    this.placeholderText = element.hasAttribute('placeholder') ? this.$element.attr('placeholder') : '';
    this.inputSize = Math.max(1, this.placeholderText.length);

    this.$container = $('<div class="bootstrap-tagsinput"></div>');
    this.$input = $('<input type="text" placeholder="' + this.placeholderText + '"/>').appendTo(this.$container);

    this.$element.before(this.$container);

    this.build(options);
  }

  TagsInput.prototype = {
    constructor: TagsInput,

    /**
     * Adds the given item as a new tag. Pass true to dontPushVal to prevent
     * updating the elements val()
     */
    add: function(item, dontPushVal, options) {
      var self = this;

      if (self.options.maxTags && self.itemsArray.length >= self.options.maxTags)
        return;

      // Ignore falsey values, except false
      if (item !== false && !item)
        return;

      // Trim value
      if (typeof item === "string" && self.options.trimValue) {
        item = $.trim(item);
      }

      // Throw an error when trying to add an object while the itemValue option was not set
      if (typeof item === "object" && !self.objectItems)
        throw("Can't add objects when itemValue option is not set");

      // Ignore strings only containg whitespace
      if (item.toString().match(/^\s*$/))
        return;

      // If SELECT but not multiple, remove current tag
      if (self.isSelect && !self.multiple && self.itemsArray.length > 0)
        self.remove(self.itemsArray[0]);

      if (typeof item === "string" && this.$element[0].tagName === 'INPUT') {
        var delimiter = (self.options.delimiterRegex) ? self.options.delimiterRegex : self.options.delimiter;
        var items = item.split(delimiter);
        if (items.length > 1) {
          for (var i = 0; i < items.length; i++) {
            this.add(items[i], true);
          }

          if (!dontPushVal)
            self.pushVal();
          return;
        }
      }

      var itemValue = self.options.itemValue(item),
          itemText = self.options.itemText(item),
          tagClass = self.options.tagClass(item),
          itemTitle = self.options.itemTitle(item);

      // Ignore items allready added
      var existing = $.grep(self.itemsArray, function(item) { return self.options.itemValue(item) === itemValue; } )[0];
      if (existing && !self.options.allowDuplicates) {
        // Invoke onTagExists
        if (self.options.onTagExists) {
          var $existingTag = $(".tag", self.$container).filter(function() { return $(this).data("item") === existing; });
          self.options.onTagExists(item, $existingTag);
        }
        return;
      }

      // if length greater than limit
      if (self.items().toString().length + item.length + 1 > self.options.maxInputLength)
        return;

      // raise beforeItemAdd arg
      var beforeItemAddEvent = $.Event('beforeItemAdd', { item: item, cancel: false, options: options});
      self.$element.trigger(beforeItemAddEvent);
      if (beforeItemAddEvent.cancel)
        return;

      // register item in internal array and map
      self.itemsArray.push(item);

      // add a tag element

      var $tag = $('<span class="tag ' + htmlEncode(tagClass) + (itemTitle !== null ? ('" title="' + itemTitle) : '') + '">' + htmlEncode(itemText) + '<span data-role="remove"></span></span>');
      $tag.data('item', item);
      self.findInputWrapper().before($tag);
      $tag.after(' ');

      // add <option /> if item represents a value not present in one of the <select />'s options
      if (self.isSelect && !$('option[value="' + encodeURIComponent(itemValue) + '"]',self.$element)[0]) {
        var $option = $('<option selected>' + htmlEncode(itemText) + '</option>');
        $option.data('item', item);
        $option.attr('value', itemValue);
        self.$element.append($option);
      }

      if (!dontPushVal)
        self.pushVal();

      // Add class when reached maxTags
      if (self.options.maxTags === self.itemsArray.length || self.items().toString().length === self.options.maxInputLength)
        self.$container.addClass('bootstrap-tagsinput-max');

      self.$element.trigger($.Event('itemAdded', { item: item, options: options }));
    },

    /**
     * Removes the given item. Pass true to dontPushVal to prevent updating the
     * elements val()
     */
    remove: function(item, dontPushVal, options) {
      var self = this;

      if (self.objectItems) {
        if (typeof item === "object")
          item = $.grep(self.itemsArray, function(other) { return self.options.itemValue(other) ==  self.options.itemValue(item); } );
        else
          item = $.grep(self.itemsArray, function(other) { return self.options.itemValue(other) ==  item; } );

        item = item[item.length-1];
      }

      if (item) {
        var beforeItemRemoveEvent = $.Event('beforeItemRemove', { item: item, cancel: false, options: options });
        self.$element.trigger(beforeItemRemoveEvent);
        if (beforeItemRemoveEvent.cancel)
          return;

        $('.tag', self.$container).filter(function() { return $(this).data('item') === item; }).remove();
        $('option', self.$element).filter(function() { return $(this).data('item') === item; }).remove();
        if($.inArray(item, self.itemsArray) !== -1)
          self.itemsArray.splice($.inArray(item, self.itemsArray), 1);
      }

      if (!dontPushVal)
        self.pushVal();

      // Remove class when reached maxTags
      if (self.options.maxTags > self.itemsArray.length)
        self.$container.removeClass('bootstrap-tagsinput-max');

      self.$element.trigger($.Event('itemRemoved',  { item: item, options: options }));
    },

    /**
     * Removes all items
     */
    removeAll: function() {
      var self = this;

      $('.tag', self.$container).remove();
      $('option', self.$element).remove();

      while(self.itemsArray.length > 0)
        self.itemsArray.pop();

      self.pushVal();
    },

    /**
     * Refreshes the tags so they match the text/value of their corresponding
     * item.
     */
    refresh: function() {
      var self = this;
      $('.tag', self.$container).each(function() {
        var $tag = $(this),
            item = $tag.data('item'),
            itemValue = self.options.itemValue(item),
            itemText = self.options.itemText(item),
            tagClass = self.options.tagClass(item);

          // Update tag's class and inner text
          $tag.attr('class', null);
          $tag.addClass('tag ' + htmlEncode(tagClass));
          $tag.contents().filter(function() {
            return this.nodeType == 3;
          })[0].nodeValue = htmlEncode(itemText);

          if (self.isSelect) {
            var option = $('option', self.$element).filter(function() { return $(this).data('item') === item; });
            option.attr('value', itemValue);
          }
      });
    },

    /**
     * Returns the items added as tags
     */
    items: function() {
      return this.itemsArray;
    },

    /**
     * Assembly value by retrieving the value of each item, and set it on the
     * element.
     */
    pushVal: function() {
      var self = this,
          val = $.map(self.items(), function(item) {
            return self.options.itemValue(item).toString();
          });

      self.$element.val(val, true).trigger('change');
    },

    /**
     * Initializes the tags input behaviour on the element
     */
    build: function(options) {
      var self = this;

      self.options = $.extend({}, defaultOptions, options);
      // When itemValue is set, freeInput should always be false
      if (self.objectItems)
        self.options.freeInput = false;

      makeOptionItemFunction(self.options, 'itemValue');
      makeOptionItemFunction(self.options, 'itemText');
      makeOptionFunction(self.options, 'tagClass');

      // Typeahead Bootstrap version 2.3.2
      if (self.options.typeahead) {
        var typeahead = self.options.typeahead || {};

        makeOptionFunction(typeahead, 'source');

        self.$input.typeahead($.extend({}, typeahead, {
          source: function (query, process) {
            function processItems(items) {
              var texts = [];

              for (var i = 0; i < items.length; i++) {
                var text = self.options.itemText(items[i]);
                map[text] = items[i];
                texts.push(text);
              }
              process(texts);
            }

            this.map = {};
            var map = this.map,
                data = typeahead.source(query);

            if ($.isFunction(data.success)) {
              // support for Angular callbacks
              data.success(processItems);
            } else if ($.isFunction(data.then)) {
              // support for Angular promises
              data.then(processItems);
            } else {
              // support for functions and jquery promises
              $.when(data)
               .then(processItems);
            }
          },
          updater: function (text) {
            self.add(this.map[text]);
            return this.map[text];
          },
          matcher: function (text) {
            return (text.toLowerCase().indexOf(this.query.trim().toLowerCase()) !== -1);
          },
          sorter: function (texts) {
            return texts.sort();
          },
          highlighter: function (text) {
            var regex = new RegExp( '(' + this.query + ')', 'gi' );
            return text.replace( regex, "<strong>$1</strong>" );
          }
        }));
      }

      // typeahead.js
      if (self.options.typeaheadjs) {
          var typeaheadConfig = null;
          var typeaheadDatasets = {};

          // Determine if main configurations were passed or simply a dataset
          var typeaheadjs = self.options.typeaheadjs;
          if ($.isArray(typeaheadjs)) {
            typeaheadConfig = typeaheadjs[0];
            typeaheadDatasets = typeaheadjs[1];
          } else {
            typeaheadDatasets = typeaheadjs;
          }

          self.$input.typeahead(typeaheadConfig, typeaheadDatasets).on('typeahead:selected', $.proxy(function (obj, datum) {
            if (typeaheadDatasets.valueKey)
              self.add(datum[typeaheadDatasets.valueKey]);
            else
              self.add(datum);
            self.$input.typeahead('val', '');
          }, self));
      }

      self.$container.on('click', $.proxy(function(event) {
        if (! self.$element.attr('disabled')) {
          self.$input.removeAttr('disabled');
        }
        self.$input.focus();
      }, self));

        if (self.options.addOnBlur && self.options.freeInput) {
          self.$input.on('focusout', $.proxy(function(event) {
              // HACK: only process on focusout when no typeahead opened, to
              //       avoid adding the typeahead text as tag
              if ($('.typeahead, .twitter-typeahead', self.$container).length === 0) {
                self.add(self.$input.val());
                self.$input.val('');
              }
          }, self));
        }


      self.$container.on('keydown', 'input', $.proxy(function(event) {
        var $input = $(event.target),
            $inputWrapper = self.findInputWrapper();

        if (self.$element.attr('disabled')) {
          self.$input.attr('disabled', 'disabled');
          return;
        }

        switch (event.which) {
          // BACKSPACE
          case 8:
            if (doGetCaretPosition($input[0]) === 0) {
              var prev = $inputWrapper.prev();
              if (prev.length) {
                self.remove(prev.data('item'));
              }
            }
            break;

          // DELETE
          case 46:
            if (doGetCaretPosition($input[0]) === 0) {
              var next = $inputWrapper.next();
              if (next.length) {
                self.remove(next.data('item'));
              }
            }
            break;

          // LEFT ARROW
          case 37:
            // Try to move the input before the previous tag
            var $prevTag = $inputWrapper.prev();
            if ($input.val().length === 0 && $prevTag[0]) {
              $prevTag.before($inputWrapper);
              $input.focus();
            }
            break;
          // RIGHT ARROW
          case 39:
            // Try to move the input after the next tag
            var $nextTag = $inputWrapper.next();
            if ($input.val().length === 0 && $nextTag[0]) {
              $nextTag.after($inputWrapper);
              $input.focus();
            }
            break;
         default:
             // ignore
         }

        // Reset internal input's size
        var textLength = $input.val().length,
            wordSpace = Math.ceil(textLength / 5),
            size = textLength + wordSpace + 1;
        $input.attr('size', Math.max(this.inputSize, $input.val().length));
      }, self));

      self.$container.on('keypress', 'input', $.proxy(function(event) {
         var $input = $(event.target);

         if (self.$element.attr('disabled')) {
            self.$input.attr('disabled', 'disabled');
            return;
         }

         var text = $input.val(),
         maxLengthReached = self.options.maxChars && text.length >= self.options.maxChars;
         if (self.options.freeInput && (keyCombinationInList(event, self.options.confirmKeys) || maxLengthReached)) {
            // Only attempt to add a tag if there is data in the field
            if (text.length !== 0) {
               self.add(maxLengthReached ? text.substr(0, self.options.maxChars) : text);
               $input.val('');
            }

            // If the field is empty, let the event triggered fire as usual
            if (self.options.cancelConfirmKeysOnEmpty === false) {
               event.preventDefault();
            }
         }

         // Reset internal input's size
         var textLength = $input.val().length,
            wordSpace = Math.ceil(textLength / 5),
            size = textLength + wordSpace + 1;
         $input.attr('size', Math.max(this.inputSize, $input.val().length));
      }, self));

      // Remove icon clicked
      self.$container.on('click', '[data-role=remove]', $.proxy(function(event) {
        if (self.$element.attr('disabled')) {
          return;
        }
        self.remove($(event.target).closest('.tag').data('item'));
      }, self));

      // Only add existing value as tags when using strings as tags
      if (self.options.itemValue === defaultOptions.itemValue) {
        if (self.$element[0].tagName === 'INPUT') {
            self.add(self.$element.val());
        } else {
          $('option', self.$element).each(function() {
            self.add($(this).attr('value'), true);
          });
        }
      }
    },

    /**
     * Removes all tagsinput behaviour and unregsiter all event handlers
     */
    destroy: function() {
      var self = this;

      // Unbind events
      self.$container.off('keypress', 'input');
      self.$container.off('click', '[role=remove]');

      self.$container.remove();
      self.$element.removeData('tagsinput');
      self.$element.show();
    },

    /**
     * Sets focus on the tagsinput
     */
    focus: function() {
      this.$input.focus();
    },

    /**
     * Returns the internal input element
     */
    input: function() {
      return this.$input;
    },

    /**
     * Returns the element which is wrapped around the internal input. This
     * is normally the $container, but typeahead.js moves the $input element.
     */
    findInputWrapper: function() {
      var elt = this.$input[0],
          container = this.$container[0];
      while(elt && elt.parentNode !== container)
        elt = elt.parentNode;

      return $(elt);
    }
  };

  /**
   * Register JQuery plugin
   */
  $.fn.tagsinput = function(arg1, arg2, arg3) {
    var results = [];

    this.each(function() {
      var tagsinput = $(this).data('tagsinput');
      // Initialize a new tags input
      if (!tagsinput) {
          tagsinput = new TagsInput(this, arg1);
          $(this).data('tagsinput', tagsinput);
          results.push(tagsinput);

          if (this.tagName === 'SELECT') {
              $('option', $(this)).attr('selected', 'selected');
          }

          // Init tags from $(this).val()
          $(this).val($(this).val());
      } else if (!arg1 && !arg2) {
          // tagsinput already exists
          // no function, trying to init
          results.push(tagsinput);
      } else if(tagsinput[arg1] !== undefined) {
          // Invoke function on existing tags input
            if(tagsinput[arg1].length === 3 && arg3 !== undefined){
               var retVal = tagsinput[arg1](arg2, null, arg3);
            }else{
               var retVal = tagsinput[arg1](arg2);
            }
          if (retVal !== undefined)
              results.push(retVal);
      }
    });

    if ( typeof arg1 == 'string') {
      // Return the results from the invoked function calls
      return results.length > 1 ? results : results[0];
    } else {
      return results;
    }
  };

  $.fn.tagsinput.Constructor = TagsInput;

  /**
   * Most options support both a string or number as well as a function as
   * option value. This function makes sure that the option with the given
   * key in the given options is wrapped in a function
   */
  function makeOptionItemFunction(options, key) {
    if (typeof options[key] !== 'function') {
      var propertyName = options[key];
      options[key] = function(item) { return item[propertyName]; };
    }
  }
  function makeOptionFunction(options, key) {
    if (typeof options[key] !== 'function') {
      var value = options[key];
      options[key] = function() { return value; };
    }
  }
  /**
   * HtmlEncodes the given value
   */
  var htmlEncodeContainer = $('<div />');
  function htmlEncode(value) {
    if (value) {
      return htmlEncodeContainer.text(value).html();
    } else {
      return '';
    }
  }

  /**
   * Returns the position of the caret in the given input field
   * http://flightschool.acylt.com/devnotes/caret-position-woes/
   */
  function doGetCaretPosition(oField) {
    var iCaretPos = 0;
    if (document.selection) {
      oField.focus ();
      var oSel = document.selection.createRange();
      oSel.moveStart ('character', -oField.value.length);
      iCaretPos = oSel.text.length;
    } else if (oField.selectionStart || oField.selectionStart == '0') {
      iCaretPos = oField.selectionStart;
    }
    return (iCaretPos);
  }

  /**
    * Returns boolean indicates whether user has pressed an expected key combination.
    * @param object keyPressEvent: JavaScript event object, refer
    *     http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331/ecma-script-binding.html
    * @param object lookupList: expected key combinations, as in:
    *     [13, {which: 188, shiftKey: true}]
    */
  function keyCombinationInList(keyPressEvent, lookupList) {
      var found = false;
      $.each(lookupList, function (index, keyCombination) {
          if (typeof (keyCombination) === 'number' && keyPressEvent.which === keyCombination) {
              found = true;
              return false;
          }

          if (keyPressEvent.which === keyCombination.which) {
              var alt = !keyCombination.hasOwnProperty('altKey') || keyPressEvent.altKey === keyCombination.altKey,
                  shift = !keyCombination.hasOwnProperty('shiftKey') || keyPressEvent.shiftKey === keyCombination.shiftKey,
                  ctrl = !keyCombination.hasOwnProperty('ctrlKey') || keyPressEvent.ctrlKey === keyCombination.ctrlKey;
              if (alt && shift && ctrl) {
                  found = true;
                  return false;
              }
          }
      });

      return found;
  }
 
  /**
   * Initialize tagsinput behaviour on inputs and selects which have
   * data-role=tagsinput
   */
  $(function() {
    $("input[data-role=tagsinput], select[multiple][data-role=tagsinput]").tagsinput();
  });
})(window.jQuery);

    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>