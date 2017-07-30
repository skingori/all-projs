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
                        <a href="#"><i class="fa fa-edit "></i>Reports<span class="badge"></span></a>
                    </li>
                    <li>

                    <a href="properties.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Properties <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="policy.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Read Policy <span class="badge"></span></a>
                    </li>

                
                    <li>
                   <a href="booking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Bookings <span class="badge"></span></a>
                    </li>


                

                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Reports </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                  <div class="col-lg-12 ">
                  <div class="alert alert-info">
                            <?php if (isset($_GET['username']))
                             {
                              ?>
                            
                             <strong>Welcome : <?php
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
                                        <table id="fullpaid" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Type</th>
            <th>Requestor</th>
            <th>Tenant</th>
            <th>Phone Number</th>
            <th>Total Amount</th>
            <th>Transaction No</th>
            
        </tr>
    </thead>
    <?php
    include('../config/dbConfig.php');
       $userid = $_GET['username'];
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id INNER JOIN payment p ON b.booking_id = p.payment_id where b.status <> 'cancelled' AND p.balance = 0 AND b.username = '$userid'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

         

                  $receipt=$row['mpesa_receipt'];
                 $paymentdate = $row['payment_date'];
                 $amount = $row['amount'];
                 $amountdue = $row['amount_due'];
                 $recordid = $row['booking_id'];
                 $houseid = $row['house_id'];
                 $paymentid = $row['payment_id'];
                 $username = $_GET['username'];
                 $depo = $row['deposit'];
                 $total =  $depo + $amount;
                
    ?>
            <tr>
    <?php         $rowID = $row['house_id']; ?>
                <td><?php echo$row["housename"]; ?></td>
               

                
                <td><?php echo $row['housetype']; ?></td>
                <td><?php echo $row['username']; ?></td>
                <td><?php echo $row['full_names']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $total; ?></td>
                <td><?php echo $row['mpesa_receipt_no']; ?></td>
               


               


                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
 </table>
    </p>
    </table>
    <a href="#"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</a>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Cancelled Bookings</a></center>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse in" style="height: auto;">
                                    <div class="panel-body">
                                       <table id="cancelledbooks" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Type</th>
            <th>Requestor</th>
            <th>Tenant</th>
            <th>Phone Number</th>
            <th>Deposit</th>
            <th>Transaction No</th>
            <th>Comment</th>
        </tr>
    </thead>
    <?php
    //include('../config/dbConfig.php');
    $userid = $_GET['username'];
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id INNER JOIN payment p ON b.booking_id = p.payment_id where b.status ='cancelled' AND b.username = '$userid'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

         

                  $receipt=$row['mpesa_receipt'];
                 $paymentdate = $row['payment_date'];
                 $amount = $row['amount'];
                 $amountdue = $row['amount_due'];
                 $recordid = $row['booking_id'];
                 $houseid = $row['house_id'];
                 $paymentid = $row['payment_id'];
                 $username = $_GET['username'];
                
    ?>
            <tr>
    <?php         $rowID = $row['house_id']; ?>
                <td><?php echo$row["housename"]; ?></td>
               

                
                <td><?php echo $row['housetype']; ?></td>
                <td><?php echo $row['username']; ?></td>
                <td><?php echo $row['full_names']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $row['deposit']; ?></td>
                <td><?php echo $row['mpesa_receipt_no']; ?></td>
                <td><?php echo $row['comment']; ?></td>


               


                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
 </table>
    </p>
    </table>
    <a href="#"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</a>

                                    </div>
                                </div>
                            </div>
                      
                             <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Close</a></center>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                  

                                        <div class="panel-body">
                                             
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
    </script>
    <script type="text/javascript" language="javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquerydataTables.js"></script>
    <script src="../js/bootstrap.js"></script>
 <script src="../js/bootstrap-min.js"></script>
 <script src="../js/npm.js"></script>
  <script src="../js/custom.js"></script>
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    $('#fullpaid').dataTable();
} );

$(document).ready(function() {
    $('#cancelledbooks').dataTable();
} );
$(document).ready(function() {
    $('#vacants').dataTable();
} );
</script>
   
</body>
</html>
