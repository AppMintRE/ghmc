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
    <meta name="viewport" content="width=device-width,initial-scale=1.0,sfa-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 SFA with unlimited possibilities.">
    <meta name="keywords" content="admin template,SFA, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>SFA</title>
        <link rel="icon" type="image/png" sizes="96x96" href="/ghmc/resources/images/protect-favicon.png" >

	<script src="/ghmc/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/ghmc/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
            <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/extensions/toastr.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/plugins/extensions/ext-component-toastr.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/ghmc/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/ghmc/resources/css/style.css">
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
                <h2 class="content-header-title float-start mb-0">SFA(Sanitary Field Assistant)</h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                    <%--   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li>--%>
                    <li class="breadcrumb-item">SFA Master
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
  <div class="col-lg-12 col-sm-12 col-12"style="
    display: flex;
    align-items: end;
	">																				<!-- 	onclick="exportGHMC();" -->
    <div >
    <a href="<%=request.getContextPath() %>/add-sfa" class="btn btn-gradient-primary mb-2" style=""><i class="fa fa-add" aria-hidden="true"></i> Add</a>
  </div>
  
  </div>
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">

  
  <!-- List DataTable -->
  <div>
  	
  </div>
  <div class="row">
  
    <div class="col-12">
    
      <div class="card invoice-list-wrapper">
        <div class="card-datatable table-responsive">
       <div class="dt-buttons" style="height : 0.5em;">
      
        </div>
          <table id="datatable-sfa" class="invoice-list-table table">
            <thead>
              <tr>
                <th>#</th>
                <th>Action</th>
                <th class="text-truncate">SFA</th>
                 <th>Zone Code</th>
                 <th>Circle Code</th>
                 <th>Ward Code</th>
                 <th>Status</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!--/ List DataTable -->
 										
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
    <script src="/ghmc/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/ghmc/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/ghmc/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/ghmc/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/ghmc/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/ghmc/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/ghmc/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/ghmc/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/ghmc/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/ghmc/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/ghmc/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/ghmc/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/ghmc/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/ghmc/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/ghmc/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/ghmc/resources/js/dataTables.material.min.js"  ></script>
      <script src="/ghmc/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/ghmc/resources/js/core/app-menu.min.js"></script>
    <script src="/ghmc/resources/js/core/app.min.js"></script>
    <script src="/ghmc/resources/js/scripts/customizer.min.js"></script>
     <script src="/ghmc/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/ghmc/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/modal-edit-sfa.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/ghmc/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/ghmc/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    <!-- END: Page JS-->
 <form action="<%=request.getContextPath()%>/get-sfa-data" name="updateData" id="updateData" method="post">	
      
        <input type="hidden" name=sfaCode id="sfaCode" />
        
	</form>
    <script>
  
      $(window).on("load",(function(){
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
          getSFAList();
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
     
	    function getSFAList(){
	    
	     	table = $('#datatable-sfa').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-sfa').DataTable({
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
			var myParams = {};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getSFAList",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var sfa_data = "'"+val.sfaCode+"','"+val.status+"','"+val.sfa_name+"','"+val.zoneCode+"','"+val.circleCode+"','"+val.wardCode+"'";
		                    var actions = '<a href="javascript:void(0);"  onclick="getSFA('+sfa_data+');" class="btn btn-icon btn-primary waves-effect waves-float waves-light "  title="Edit"><i class="fa fa-pencil"></i></a>';    	                   	
		                   	var rowArray = [];    	                 
		                   	key++;
		                   	rowArray.push(key++);  
		                	rowArray.push($.trim(actions));  
		                	rowArray.push("["+ $.trim(val.sfaCode)+"]"+" - "+ val.sfa_name);
		                	rowArray.push("["+ $.trim(val.zoneCode)+"]"+" - "+$.trim(val.zoneName));
		                	rowArray.push("["+ $.trim(val.circleCode)+"]"+" - "+$.trim(val.circleName));
		                	rowArray.push("["+ $.trim(val.wardCode)+"]"+" - "+$.trim(val.wardName));
		                	var ststus = $.trim(val.status)
		                	if(ststus == 'Active'){
		                		ststus =  '<span class="badge badge-glow bg-success">'+$.trim(val.status)+'</span>';
		                	}else{
		                		ststus =  '<span class="badge badge-glow bg-warning">'+$.trim(val.status)+'</span>';
		                	}
		                 	
		                   	rowArray.push(ststus);
		                  
		                   
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
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
	    function updateSFA(){
	    	if(validator1.form()){ // validation perform
	        	document.getElementById("updateSFAForm").submit();	
	    	}
	    }
	    function getSFA(sfaCode){
	    	$('#sfaCode').val($.trim(sfaCode));
	    	$("#updateData ").submit();
	    }

	    	function addBox(){
		   		$('select[name^="reporting_to"] option:selected').removeAttr("selected");
		   		$('select[name^="status"] option:selected').removeAttr("selected");
		   		
		   		$('select[name^="base_sbu"] option:selected').removeAttr("selected");
		   		$('select[name^="base_project"] option:selected').removeAttr("selected");
		   		$('select[name^="base_department"] option:selected').removeAttr("selected");
		   		$('select[name^="base_role"] option:selected').removeAttr("selected");
		   		$('select').select2();
		   	}
	    	
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
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>