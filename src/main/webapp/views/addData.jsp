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
/* .sselect2-container--default{
	display:none !important;
} */
.select2-container--open{
        z-index:9999999         
    }
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
</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 GHMC with unlimited possibilities.">
    <meta name="keywords" content="admin template,GHMC, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>GHMC</title>
        <link rel="icon" type="image/png" sizes="96x96" href="/ghmc/resources/images/protect-favicon.png" >

	<script src="/ghmc/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/ghmc/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/app-assets/css/plugins/forms/pickers/form-flat-pickr.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

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
           <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">
                 <c:if test="${action eq 'edit'}">Edit Form</c:if>
		 		 <c:if test="${action eq 'add'}"> Add Form</c:if>
                 </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                    <%--   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li> --%>
                   <!--  <li class="breadcrumb-item">Masters
                    </li> -->
                    <li class="breadcrumb-item active"><a href="<%=request.getContextPath() %>/home">Master Data</a>
                    </li>
                  </ol>
                  
                </div>
              </div>
            </div>
          </div>
           <div class="content-header-left col-md-3 col-12 mb-2">
            <a href="<%=request.getContextPath() %>/home" class="btn btn-gradient-dark" style="float: right;"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"/></svg> &nbsp; Back</a>
           </div>
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="multiple-column-form">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h4 class="card-title"></h4>
        </div>
        <div class="card-body">
        
        <form id="jquery-val-form" action="<%=request.getContextPath() %>/add-master-data"  method="post" novalidate="novalidate">
         <div class="row">
         <input type="hidden" name="id_fk" value="${historyData.id_fk }"/><!--  type="hidden" -->
           <input type="hidden" name="id" value="${masterData.id }"/>
           <input type="hidden" name="createdBy" value="${historyData.createdBy }"/>
            <input type="hidden" name="approvedBy" value="${historyData.approvedBy }"/>
           <input type="hidden" name="reviewedBy" value="${historyData.reviewedBy }"/>
           
            <input type="hidden" name="createdDate" value="${historyData.createdDate }"/>
            <input type="hidden" name="reviewedDate" value="${historyData.reviewedDate }"/>
           <input type="hidden" name="approvedDate" value="${historyData.approvedDate }"/>
         <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-zoneCode">Zone<span style="color:red;">*</span>
               <c:if test = "${historyData.zoneCode ne masterData.zoneCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select class="form-select select2 select2-hidden-accessible" onchange="getCircleDataByZone(this.value);"   id="select-zoneCode" name="zoneCode" data-select2-id="select-zoneCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option> 
                <c:forEach var ="obj" items ="${zoneList }">
                <option zoneIncharge="${obj.zoneCode }" value="${obj.zoneCode }" <c:if test="${historyData.zoneCode eq obj.zoneCode}"> selected</c:if>>[${obj.zoneCode }] - ${obj.zoneName }</option>
                </c:forEach>
              </select>
              </div>
              <c:if test = "${historyData.zoneCode ne masterData.zoneCode }" ><span class="badge badge-light-dark">Previously : ${masterData.zoneCode}</span></c:if>
            </div></div>
            
             <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-zoneInchanrge">Zone Inchanrge</label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="select-zoneInchanrge" data-select2-id="select-zoneInchanrge" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option> 
                <c:forEach var ="obj" items ="${zoneList }">
                <option value="${obj.zoneCode }" <c:if test="${historyData.zoneCode eq obj.zoneCode}"> selected</c:if>>[${obj.zoneinchargeName }] - ${obj.zoneinchargeMobileNo }</option>
                </c:forEach>
              </select>
              </div>
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-circleCode">Circle<span style="color:red;">*</span>
                <c:if test = "${historyData.zoneCode ne masterData.zoneCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative"> 
              <select class="form-select select2 select2-hidden-accessible" 
              onchange="getWardDataByCircle(this.value);getTransactionDataByWard(this.value);" id="select-circleCode" name="circleCode" data-select2-id="select-circleCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${circleList }">
                <option circleincharge="${obj.circleCode }" value="${obj.circleCode }" <c:if test="${historyData.circleCode eq obj.circleCode}"> selected</c:if>>[${obj.circleCode }] - ${obj.circleName }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
              <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-circleInchanrge">Circle Inchanrge  </label>
              <div class="position-relative"><select  class="form-select select2 select2-hidden-accessible" id="select-circleInchanrge"  data-select2-id="select-circleInchanrge" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${circleList }">
                <option value="${obj.circleCode }" <c:if test="${historyData.circleCode eq obj.circleCode}"> selected</c:if>>[${obj.circleInchargeNmae }] - ${obj.circleInchargeNo }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-wardCode">Ward<span style="color:red;">*</span>
                <c:if test = "${historyData.wardCode ne masterData.wardCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative"><select onchange="wardInchargeMethod(this.value);" class="form-select select2 select2-hidden-accessible" id="select-wardCode" name="wardCode" data-select2-id="select-wardCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${wardList }">
                <option value="${obj.wardCode }" <c:if test="${historyData.wardCode eq obj.wardCode}"> selected</c:if>>[${obj.wardCode }] - ${obj.wardName }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
             <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-wardInchanrge">Ward Inchanrge  </label>
              <div class="position-relative"><select class="form-select select2 select2-hidden-accessible" id="select-wardInchanrge"  data-select2-id="select-wardInchanrge" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${wardList }">
                <option value="${obj.wardCode }" <c:if test="${historyData.wardCode eq obj.wardCode}"> selected</c:if>>[${obj.wardInchargeName }] - ${obj.wardInchargeNo }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
             <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-sfaCode">SFA<span style="color:red;">*</span></label>
              <div class="position-relative"><select  class="form-select select2 select2-hidden-accessible" id="select-sfaCode" name="sfaCode" data-select2-id="select-sfaCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${sfa }">
                <option value="${obj.sfaCode }" <c:if test="${historyData.sfaCode eq obj.sfaCode}"> selected</c:if>>[${obj.sfaCode }] - ${obj.sfa_name } - ${obj.sfa_contactNo }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
           
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-transferstationCode">TransferStation </label>
              <div class="position-relative"><select onchange="transferstationInchargeMethod(this.value);" class="form-select select2 select2-hidden-accessible" id="select-transferstationCode" name="transferstationCode" data-select2-id="select-transferstationCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${tList }">
                <option value="${obj.transferstationCode }" <c:if test="${historyData.transferstationCode eq obj.transferstationCode}"> selected</c:if>>[${obj.transferstationCode }] - ${obj.transferstationName }</option>
                </c:forEach>
              </select></div>
            </div></div>
            <div class="divider">
            <div class="divider-text">VEHICLE INFORMATION</div>
          </div>
            
             <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-vehicle_regNo_type">Vehicle Reg No Type <span style="color:red;">*</span></label>
              <div class="position-relative"><select  class="form-select select2 select2-hidden-accessible" id="select-vehicle_regNo_type" name="vehicle_regNo_type" data-select2-id="select-vehicle_regNo_type" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                 <option value="Temporary" >Temporary</option>
                  <option value="Permanent" >Permanent</option>
               
              </select></div>
            </div></div>
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="vehicleRegisterationNo">Vehicle Reg No<span style="color:red;">*</span>
              
              </label>
              <input type="text" class="form-control" id="vehicleRegisterationNo" name="vehicleRegisterationNo" placeholder="Vehicle Reg No">
            </div></div>
            
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="chasisNo">Chasis No<span style="color:red;"></span>
              
              </label>
              <input type="text" class="form-control" id="chasisNo" name="chasisNo" placeholder="Chasis No">
            </div></div>
            
             
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="chasisNo">VIN<span style="color:red;"></span>
              
              </label>
              <input type="text" class="form-control" id="vehicle_identity_no" name="vehicle_identity_no" placeholder="Vehicle Identity No">
            </div></div>
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="vehicleType">Vehicle Type
               <c:if test = "${historyData.vehicleType ne masterData.vehicleType }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="vehicleType"  name="vehicleType" data-select2-id="select-vehicleType" tabindex="-1" aria-hidden="true">
                  <option value="" data-select2-id="2">Select</option>
               <c:forEach var ="obj" items ="${vehicle }">
                <option value="${obj.vehicleType }" <c:if test="${historyData.vehicleType eq obj.vehicleType}"> selected</c:if>>${obj.vehicleType }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
               <c:if test = "${historyData.vehicleType ne masterData.vehicleType }" ><span class="badge badge-light-dark">Previously : ${masterData.vehicleType}</span></c:if>
            </div>  </div>
            
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="ownertype">Owner Type
              <c:if test = "${historyData.ownertype ne masterData.ownertype }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="ownertype" name="ownertype" data-select2-id="select-ownertype" tabindex="-1" aria-hidden="true">
               
                   <option value="" data-select2-id="2">Select</option> <c:forEach var ="obj" items ="${owner }">
                <option value="${obj.owner_type }" <c:if test="${historyData.ownertype eq obj.owner_type}"> selected</c:if>>${obj.owner_type }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
               <c:if test = "${historyData.ownertype ne masterData.ownertype }" ><span class="badge badge-light-dark">Previously : ${masterData.ownertype}</span></c:if>
            </div> </div>
            

            
          <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="operationType">Operation Type
               <c:if test = "${historyData.operationType ne masterData.operationType }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="operationType" name="operationType" data-select2-id="select-operationType" tabindex="-1" aria-hidden="true">
                   <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${operation }">
                <option value="${obj.operationType }" <c:if test="${historyData.operationType eq obj.operationType}"> selected</c:if>>${obj.operationType }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
              <c:if test = "${historyData.operationType ne masterData.operationType }" ><span class="badge badge-light-dark">Previously : ${masterData.operationType}</span></c:if>
            </div> </div>
            
              <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Driver Name
              <c:if test = "${historyData.driverName ne masterData.driverName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="driverName" name="driverName" placeholder="Driver Name" value="${historyData.driverName}">
              <c:if test = "${historyData.driverName ne masterData.driverName }" ><span class="badge badge-light-dark">Previously : ${masterData.driverName}</span></c:if>
            </div>
            </div>
            
             <div class="col-md-3 col-6"><label class="form-label" for="basic-default-name">Driver Mobile No</label>
           	<div class="input-group input-group-merge">
                  <span class="input-group-text">(+91)</span>
                  <input type="number" class="form-control" id="driverMobileNo"   value="${historyData.driverMobileNo}"  name="driverMobileNo" placeholder="Driver Mobile No">
              </div>
            </div>
     
      
            <div class="col-md-3 col-6"><div class="mb-1">
              <label for="vehicle_vin_photo" class="form-label">Vehicle Vin Photo</label>
              <input class="form-control" type="file" id="vehicle_vin_photo" name="vehicle_vin_photo">
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label for="vehicle_regNo_photo" class="form-label">Vehicle Reg No Photo</label>
              <input class="form-control" type="file" id="vehicle_regNo_photo" name="vehicle_regNo_photo">
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label for="driver_adharNo" class="form-label">Adhar</label>
              <input class="form-control" type="file" id="driver_adharNo" name="driver_adharNo">
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label for="qr_code_identity" class="form-label">QR Code Identity</label>
              <input class="form-control" type="file" id="qr_code_identity" name="qr_code_identity">
            </div></div>
         
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="dob">Onboard Date</label>
              <input type="text" class="form-control picker flatpickr-input" name="dob" id="dob">
            </div></div>
           
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="d-block form-label" for="validationBio">Bio</label>
              <textarea class="form-control" id="validationBio" name="validationBiojq" rows="3"></textarea>
            </div></div>
            
            <button type="submit" class="btn btn-primary waves-effect waves-float waves-light" name="submit" value="Submit">Submit</button>
             </div>
          </form>
          
          
          
           <c:if test="${action eq 'add'}">
                <form id="jquery-val-form" action="<%=request.getContextPath() %>/add-master-data"  method="post" novalidate="novalidate">
          </c:if>
		   <c:if test="${action eq 'edit'}">
		           <form id="jquery-val-form" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-master-data" method="post" class="form-horizontal" role="form" >
		   </c:if>
          
          <div class="row">
        
           
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="zone">Zone
              <c:if test = "${historyData.zoneCode ne masterData.zoneCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select onchange="getCircleDataByZone(this.value);" class="form-select select2 select2-hidden-accessible" id="zone" name="zoneCode" data-select2-id="zone" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${zoneList }">
                <option value="${obj.zoneCode }" <c:if test="${historyData.zoneCode eq obj.zoneCode}"> selected</c:if>>[${obj.zoneCode }] - ${obj.zoneName }</option>
                </c:forEach>
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
              <c:if test = "${historyData.zoneCode ne masterData.zoneCode }" ><span class="badge badge-light-dark">Previously : ${masterData.zoneName}</span></c:if>
            </div> 
            </div>
             <div class="col-md-3 col-6">
           <div class="mb-1">
              <label class="form-label" for="circle">Circle
               <c:if test = "${historyData.circleCode ne masterData.circleCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select onchange="getWardDataByCircle(this.value);getTransactionDataByWard(this.value);"   class="form-select select2 select2-hidden-accessible" id="circle" name="circleCode" data-select2-id="circle" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                 <c:forEach var ="obj" items ="${circleList }">
                <option value="${obj.circleCode }" <c:if test="${historyData.circleCode eq obj.circleCode}"> selected</c:if>>[${obj.circleCode }] - ${obj.circleName }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
           <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
           <c:if test = "${historyData.circleCode ne masterData.circleCode }" ><span class="badge badge-light-dark">Previously : ${masterData.circleName}</span></c:if>
            </div> 
            </div>
            
             <div class="col-md-3 col-6">
          <div class="mb-1">
              <label class="form-label" for="ward">Ward
              <c:if test = "${historyData.wardCode ne masterData.wardCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="ward" name="wardCode" data-select2-id="ward" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                 <c:forEach var ="obj" items ="${wardList }">
                <option value="${obj.wardCode }" <c:if test="${historyData.wardCode eq obj.wardCode}"> selected</c:if>>[${obj.wardCode }] - ${obj.wardName }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
              <c:if test = "${historyData.wardCode ne masterData.wardCode }" ><span class="badge badge-light-dark">Previously : ${masterData.wardName}</span></c:if>
            </div> 
            </div>
            
             <div class="col-md-3 col-6">
          <div class="mb-1">
              <label class="form-label" for="transferstationCode">Transfer Station
                <c:if test = "${historyData.transferstationCode ne masterData.transferstationCode }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="transferstationCode" name="transferstationCode" data-select2-id="transferstationCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                 <c:forEach var ="obj" items ="${tList }">
                <option value="${obj.transferstationCode }" <c:if test="${historyData.transferstationCode eq obj.transferstationCode}"> selected</c:if>>[${obj.transferstationCode }] - ${obj.transferstationName }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
               <c:if test = "${historyData.transferstationCode ne masterData.transferstationCode }" ><span class="badge badge-light-dark">Previously : ${masterData.transferstationName}</span></c:if>
            </div> 
            </div>
            
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Zone Incharge
              <c:if test = "${historyData.zoneinchargeName ne masterData.zoneinchargeName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="zoneinchargeName" name="zoneinchargeName" placeholder="Zone Incharge Name" value="${historyData.zoneinchargeName}">
               <c:if test = "${historyData.zoneinchargeName ne masterData.zoneinchargeName }" ><span class="badge badge-light-dark">Previously : ${masterData.zoneinchargeName}</span></c:if> 
            </div>
            </div>
            
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Zone Incharge Mobile No
               <c:if test = "${historyData.inchargeMobileNo ne masterData.inchargeMobileNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="number" class="form-control" id="zoneinchargeMobileNo"  name="zoneinchargeMobileNo" placeholder="Zone Incharge Mobile No"  value="${historyData.zoneinchargeMobileNo}">
              <p id="validationMessage"></p>
              <c:if test = "${historyData.zoneinchargeMobileNo ne masterData.zoneinchargeMobileNo }" ><span class="badge badge-light-dark">Previously : ${masterData.zoneinchargeMobileNo}</span></c:if> 
            </div></div>
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Circle Incharge
              <c:if test = "${historyData.inchargeName ne masterData.inchargeName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="circleInchargeName" name="circleInchargeName" placeholder="Circle Name" value="${historyData.circleInchargeName}">
               <c:if test = "${historyData.inchargeName ne masterData.circleInchargeName }" ><span class="badge badge-light-dark">Previously : ${masterData.circleInchargeName}</span></c:if> 
            </div>
            </div>
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Circle Incharge Mobile No
               <c:if test = "${historyData.circleinchargeMobileNo ne masterData.circleinchargeMobileNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="number" class="form-control" id="circleinchargeMobileNo"  name="circleinchargeMobileNo" placeholder="Circle Incharge Mobile No"  value="${historyData.circleinchargeMobileNo}">
              <p id="validationMessage"></p>
              <c:if test = "${historyData.circleinchargeMobileNo ne masterData.circleinchargeMobileNo }" ><span class="badge badge-light-dark">Previously : ${masterData.circleinchargeMobileNo}</span></c:if> 
            </div></div>
       
            
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Ward Incharge
              <c:if test = "${historyData.wardinchargeName ne masterData.wardinchargeName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="wardinchargeName" name="wardinchargeName" placeholder="Ward Incharge Name" value="${historyData.wardinchargeName}">
               <c:if test = "${historyData.wardinchargeName ne masterData.wardinchargeName }" ><span class="badge badge-light-dark">Previously : ${masterData.wardinchargeName}</span></c:if> 
            </div>
            </div>
            
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Ward Incharge Mobile No
               <c:if test = "${historyData.wardinchargeMobileNo ne masterData.wardinchargeMobileNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="number" class="form-control" id="wardinchargeMobileNo"  name="wardinchargeMobileNo" placeholder="Ward Incharge Mobile No"  value="${historyData.wardinchargeMobileNo}">
              <p id="validationMessage"></p>
              <c:if test = "${historyData.wardinchargeMobileNo ne masterData.wardinchargeMobileNo }" ><span class="badge badge-light-dark">Previously : ${masterData.wardinchargeMobileNo}</span></c:if> 
            </div></div>
            
                 
            <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">SFA(Sanitary Field Assistant)
              <c:if test = "${historyData.sfa ne masterData.sfa }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="sfa" name="sfa" placeholder="SFA" value="${historyData.sfa}">
               <c:if test = "${historyData.sfa ne masterData.sfa }" ><span class="badge badge-light-dark">Previously : ${masterData.sfa}</span></c:if> 
            </div>
            </div>
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">SFA Mobile No
               <c:if test = "${historyData.sfa_mobile ne masterData.sfa_mobile }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="number" class="form-control" id="sfa_mobile"  name="sfa_mobile" placeholder="SFA Mobile No"  value="${historyData.sfa_mobile}">
              <p id="validationMessage"></p>
              <c:if test = "${historyData.sfa_mobile ne masterData.sfa_mobile }" ><span class="badge badge-light-dark">Previously : ${masterData.sfa_mobile}</span></c:if> 
            </div></div> 
            
             <div class="col-md-3 col-6">
           <div class="mb-1">
              <label class="form-label" for="basic-default-name">Vehicle Registeration No
               <c:if test = "${historyData.vehicleRegisterationNo ne masterData.vehicleRegisterationNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="vehicleRegisterationNo"  name="vehicleRegisterationNo"  value="${historyData.vehicleRegisterationNo}" placeholder="Vehicle Registeration No">
              <p id="validationMessage"></p>
                <c:if test = "${historyData.vehicleRegisterationNo ne masterData.vehicleRegisterationNo }" ><span class="badge badge-light-dark">Previously : ${masterData.vehicleRegisterationNo}</span></c:if>
            </div> </div>
              <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Chasis No
               <c:if test = "${historyData.chasisNo ne masterData.chasisNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="chasisNo" name="chasisNo" placeholder="Chasis No" value="${historyData.chasisNo}">
              <p id="validationMessage"></p>
               <c:if test = "${historyData.chasisNo ne masterData.chasisNo }" ><span class="badge badge-light-dark">Previously : ${masterData.chasisNo}</span></c:if>
            </div></div> 
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="vehicleType">Vehicle Type
               <c:if test = "${historyData.vehicleType ne masterData.vehicleType }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="vehicleType"  name="vehicleType" data-select2-id="vehicleType" tabindex="-1" aria-hidden="true">
                  <option value="" data-select2-id="2">Select</option>
               <c:forEach var ="obj" items ="${vehicle }">
                <option value="${obj.vehicleType }" <c:if test="${historyData.vehicleType eq obj.vehicleType}"> selected</c:if>>${obj.vehicleType }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
               <c:if test = "${historyData.vehicleType ne masterData.vehicleType }" ><span class="badge badge-light-dark">Previously : ${masterData.vehicleType}</span></c:if>
            </div>  </div>
            
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="ownertype">Owner Type
              <c:if test = "${historyData.ownertype ne masterData.ownertype }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="ownertype" name="ownertype" data-select2-id="ownertype" tabindex="-1" aria-hidden="true">
               
                   <option value="" data-select2-id="2">Select</option> <c:forEach var ="obj" items ="${owner }">
                <option value="${obj.owner_type }" <c:if test="${historyData.ownertype eq obj.owner_type}"> selected</c:if>>${obj.owner_type }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
               <c:if test = "${historyData.ownertype ne masterData.ownertype }" ><span class="badge badge-light-dark">Previously : ${masterData.ownertype}</span></c:if>
            </div> </div>
            

            
          <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="operationType">Operation Type
               <c:if test = "${historyData.operationType ne masterData.operationType }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="operationType" name="operationType" data-select2-id="operationType" tabindex="-1" aria-hidden="true">
                   <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${operation }">
                <option value="${obj.operationType }" <c:if test="${historyData.operationType eq obj.operationType}"> selected</c:if>>${obj.operationType }</option>
                </c:forEach>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
              <c:if test = "${historyData.operationType ne masterData.operationType }" ><span class="badge badge-light-dark">Previously : ${masterData.operationType}</span></c:if>
            </div> </div>
            
              <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Driver Name
              <c:if test = "${historyData.driverName ne masterData.driverName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="driverName" name="driverName" placeholder="Driver Name" value="${historyData.driverName}">
              <c:if test = "${historyData.driverName ne masterData.driverName }" ><span class="badge badge-light-dark">Previously : ${masterData.driverName}</span></c:if>
            </div>
            </div>
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Driver Mobile No
              <c:if test = "${historyData.driverMobileNo ne masterData.driverMobileNo }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="number" class="form-control" id="driverMobileNo"   value="${historyData.driverMobileNo}"  name="driverMobileNo" placeholder="Driver Mobile No">
              <p id="validationMessage"></p>
               <c:if test = "${historyData.driverMobileNo ne masterData.driverMobileNo }" ><span class="badge badge-light-dark">Previously : ${masterData.driverMobileNo}</span></c:if>
            </div></div> 
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Landmark Name
              <c:if test = "${historyData.landmarkName ne masterData.landmarkName }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="landmarkName" name="landmarkName"  value="${historyData.landmarkName}"  placeholder="Landmark Name">
              <c:if test = "${historyData.landmarkName ne masterData.landmarkName }" ><span class="badge badge-light-dark">Previously : ${masterData.landmarkName}</span></c:if>
            </div>
            </div>
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Latitude
              <c:if test = "${historyData.latitude ne masterData.latitude }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="latitude"  name="latitude" value="${historyData.latitude}"  placeholder="latitude">
              <p id="validationMessage"></p>
              <c:if test = "${historyData.latitude ne masterData.latitude }" ><span class="badge badge-light-dark">Previously : ${masterData.latitude}</span></c:if>
            </div></div> 
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">Longitude
                <c:if test = "${historyData.longitude ne masterData.longitude }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <input type="text" class="form-control" id="longitude" name="longitude" value="${historyData.longitude}" placeholder="Longitude">
              <c:if test = "${historyData.longitude ne masterData.longitude }" ><span class="badge badge-light-dark">Previously : ${masterData.longitude}</span></c:if>
              
            </div>
            </div>
            
             <div class="col-md-3 col-6">
              <c:if test = "${historyData.status ne masterData.status }" > <span class="text-danger">(Edited)</span></c:if>
             <div class="input-group mt-2 mb-1">
          <input type="number" class="form-control" placeholder="Radius In Mtrs" id="radiusInMtrs" value="${historyData.radiusInMtrs}"  name="radiusInMtrs" aria-label="Recipient's username" aria-describedby="basic-addon13">
          <span class="input-group-text" id="basic-addon13">Meters</span>
