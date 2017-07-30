<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manage Booking</title>
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
                        <a href="#"><i class="fa fa-edit "></i>Manage Booking  <span class="badge"></span></a>
                    </li>
                    <li>

                    <a href="propertymanagement.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Property Management <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="policy.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Read Policy <span class="badge"></span></a>
                    </li>

                
                    <li>
                   <a href="inventory.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Reports <span class="badge"></span></a>
                    </li>

                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>MANAGE BOOKING </h2>   
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
                            <div class="spansuccess" style="color:red">             <?php   if(isset($_REQUEST['rem']) && isset($_REQUEST['success'])){
if($_REQUEST['success']==1){
  echo "Payment failed!! Please pay the remaining balance of Ksh ".$_GET['rem']; 

   }else if($_REQUEST['success']==2){
     echo "You have overpaid by Ksh ". $_GET['rem'] . ". Kindly consult the administration for further actions. ";
   }else{
     echo "Payment was successfull";
   }
}
  ?>

  
     
</div>
                        </div>
                        </div>
                         <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Paid Properties</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Booked Properties</a>
                            </li>
                            

                        </ul>

                 <!-- /. ROW  --> 
                  <div class="tab-content">
                        
    
                            <div class="tab-pane fade active in" style="overflow:auto"; id="home">
                                <table id="owners" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Type</th>
            <th>Requestor</th>
            <th>Tenant Phone Number</th>
            <th>Deposit</th>
            <th>Transaction No</th>
            <th>Actions</th>
        </tr>
    </thead>
    <?php
    include('../config/dbConfig.php');
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id INNER JOIN payment p ON b.booking_id = p.payment_id where b.check_out =0 AND b.status <> 'cancelled'";
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
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $row['deposit']; ?></td>
                <td><?php echo $row['mpesa_receipt_no']; ?></td>


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            

                             <a class="btn update"  href="#checkin<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal"><i class="fa fa-thumbs-down"></i>Check Out</a>

                             <a class="btn update"  href="#bookModal<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal"><i class="fa fa-thumbs-up"></i>Check In</a>
                            <!--Yor Edit Modal Goes Here-->
                           <div id="bookModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModalLabel" aria-hidden="true' class="modal">

  <!-- Modal content -->

  <div class="modal-content">
    <div class="modal-header">
      <span class="close" data-dismiss="modal">×</span>
      <h2><center>Check In</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="checkIn.php" method="post" enctype="multipart/form-data" name="form2" id="form2">
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Admin User &nbsp
</td>
<td>

  <input id="username" type=""  class="form-control" readonly="true" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $username; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="record" type="" class="form-control" readonly="true" name="record" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<table id="form_table" >
<tr style=" height:50px; ">
<td>
Receipt No &nbsp
</td>
<td>
 <input id="receipt" type="" class="form-control" readonly="true" name="receipt" value="<?php echo $receipt; ?>" placeholder="<?php echo $receipt; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Date Paid &nbsp
</td>
<td>
 <input id="payment" type="" class="form-control" readonly="true" name="payment" value="<?php echo $paymentdate; ?>" placeholder="<?php echo $paymentdate; ?>" style="width : 600px;">  
                                   
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Amount paid &nbsp
</td>
<td>
 <input id="amount" type="" class="form-control" readonly="true" name="amount" value="<?php echo $amount; ?>" placeholder="<?php echo $amount; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Amount due &nbsp
</td>
<td>
 <input id="due" type="" class="form-control" readonly="true" name="due" value="<?php echo $amountdue; ?>" placeholder="<?php echo $amountdue; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Book" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>

</td>
</tr>
  
                     
              
         </table>
 
      </form>

      </div>
      
   </div>     

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>

</div> 
<div id="checkin<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModal" aria-hidden="true' class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeDelete" data-dismiss="modal">X</span>
      <h2><center>Check Out</center></h2>
    </div>
    <div class="modal-body">
   
 <div class="panel-body" style="overflow:auto;">
   
   <form action="checkOut.php" method="post" enctype="multipart/form-data" name="form1" id="form1">

<table id="form_table" >
<tr style=" height:50px; ">
<td>
Admin User &nbsp
</td>
<td>

  <input id="username" type=""  class="form-control" readonly="true" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $username; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="record" type="" class="form-control" readonly="true" name="record" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;"> 
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
House ID &nbsp
</td>
<td>

  <input id="houseid" type=""  class="form-control" readonly="true" name="houseid" value="<?php echo $houseid; ?>" placeholder="<?php echo $houseid; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Payment ID &nbsp
</td>
<td>

  <input id="paymentid" type=""  class="form-control" readonly="true" name="paymentid" value="<?php echo $paymentid; ?>" placeholder="<?php echo $paymentid; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Receipt No &nbsp
