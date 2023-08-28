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
  <title>SFA</title>
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
            <a href="<%=request.getContextPath() %>/sfa" class="btn btn-gradient-dark" style="float: right;"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M257.5 445.1l-22.2 22.2c-9.4 9.4-24.6 9.4-33.9 0L7 273c-9.4-9.4-9.4-24.6 0-33.9L201.4 44.7c9.4-9.4 24.6-9.4 33.9 0l22.2 22.2c9.5 9.5 9.3 25-.4 34.3L136.6 216H424c13.3 0 24 10.7 24 24v32c0 13.3-10.7 24-24 24H136.6l120.5 114.8c9.8 9.3 10 24.8.4 34.3z"/></svg> &nbsp; Back</a>
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
     
            <c:if test="${action eq 'add'}">
                <form id="jquery-val-form" action="<%=request.getContextPath() %>/add-sfa-data"  method="post" novalidate="novalidate">
          </c:if>
		   <c:if test="${action eq 'edit'}">
		          <form id="jquery-val-form" action="<%=request.getContextPath() %>/update-sfa-data"  method="post" novalidate="novalidate">
		   </c:if>
         <div class="row">
           <input type="hidden" name="sfaCode" value="${sfamasterData.sfaCode }"/>
          
         <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-zoneCode">Zone <span style="color:red;">*</span>
              </label>
              <div class="position-relative">
              <select class="form-select select2 select2-hidden-accessible" onchange="getCircleDataByZone(this.value);"   id="select-zoneCode" name="zoneCode" data-select2-id="select-zoneCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option> 
                <c:forEach var ="obj" items ="${zoneList }">
                <option zoneIncharge="${obj.zoneCode }" value="${obj.zoneCode }" <c:if test="${sfamasterData.zoneCode eq obj.zoneCode}"> selected</c:if>>[${obj.zoneCode }] - ${obj.zoneName }</option>
                </c:forEach>
              </select>
              </div>
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-circleCode">Circle <span style="color:red;">*</span>
              </label>
              <div class="position-relative">
              <select class="form-select select2 select2-hidden-accessible" 
              onchange="getWardDataByCircle(this.value);getTransactionDataByWard(this.value);" id="select-circleCode" name="circleCode" data-select2-id="select-circleCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${circleList }">
                <option circleincharge="${obj.circleCode }" value="${obj.circleCode }" <c:if test="${sfamasterData.circleCode eq obj.circleCode}"> selected</c:if>>[${obj.circleCode }] - ${obj.circleName }</option>
                </c:forEach>
              </select></div>
            </div></div>
            
            <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="select-wardCode">Ward <span style="color:red;">*</span></label>
              <div class="position-relative"><select onchange="wardInchargeMethod(this.value);" class="form-select select2 select2-hidden-accessible" id="select-wardCode" name="wardCode" data-select2-id="select-wardCode" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="2">Select</option>
                <c:forEach var ="obj" items ="${wardList }">
                <option value="${obj.wardCode }" <c:if test="${sfamasterData.wardCode eq obj.wardCode}"> selected</c:if>>[${obj.wardCode }] - ${obj.wardName }</option>
                </c:forEach>
              </select></div>
            </div></div>
           
            <div class="col-md-3 col-6"><div class="mb-1">
           
              <label class="form-label" for="basic-default-name">SFA Name <span style="color:red;">*</span></label>
              <input type="text" class="form-control" id="sfa_name" name="sfa_name" placeholder="SFA Name" value="${sfamasterData.sfa_name}">
            </div></div>
            
             <div class="col-md-3 col-6"><label class="form-label" for="basic-default-name">SFA Contact <span style="color:red;">*</span></label>
            <!-- <div class="input-group ">
            <span class="input-group-text" id="basic-addon1"><i data-feather='phone'></i></span>
            <input type="number" class="form-control phone-number-mask" maxlength="10" placeholder="(9###########)" id="sfa_contactNo" name="sfa_contactNo" aria-label="sfa_contactNo" aria-describedby="basic-addon1">
          </div> -->
          		<div class="input-group input-group-merge">
                  <span class="input-group-text">(+91)</span>
                <input type="text" class="form-control phone-number-mask" placeholder="1 234 567 8900" value="${sfamasterData.sfa_contactNo}"  id="sfa_contactNo" name="sfa_contactNo">
              </div>
            </div>
          
          
           <div class="col-md-3 col-6"><div class="mb-1">
              <label class="form-label" for="basic-default-name">SFA Name(Alternate)</label>
              <input type="text" class="form-control" id="alternate_sfa" name="alternate_sfa" value="${sfamasterData.alternate_sfa}"  placeholder="SFA Name">
            </div></div>
          
          
           <div class="col-md-3 col-6"><label class="form-label" for="basic-default-name">SFA Contact (Alternate)</label>
           
           	<div class="input-group input-group-merge">
                  <span class="input-group-text">(+91)</span>
                <input type="text" class="form-control phone-number-mask" placeholder="1 234 567 8900" value="${sfamasterData.alternate_sfa_no}" id="alternate_sfa_no" name="alternate_sfa_no" >
              </div>
              
              <!-- <div class="input-group ">
            <span class="input-group-text" id="basic-addon1"><i data-feather='phone'></i></span>
            <input type="text" class="form-control phone-number-mask" placeholder="(9###########)" id="alternate_sfa_no" name="alternate_sfa_no"  aria-label="Username" aria-describedby="basic-addon1">
          </div> -->
            </div>
           <div class="col-md-3 col-6">
            <div class="mb-1">
              <label class="form-label" for="select-status">Status <span style="color:red;">*</span></label>
              <div class="position-relative"><select class="form-select select2 select2-hidden-accessible" id="select-status" name="status" data-select2-id="select-status" tabindex="-1" aria-hidden="true">
                <!--  <option value="" data-select2-id="2">Select</option> -->
                   <option value="Active" <c:if test="${sfamasterData.status == 'Active'}"> selected</c:if>>Active</option>
                   <option value="Inactive" <c:if test="${sfamasterData.status == 'Inactive'}"> selected</c:if>>Inactive</option>
              </select>
     </div>
            </div>
            </div>
          
          
            <div class="col-12 text-center mt-2">
              
                
                 <c:if test="${action eq 'add'}">
                   <button type="submit" class="btn btn-primary waves-effect waves-float waves-light" name="submit" value="Submit">Submit</button>
                <button type="reset" class="btn btn-outline-secondary waves-effect">Reset</button>
          </c:if>
		   <c:if test="${action eq 'edit'}">
		         <button type="submit" class="btn btn-primary waves-effect waves-float waves-light" name="submit" value="Submit">Update</button>
		   </c:if>
		   
              </div>
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
	  jQuery("#sfa_contactNo").keypress(function (e) {
	         var length = jQuery(this).val().length;
	       if(length > 9) {
	            return false;
	       } else if(e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	            return false;
	       } else if((length == 0) && (e.which == 48)) {
	            return false;
	       }
	   });
	  jQuery("#alternate_sfa_no").keypress(function (e) {
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