<c:if test = "${historyData.radiusInMtrs ne masterData.radiusInMtrs }" ><span class="badge badge-light-dark">Previously : ${masterData.radiusInMtrs}</span></c:if>
          
        </div></div> 
           <!--  
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">TS Latitude</label>
              <input type="text" class="form-control" id="tS_LAT"  name="tS_LAT" placeholder="Ts latitude">
              <p id="validationMessage"></p>
              
            </div></div> 
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="basic-default-name">TS Longitude</label>
              <input type="text" class="form-control" id="tS_LONG" name="tS_LONG" placeholder="Ts Longitude">
            </div>
            </div> -->
            
              <div class="col-md-3 col-6">
        <%--     <div class="mb-1">
              <label class="form-label" for="status">Status
               <c:if test = "${historyData.status ne masterData.status }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="status"  name="status" data-select2-id="status" tabindex="-1" aria-hidden="true">
                   <option value="" data-select2-id="2">Select</option>
                   <option value="Active" <c:if test="${historyData.status == 'Active'}"> selected</c:if>>Active</option>
                   <option value="Inactive" <c:if test="${historyData.status == 'Inactive'}"> selected</c:if>>Inactive</option>
               
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                               <c:if test = "${historyData.status ne masterData.status }" ><span class="badge badge-light-dark">Previously : ${masterData.status}</span></c:if>
              
            </div>  --%>
            <div class="mb-1">
              <label class="form-label" for="select-status">Status</label>
              <div class="position-relative"><select class="form-select select2 select2-hidden-accessible" id="select-status" name="status" data-select2-id="select-status" tabindex="-1" aria-hidden="true">
                 <option value="" data-select2-id="2">Select</option>
                   <option value="Active" <c:if test="${historyData.status == 'Active'}"> selected</c:if>>Active</option>
                   <option value="Inactive" <c:if test="${historyData.status == 'Inactive'}"> selected</c:if>>Inactive</option>
              </select>
     </div>
            </div>
            </div>
            
              <div class="col-md-3 col-6">
              <div class="mb-1">
              <label class="form-label" for="background_Status">System Status</label>
              <div class="position-relative"><select class="form-select select2 select2-hidden-accessible" id="background_Status" name="backgroundStatus" data-select2-id="background_Status" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option> 
               	   <option value="Active" <c:if test="${historyData.backgroundStatus == 'Active'}"> selected</c:if>>Active</option>
                   <option value="Inactive" <c:if test="${historyData.backgroundStatus == 'Inactive'}"> selected</c:if>>Inactive</option>
              </select></div>
            </div>
            
            <%-- <div class="mb-1">
              <label class="form-label" for="backgroundStatus">Background Status
                <c:if test = "${historyData.backgroundStatus ne masterData.backgroundStatus }" > <span class="text-danger">(Edited)</span></c:if>
              </label>
              <div class="position-relative">
              <select  class="form-select select2 select2-hidden-accessible" id="backgroundStatus" name="backgroundStatus" data-select2-id="backgroundStatus" tabindex="-1" aria-hidden="true">
                   <option value="" data-select2-id="2">Select</option> 
               	   <option value="Active" <c:if test="${historyData.backgroundStatus == 'Active'}"> selected</c:if>>Active</option>
                   <option value="Inactive" <c:if test="${historyData.backgroundStatus == 'Inactive'}"> selected</c:if>>Inactive</option>
              </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 590.5px;">
              <span class="dropdown-wrapper" aria-hidden="true"></span></span></div>
                 <c:if test = "${historyData.backgroundStatus ne masterData.backgroundStatus }" ><span class="badge badge-light-dark">Previously : ${masterData.backgroundStatus}</span></c:if>
            </div> --%> 
            
            
            </div>
            
             <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="backgroundStatus">Remarks  
              <c:if test = "${historyData.remarks ne masterData.remarks }" >
              <span class="text-danger">(Edited)</span></c:if></label>
             <div class="form-floating mb-0">
                <textarea data-length="1000" class="form-control char-textarea active" name="remarks" id="remarks" rows="3" placeholder="Counter" style="height: 100px; color: rgb(78, 81, 84);">
                ${historyData.remarks}</textarea>
                <!-- <label for="textarea-counter">Counter</label> -->
              </div>
             <c:if test = "${historyData.remarks ne masterData.remarks }" ><span class="badge badge-light-dark">Previously : ${masterData.remarks}</span></c:if>
            </div> </div>
            
             <c:if test="${action eq 'edit'}">
 				<div class="col-sm-12 text-center">
 				 <c:if test="${empty masterData.reviewedBy  && sessionScope.USER_ROLE eq 'Creator'}">
 				 <span class="badge badge-light-danger  me-1">You Don't Have Access for this Action</span>
 				 </c:if>
 				  <c:if test="${empty masterData.reviewedBy  && sessionScope.USER_ROLE eq 'Approver'}">
 				 <span class="badge badge-light-danger  me-1">Reviewer Action Pending</span>
 				 </c:if>
 				  <c:if test="${empty masterData.reviewedBy && sessionScope.USER_ROLE eq 'Reviewer' }">
 				    <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Reviewed</button>
 				 </c:if>
 				 <c:if test="${not empty masterData.reviewedBy && empty masterData.approvedBy && sessionScope.USER_ROLE eq 'Approver' }">
 				    <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light">Approved</button>
 				 </c:if>
 				  <c:if test="${not empty masterData.approvedBy }">
 				    <span class="badge badge-light-success  me-1">Approved</span>
 				 </c:if>
 				  <c:if test="${not empty masterData.reviewedBy &&  empty masterData.approvedBy && (sessionScope.USER_ROLE eq 'Reviewer' || sessionScope.USER_ROLE eq 'Creator')}">
 				 <button type="button" class="btn btn-outline-warning me-1 waves-effect">Review done Approval Pending</button>
 				 </c:if>
 				   <a href="<%=request.getContextPath() %>/home" class="btn btn-gradient-dark">Go to home <i data-feather="home"></i></a>
                </div>        
             </c:if>
		   <c:if test="${action eq 'add'}">
 			<div class="col-sm-12 text-center">
                <button type="submit" class="btn btn-primary me-1 waves-effect waves-float waves-light" name="submit" value="Submit">Submit</button>
                <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
              </div>		   </c:if>
		   
            
        
            </div>
          </form>
        </div>
        
      </div>
    </div>
  </div>
