<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 BrainBox with unlimited possibilities.">
    <meta name="keywords" content="admin template,BrainBox , Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>Idea Bank </title>
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
     <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/pages/page-knowledge-base.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    
    <style>
    
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
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
 	<jsp:include page="../views/layout/header.jsp"></jsp:include> 
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
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
                <h2 class="content-header-title float-start mb-0">Idea Bank</h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item active">Idea Bank
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
          <div class="content-header-right text-md-end col-md-3 col-12 d-md-block d-none">
            
          </div>
        </div>
        <div class="content-body"><!-- Knowledge base Jumbotron -->

<section id="knowledge-base-search">
  <div class="row">
    <div class="col-12">
      <div
        class="card knowledge-base-bg text-center"
        style="background-image: url('/brainbox/resources/images/banner/banner.png')"
      >
        <div class="card-body">

          <h2 class="fw-bolder mt-1"></h2>
          <h2 class="text-primary">Search Anything</h2>
         <!--  <p class="card-text mb-2">
            <span>Popular searches: </span><span class="fw-bolder">Sales automation, Email marketing</span>
          </p> -->
          <form class="kb-search-input">
       <!--      <div class="input-group input-group-merge mb-1">
               <input type="text" class="form-control"  placeholder="Search SBU" />
               
            </div> -->
            <div class="input-group input-group-merge">
              <span class="input-group-text"><i data-feather="search"></i></span>
              <input type="text" class="form-control" id="searchbar" list="browsers" placeholder="SBU, Themes, Ideas.... " />
               <datalist id="browsers">
				         <c:forEach var="obj" items="${sbuList}">
				          <option value="${obj.sbu_code }">${obj.sbu_name }</option>
						  </c:forEach>
				        </datalist>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/ Knowledge base Jumbotron -->

<!-- Knowledge base -->
<%--  <section id="knowledge-base-category">
  <div class="row kb-search-content-info match-height">
    <c:forEach var="obj" items="${themeList}">
    <div class="col-md-4 col-sm-6 col-12 kb-search-content">
      <!-- account setting card -->
      <div class="card">
        <div class="card-body">
          <!-- account setting header -->
          <h6 class="kb-title">
            <span><b>[${obj.theme_code }] - ${obj.theme_name }</b></span>
          </h6>
          <div class="list-group list-group-circle mt-2">
           <c:choose>
		         <c:when test="${  fn:contains( obj.title, ',' ) }">
		            <c:set var="filesLists" value="${fn:split(obj.idea_no, ',')}" />
             		  <c:set var="filesList" value="${fn:split(obj.title, ',')}" />
             		   <c:set var="filesListss" value="${fn:split(obj.status, ',')}" />
             		 <c:forEach var="obj" items="${filesLists}" varStatus="index"> 
             		 <p>
             		 <c:if test="${filesListss[index.count - 1] eq 'In Progress' }"><i class='fa-solid fa-circle teal-color fa-fade' style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6; font-size: 10px;" ></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Resolved' }"><i class='fa fa-circle green-color'  style="font-size: 10px;"></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Rejected' }"><i class='fa fa-circle red-color'  style="font-size: 10px;"></i></c:if> &nbsp;
             		 
             		 
             		  <a  href="javascript:void(0);" onclick="getIdea('${ obj}');" title="View ${filesList[index.count - 1]}"  class="">${filesList[index.count - 1]}</a></p>
					</c:forEach>
		         </c:when>
		         <c:otherwise>
		             <p>
		             <c:if test="${filesListss[index.count - 1] eq 'In Progress' }"><i class='fa-solid fa-circle teal-color fa-fade' style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6; font-size: 10px;" ></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Resolved' }"><i class='fa fa-circle green-color'  style="font-size: 10px;"></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Rejected' }"><i class='fa fa-circle red-color'  style="font-size: 10px;"></i></c:if> &nbsp;
		              <a  href="javascript:void(0);" onclick="getIdea('${ obj.idea_no}');" title="View ${obj.title} "  class="list-group-item text-body">${obj.title}</a> </p>
		         </c:otherwise>
		      </c:choose>
          </div>
        </div>
      </div>
    </div>
    </c:forEach>
    </div>
    <!-- no result -->
 <c:if test="${empty themeList }">
    <div class="col-12 text-center ">
      <h4 class="mt-4">No Ideas found!!</h4>
    </div>
    </c:if>
    <c:if test="${not empty themeList }">
	     <div class="col-12 text-center no-result no-items">
	      <h4 class="mt-4">Search result not found!!</h4>
	    </div>
    </c:if>
   
   
  
