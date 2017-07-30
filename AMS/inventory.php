<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inventory Admin</title>
  <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <style type="text/css">
     /* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 60%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #138D75;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #138D75;
    color: white;
}
.modal-backdrop {
  z-index: -1;
}
</style>
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
                 
                        
 <li >
                        <?php
                         $username = $_GET['username'];
                        ?>
                        <a href="index.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                  
                    <li class="active-link">
                        <a href="#"><i class="fa fa-edit "></i>Inventory<span class="badge"></span></a>
                    </li>
                    <li>

                    <a href="propertymanagement.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Property Management <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="manageBooking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Booking Management <span class="badge"></span></a>
                    </li>
                      <li>
                   <a href="policy.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Policy Management <span class="badge"></span></a>
                    </li>
                     <li>
                   <a href="usermanagement.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>User Management <span class="badge"></span></a>
                    </li>


                

                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Inventory </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                  <div class="col-lg-12 ">
                  <div class="alert alert-info">
                            <?php if (isset($_GET['username']))
                             {
                              ?>
                            
                             <strong>Welcome Admin: <?php
                             $username = $_GET['username']; 
                             if($username == null || $username ==""){
                                 //do a redirect
                                 header('Location:../index.html');
                             }else{
                                 echo $username;
                             }
                             ?></strong>
                             <?php
                           }else {
                             header('Location:../index.html');
                           }
                            ?>
                        </div>
                        </div>
                 <!-- /. ROW  --> 
                 <div class="col-lg-12 col-md-4">
                        <h5>Reports</h5>
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">Fully Paid Bookings</a></center>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                    <div class="panel-body">
                                        Fully paid bookings
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Partially Paid Bookings</a></center>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                       Partially paid bookings

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Cancelled Bookings</a></center>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                  

                                        <div class="panel-body">
                                             Cancelled bookings
                                        </div>
                                </div>
                            </div>
                             <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Vacant Apartments</a></center>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                  

                                        <div class="panel-body">
                                             Vacant APartments
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                         
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
    <script type="text/javascript">
     $("#form3").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),uid: $('#uid').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
    });
        
        
    });
    
    </script>
   
</body>
</html>