</td>
<td>
 <input id="receipt" type="" class="form-control" readonly="true" name="receipt" value="<?php echo $receipt; ?>" placeholder="<?php echo $receipt; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Date Paid &nbsp
</td>
<td>
 <input id="payment" type="" class="form-control" readonly="true" name="payment" value="<?php echo $paymentdate; ?>" placeholder="<?php echo $paymentdate; ?>" style="width : 600px;">  
                                   
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Amount paid &nbsp
</td>
<td>
 <input id="amount" type="" class="form-control" readonly="true" name="amount" value="<?php echo $amount; ?>" placeholder="<?php echo $amount; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Amount due &nbsp
</td>
<td>
 <input id="due" type="" class="form-control"  name="due" value="<?php echo $amountdue; ?>" placeholder="<?php echo $amountdue; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Check Out" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>

</td>
</tr>
  
                     
              
         </table>
      </form>
      </div>
      
     
</div>

    </div>
    
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>
 <div id="delete<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModal" aria-hidden="true' class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeDelete" data-dismiss="modal">X</span>
      <h2><center>Cancel Booking</center></h2>
    </div>
    <div class="modal-body">
   
 <div class="panel-body" style="overflow:auto;">
   
   <form action="cancelBooking.php" method="post" enctype="multipart/form-data" name="form3" id="form3">

<table id="form_table_delete" >
<tr style=" height:50px; ">
<td>
Admin User &nbsp
</td>
<td>

  <input id="username" type=""  class="form-control" readonly="true" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $username; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="record" type="" class="form-control" readonly="true" name="record" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
House ID &nbsp
</td>
<td>

  <input id="houseid" type=""  class="form-control" readonly="true" name="houseid" value="<?php echo $houseid; ?>" placeholder="<?php echo $houseid; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Comment &nbsp
</td>
<td>
 <input id="comment" type="" required = "true" class="form-control" name="comment" value="" placeholder="Enter comment" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Cancel" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>
</td>
</tr>

</table>
      </form>
      </div>
      
     
</div>

    </div>
    
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div> 

<script>
 $("#form1").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { amount: $('#amount').val(),record: $('#record').val(),username: $('#username').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        window.location.reload();
        
        
      });
    });
     $("#form2").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { record: $('#record').val(),username: $('#username').val(),houseid: $('#houseid').val(),paymentid: $('#paymentid').val(),amount: $('#amount').val(), } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form2").reset();
        window.location.reload();
        
        
      });
    });

 
</script>
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
 </table>
    </p>
    </table>
    </div>        




    <!--Material gain-################################XXXXXXXXXXXXXXXXXXXXXXXXXXXXX-->
    <div class="tab-pane fade" id="profile">
     <table id="bookings" class="table table-striped table-bordered nowrap"  cellspacing="0" width="100%">
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
            <th>Actions</th>
        </tr>
    </thead>
    <?php
    //include('../config/dbConfig.php');
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id  where b.check_out =0 AND b.status <> 'cancelled' AND b.status <> 'paid'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

         

                  $tenant=$row['full_names'];
                  $phone_number = $row['phone_number'];
                  $booked_by = $row['username'];
                  $deposit = $row['deposit'];
                  $recordid = $row['booking_id'];
                  $houseid = $row['house_id'];
                  $depoReceipt = $row['mpesa_receipt_no'];
                  $remaining = $row['remaining_amount'];
                  $username = $_GET['username'];
                  $apartmentid = $row['apartment_id'];
                  $bookedDate = $row['date_booked'];
                
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


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                        <a class="btn update" style="color:green"  href="#payModal<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal">Pay</a>
                            <a class="btn btn-danger" href="#delete<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Cancel</a>

                            
                            <!--Yor Edit Modal Goes Here-->
 <div id="delete<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModal" aria-hidden="true' class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeDelete" data-dismiss="modal">X</span>
      <h2><center>Cancel Booking</center></h2>
    </div>
    <div class="modal-body">
   
 <div class="panel-body" style="overflow:auto;">
   
   <form action="cancelBooking.php" method="post" enctype="multipart/form-data" name="form3" id="form3">

<table id="form_table_delete" >
<tr style=" height:50px; ">
<td>
Admin User &nbsp
</td>
<td>

  <input id="username" type=""  class="form-control" readonly="true" name="username" value="<?php echo $username; ?>" placeholder="<?php echo $username; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="record" type="" class="form-control" readonly="true" name="record" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
House ID &nbsp
</td>
<td>

  <input id="houseid" type=""  class="form-control" readonly="true" name="houseid" value="<?php echo $houseid; ?>" placeholder="<?php echo $houseid; ?>" style="width : 600px;"> 
     
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Comment &nbsp
</td>
<td>
 <input id="comment" type="" required = "true" class="form-control" name="comment" value="" placeholder="Enter comment" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Cancel" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>