</section> --%>
 <section id="knowledge-base-content">
  <div class="row kb-search-content-info match-height">
  
   <c:forEach var="obj1" items="${themeList}">
   
    <div class="col-md-4 col-sm-6 col-12 kb-search-content">
      <div class="card">
      
           <div class="card-body">
          <!-- account setting header -->
          <h6 class="kb-title">
            <span><b>[${obj1.theme_code }] - ${obj1.theme_name } (${ obj1.counts})</b></span>
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
             		 
             		 <c:if test="${index.count 	<= 5 }">
             		 <p  >
             		 <c:if test="${filesListss[index.count - 1] eq 'In Progress' }"><i class='fa-solid fa-circle teal-color fa-fade' style="--fa-animation-duration: 2s; --fa-fade-opacity: 0.6; font-size: 10px;" ></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Resolved' }"><i class='fa fa-circle green-color'  style="font-size: 10px;"></i></c:if> 
             		 <c:if test="${filesListss[index.count - 1] eq 'Rejected' }"><i class='fa fa-circle red-color'  style="font-size: 10px;"></i></c:if> &nbsp;
             		 
             		 
             		  <a  href="javascript:void(0);" onclick="getIdea('${ obj}','${ obj1.theme_code}');"  id="stdname" title="click to View ${filesList[index.count - 1]}"  class="">${filesList[index.count - 1]}
             		   <span style="display:none"> ${sbus[index.count - 1]} - ${sbun[index.count - 1]}</span> </a><c:if test="${index.count eq 5 && fn:length(sbus) gt 5}">  ... </c:if>
             		  
					</c:if>
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
             <div style="text-align: end;position: relative;top: -1rem;left: -2rem;"><button type="button" onclick="goToFilterPage('${obj1.theme_code }')"
              class="btn btn-relief-danger" title="view in Detail">More..</button></div>
        
        </a>
      </div>
    </div>
   </c:forEach>
    <!-- no result -->
    <c:if test="${empty themeList }">
    <div class="col-12 text-center ">
      <h4 class="mt-4">No Ideas found!!</h4>
    </div>
    </c:if>
    <c:if test="${not empty themeList }">
	     <div class="col-12 text-center no-result no-items">
	      <h4 class="mt-4">Search result not found!!</h4>
	    </div>
    </c:if>
   
  </div> 
</section>
<!-- Knowledge base ends -->

        </div>
      </div>
    </div>
    <!-- END: Content-->
    <!-- BEGIN: Customizer-->
    <!-- End: Customizer-->
    <!-- Buynow Button-->
    <div class="sidenav-overlay"></div>

    <!-- BEGIN: Footer-->
   <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->
   <script src="/brainbox/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->
 <form action="<%=request.getContextPath()%>/get-bb-bank" name="updateIRM" id="updateIRM" method="post">	
        <input type="hidden" name=idea_no id="document_codeUpdate" />
         <input type="hidden" name=theme id="theme1" />
	</form>
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
 <script src="/brainbox/resources/js/scripts/pages/page-knowledge-base.min.js"></script>
 
   <form action="<%=request.getContextPath()%>/bb-sbu" name="getIRM" id="getIRM" method="post">	
      
         <input type="hidden" name=theme id="theme" />
        
	</form>
	
    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
      function getIdea(idea_no,theme){
	    	
	    	$('#document_codeUpdate').val($.trim(idea_no));
	    	$('#theme1').val($.trim(theme));
	    	$("#updateIRM ").submit();
	    	
      }
      
      function goToFilterPage(theme){
    	  $('#theme').val($.trim(theme));
	    	 $("#getIRM ").submit();
      }
      
      $("#searchbar").on("keyup", function() {
    	  flag = true;
    	 
    	    var searchKey = $(this).val().toLowerCase();
    
    	    $(".stdtable #stdname").each( function() {
    	    	 $(this).css('background-color','white');
    	     var searchStr = $(this).text().toLowerCase();
    	        if ($.trim(searchKey) != "" && searchStr.indexOf(searchKey)!=-1 && flag == true) {
    	            $(this).parent().show();
    	            $(this).css('background-color','#e12228');
    	            $(this).css('color','white');
    	            var s = $(this).val();
    	            var txt = $("#stdname").val().replace(s, '<span style="background-color: FFCCCB">' + s +  '</span>');
    	            $("#stdname").val(txt);
    	        }
    	        else {
    	            //$(this).hide();
    	        	 $(this).css('background-color','white');
    	        	 $(this).css('color','blue');
    	        }
    	    });
    	});
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/page-knowledge-base.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:19 GMT -->
</html>