</section>
											
 																					


    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

 
    <!-- BEGIN: Vendor JS-->
    <script src="/ghmc/resources/app-assets/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/ghmc/resources/app-assets/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/ghmc/resources/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/ghmc/resources/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="/ghmc/resources/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/ghmc/resources/app-assets/js/core/app-menu.min.js"></script>
    <script src="/ghmc/resources/app-assets/js/core/app.min.js"></script>
    <script src="/ghmc/resources/app-assets/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="/ghmc/resources/app-assets/js/scripts/forms/form-validation.js"></script>
    
  <form action="<%=request.getContextPath()%>/export-records" name="exportGHMCForm" id="exportGHMCForm" target="_blank" method="post">	
      
        <input type="hidden" name="records_code" id="exportGHMC_filter" />
        <input type="hidden" name="assigned_to_sbu" id="exportSBU_Code_filter" />
            <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
    <script>

      $(window).on("load",(function(){
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
         if ("geolocation" in navigator) {
                    navigator.geolocation.getCurrentPosition(function(position) {
                        var latitude = position.coords.latitude;
                        var longitude = position.coords.longitude;
						if('${action}' == 'add'){
							 $("#latitude").val(latitude);
						     $("#longitude").val(longitude);
						}
                        // Assign values to input fields
                       
                    });
                } else {
                    alert("Geolocation is not supported by this browser.");
                }
      
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      
  	function getCircleDataByZone(zoneCode){
  		
        if ($.trim(zoneCode) != "") {
        	var zone = $("#select-zoneCode").find('option:selected').attr("zoneincharge");
   			$("#select-zoneInchanrge").val(zone);
   			$("#select-zoneInchanrge").select2();
        	$("#select-circleCode option:not(:first)").remove();
        	var myParams = { zoneCode: zoneCode };
            $.ajax({
                url: "<%=request.getContextPath()%>/ajax/getCircleDataByZone",
                data: myParams, cache: false,async: false,
                success: function (data) {
                    if (data.length > 0) {
                        $.each(data, function (i, val) {
		                      $("#select-circleCode").append('<option circleincharge="' + val.circleCode + '" value="' + val.circleCode + '">' +'['+$.trim(val.circleCode)+'] - '+ $.trim(val.circleName) +'</option>');
		                      $("#select-circleInchanrge").append('<option value="' + val.circleCode + '">' +'['+$.trim(val.circleInchargeNmae)+'] - '+ $.trim(val.circleInchargeNo) +'</option>');

                        });
                    }
                },error: function (jqXHR, exception) {
    	   			      $(".page-loader").hide();
       	          	  getErrorMessage(jqXHR, exception);
       	     	  }
            });
        }
    }		
  	
  	function getWardDataByCircle(circleCode){
        if ($.trim(circleCode) != "") {
        	var circle = $("#select-circleCode").find('option:selected').attr("circleincharge");
   			$("#select-circleInchanrge").val(circle);
   			$("#select-circleInchanrge").select2();
        	$("#select-wardCode option:not(:first)").remove();
        	var myParams = { circleCode: circleCode };
            $.ajax({
                url: "<%=request.getContextPath()%>/ajax/getWardDataByCircle",
                data: myParams, cache: false,async: false,
                success: function (data) {
                    if (data.length > 0) {
                        $.each(data, function (i, val) {
		                      $("#select-wardCode").append('<option wardincharge="' + val.wardCode + '" value="' + val.wardCode + '">' +'['+$.trim(val.wardCode)+'] - '+ $.trim(val.wardName) +'</option>');
		                      $("#select-wardInchanrge").append('<option value="' + val.wardCode + '">' +'['+$.trim(val.wardInchargeName)+'] - '+ $.trim(val.wardInchargeNo) +'</option>');

                        });
                    }
                },error: function (jqXHR, exception) {
    	   			      $(".page-loader").hide();
       	          	  getErrorMessage(jqXHR, exception);
       	     	  } 
            });
        }
    }		
  	
  	function wardInchargeMethod(wardCode){
  		 if ($.trim(wardCode) != "") {
         	var wardI = $("#select-wardCode").find('option:selected').attr("wardincharge");
    			$("#select-wardInchanrge").val(wardI);
    			$("#select-wardInchanrge").select2();
  	}
  	}
  		 
	function getTransactionDataByWard(circleCode){
		var zoneCode  = $('#select-zoneCode').val();
        if ($.trim(circleCode) != "") {
        	$("#select-transferstationCode option:not(:first)").remove();
        	var myParams = { circleCode: circleCode , zoneCode: zoneCode};
            $.ajax({
                url: "<%=request.getContextPath()%>/ajax/getTransactionList",
                data: myParams, cache: false,async: false,
                success: function (data) {
                    if (data.length > 0) {
                        $.each(data, function (i, val) {
		                      $("#select-transferstationCode").append('<option  transferstationincharge="' + val.transferstationCode + '" value="' + val.transferstationCode + '">' +'['+$.trim(val.transferstationCode)+'] - '+ $.trim(val.transferstationName) +'</option>');
		                      $("#select-transferstationInchanrge").append('<option value="' + val.transferstationCode + '">' +'['+$.trim(val.transferstationInchargeNmae)+'] - '+ $.trim(val.transferstationInchargeNo) +'</option>');
                        });
                    }
                },error: function (jqXHR, exception) {
    	   			      $(".page-loader").hide();
       	          	  getErrorMessage(jqXHR, exception);
       	     	  }
            });
        }
    }		
	
	function transferstationInchargeMethod(tCode){
 		 if ($.trim(tCode) != "") {
        	var TI = $("#select-wardCode").find('option:selected').attr("transferstationincharge");
   			$("#select-transferstationInchanrge").val(TI);
   			$("#select-transferstationInchanrge").select2();
 	}
	}
	
	 jQuery("#driverMobileNo").keypress(function (e) {
         var length = jQuery(this).val().length;
       if(length > 9) {
            return false;
       } else if(e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
            return false;
       } else if((length == 0) && (e.which == 48)) {
            return false;
       }
   });
    </script>
   
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>