</td>
</tr>

</table>
      </form>
      </div>
      
     
</div>

    </div>
    
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>
   <div id="payModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">
                             <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Pay Apartment</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="payApartment.php" method="post" enctype="multipart/form-data" name="form8" >
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Booking ID &nbsp
</td>
<td>
 <input id="booking_idpay" type="" class="form-control" readonly="true" name="booking_idpay" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Apartment ID &nbsp
</td>
<td>
 <input id="apartment_idpay" type="" class="form-control" readonly="true" name="apartment_idpay" value="<?php echo $apartmentid; ?>" placeholder="<?php echo $apartmentid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Booked By &nbsp
</td>
<td>
 <input id="bookedby" type="" class="form-control" readonly="true" name="bookedby" value="<?php echo $booked_by ?>" placeholder="<?php echo $booked_by ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Tenant Phone Number &nbsp
</td>
<td>
   <input id="telephonepay" type="" readonly required = "true" class="form-control"  name="telephonepay" value="<?php echo $phone_number ?>" placeholder="<?php echo $phone_number ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Date Booked &nbsp
</td>
<td>
 <input id="datebookpay" type="number" class="form-control" readonly name="datebookpay" value="<?php echo $bookedDate; ?>" placeholder="<?php echo $bookedDate; ?>" style="width : 600px;" maxlength = "8">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
DEPOSIT: MPESA TRX ID. &nbsp
</td>
<td>
 <input id="depopay" readonly type="number" class="form-control" name="depopay" value="<?php  echo $depoReceipt; ?>" placeholder="<?php echo $depoReceipt; ?>" style="width : 600px;" maxlength="10">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Deposit Amount &nbsp
</td>
<td>
 <input id="depopayamnt" readonly type="number" class="form-control" name="depopayamnt" value="<?php echo $deposit; ?>" placeholder="<?php echo $deposit; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Amount Remaining. &nbsp
</td>
<td>
 <input id="amntrem" type="" readonly class="form-control" name="amntrem" value="<?php echo $remaining; ?>" placeholder="<?php echo $remaining; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
AMOUNT OWED: MPESA TRX ID.  &nbsp
</td>
<td>
 <input id="amntowedmpesa" type="" class="form-control" name="amntowedmpesa" value="" placeholder="Enter mpesa receipt no: e.g KGH79399..." style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
AMOUNT OWED.  &nbsp
</td>
<td>
 <input id="amntowed" type="" class="form-control" name="amntowed" value="" placeholder="Enter paid amount as per the amount owed" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
AMOUNT OWED PAID BY.  &nbsp
</td>
<td>
 <input id="usernamepay" type="" readonly class="form-control" name="usernamepay" value="<?php echo $username; ?>" placeholder="<?php echo $username; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Pay" />
<a href="#" class="btn-info" data-dismiss="modal">Close</a>
</form>
</td>
</tr>
  
                     
              
         </table>
      </form>
      </div>
      
     
</div>

    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>


</div> 


                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
 </table>
    </p>
    </table>
    </div> 
    <script>
     $("#form8").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from tx`he <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { apartment_idpay: $('#apartment_idpay').val(), bookedby: $('#bookedby').val(),amntowedmpesa: $('#amntowedmpesa').val(),telephonepay: $('#telephonepay').val(),amntowed: $('#amntowed').val(),booking_idpay: $('#booking_idpay').val(),usernamepay: $('#usernamepay').val() ,amntrem: $('#amntrem') } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form8").reset();
        window.location.reload();
        
        
      });
    });
</script>       
    </div>
                 
             <!-- /. PAGE INNER  -->
            </div>
         <!--< /. PAGE WRAPPER  -->

        </div>

    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                  <p></p> 
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
     
    <script>

 

     $("#form3").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();
      
      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { recordid: $('#record').val(),comment: $('#comment').val(),username: $('#username').val(),houseid: $('#houseid').val() } );



      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
      });
    });
      $("#form8").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from tx`he <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { apartment_idpay: $('#apartment_idpay').val(), bookedby: $('#bookedby').val(),amntowedmpesa: $('#amntowedmpesa').val(),telephonepay: $('#telephonepay').val(),amntowed: $('#amntowed').val(),booking_idpay: $('#booking_idpay').val(),usernamepay: $('#usernamepay').val() ,amntrem: $('#amntrem') } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form8").reset();
        window.location.reload();
        
        
      });
    });
</script>
<script type="text/javascript" language="javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquerydataTables.js"></script>
    <script src="../js/bootstrap.js"></script>
 <script src="../js/bootstrap-min.js"></script>
 <script src="../js/npm.js"></script>
  <script src="../js/custom.js"></script>
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    $('#bookings').dataTable();
} );
</script>
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    $('#owners').dataTable();
} );
</script>
   
</body>
</html>
