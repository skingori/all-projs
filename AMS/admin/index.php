﻿
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>AMS</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                  <a href="../index.html" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="#" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                    <li>
                        <a href="#"><i class="fa fa-table "></i>Other properties<span class="badge"></span></a>
                    </li>
                   


                   
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome Admin: <?php
                             $username = $_GET['username']; 
                             if($username == null || $username ==""){
                                 //do a redirect
                                 header('Location:../index.html');
                             }else{
                                 echo $username;
                             }
                             ?></strong> .
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                            <div class="row text-center pad-top">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="manageBooking.php?username=<?php echo $username?>" >
 <i class="fa fa-bookmark-o fa-5x"></i>
                      <h4>Bookings</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="propertymanagement.php?username=<?php echo $username?>" >
 <i class="fa fa-building-o fa-5x"></i>
                      <h4>Properties</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                            <a href="policy.php?username=<?php echo $username?>" >
 <i class="fa fa-file-text-o fa-5x"></i>
                      <h4>Policies</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="usermanagement.php?username=<?php echo $username?>" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>See Users</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="inventory.php?username=<?php echo $username?>" >
 <i class="fa fa-file-excel-o fa-5x"></i>
                      <h4>Reports </h4>
                      </a>
                      </div>
                     
                     
                  </div>

                   <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="reports.php?username=<?php echo $username?>" >
	
						      
 <i class="fa fa-file-excel-o fa-5x"></i>
                      <h4>Inventory </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                 
              </div>
                 
                 
                 <!-- /. ROW  -->   
				  <div class="row">
                    <div class="col-lg-12 ">			
					
					<br/>
                        <div class="alert alert-danger">
                             
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                   
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>


