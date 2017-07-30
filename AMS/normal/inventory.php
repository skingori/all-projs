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

                    <a href="propertymanagement.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Property Management <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="manageBooking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Booking Management <span class="badge"></span></a>
                    </li>
                      <li>
                   <a href="policy.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Policy Management <span class="badge"></span></a>
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
                                        <table id="fullpaid" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Type</th>
            <th>Property Owner</th>
            <th>Requestor</th>
            <th>Tenant</th>
            <th>Phone Number</th>
            <th>Total Amount</th>
            <th>Transaction No</th>
            
        </tr>
    </thead>
    <?php
    include('../config/dbConfig.php');
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id INNER JOIN payment p ON b.booking_id = p.payment_id where b.status <> 'cancelled' AND p.balance = 0";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          
        $query1="SELECT *  FROM propertyowners where owner_id='$row[owner]' ";
        $rs1= mysqli_query($db,$query1);
         while ($row1 = mysqli_fetch_assoc($rs1)) {
         

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
                <td><?php echo $row1['fullnames'];?></td>
                <td><?php echo $row['username']; ?></td>
                <td><?php echo $row['full_names']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $total; ?></td>
                <td><?php echo $row['mpesa_receipt_no']; ?></td>
               


               


                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; } } ?>
 </table>
    </p>
    </table>
   <Button id="btnExport"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</Button>
    <iframe id="txtArea" style="display:none"></iframe>
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
            <th>Property Owner</th>
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
        $query="SELECT *  FROM houses h INNER JOIN booking b ON h.house_id = b.apartment_id INNER JOIN payment p ON b.booking_id = p.payment_id where b.status ='cancelled'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          
           $query1="SELECT *  FROM propertyowners where owner_id='$row[owner]' ";
        $rs1= mysqli_query($db,$query1);
         while ($row1 = mysqli_fetch_assoc($rs1)) {

         

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
                <td><?php echo $row1['fullnames'];?></td>
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
     <?php $i++; } } ?>
 </table>
    </p>
    </table>
    <Button id="btnExport2"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</Button>
    <iframe id="txtArea2" style="display:none"></iframe>

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <center><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">Vacant apartments</a></center>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                  

                                        <div class="panel-body">
                                              <table id="vacants" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Owner</th>
            <th>Property Type</th>
            <th>Available units</th>
            <th>Rent per month</th>
            <th>Location</th>
            
        </tr>
    </thead>
    <?php
    //include('../config/dbConfig.php');
        $query="SELECT *  FROM houses";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

          $query1="SELECT *  FROM propertyowners where owner_id='$row[owner]' ";
         $rs1= mysqli_query($db,$query1);
 while ($row1 = mysqli_fetch_assoc($rs1)) {

                  $recordid=$row['house_id'];
                 $housetype = $row['housetype'];
                 $unitsno = $row['available_units'];
                 $rentamt = $row['rentamt'];
                 $location = $row['Location'];
    ?>
            <tr>
    <?php         $rowID = $row['house_id']; ?>
                <td><?php echo$row["housename"]; ?></td>
               

                <td><?php echo $row1['fullnames']; ?></td>
                <td><?php echo $row['housetype']; ?></td>
                <td><?php echo $row['unitsno']; ?></td>
                <td><?php echo $row['rentamt']; ?></td>
                <td><?php echo $row['Location']; ?></td>


              
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; } } ?>
 </table>
 <Button id="btnExport3"><i class="fa fa-file-pdf-o" aria-hidden="true"></i>Export</Button>
    <iframe id="txtArea3" style="display:none"></iframe>
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
    </script>
      <script type="text/javascript" language="javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquerydataTables.js"></script>
    <script type='text/javascript' src='http://code.jquery.com/jquery-git2.js'></script>
<script type='text/javascript' src="../js/jspdf.debug.js"></script>
<script type='text/javascript' src="../js/jspdf.min.js"></script>
<script type='text/javascript' src="../js/pdf.js"></script>
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



function write_to_excel()
{
   var htmltable= document.getElementById('fullpaid');
 
    

      
       window.open('data:application/vnd.ms-excel,' + encodeURIComponent(htmltable.innerHTML));
}

$(document).ready(function() {
  $("#btnExport").click(function(e) {
  var today = new Date(); 
    var pdf = new jsPDF('p', 'pt', 'ledger');
     pdf.setFontSize(22);
    pdf.text(20, 20, 'Fully Paid Bookings');
    pdf.cellInitialize();
    pdf.setFontSize(9);
   
   
    $.each( $('#fullpaid tr '), function (i, row){
        $.each( $(row).find("td, th"), function(j, cell){
            var txt = $(cell).text().trim() || " ";
            var width = (j==0) ? 80:100; //make 4th column smaller
           
            var splitTitle = pdf.splitTextToSize(txt, 60);
            pdf.cell(5, 30, width, 70, splitTitle, i);
            
           
        });
    });
    
    // pdf.autoPrint();
    //Check whether its IE 
      if(window.navigator.userAgent.indexOf("MSIE")>0 ||window.navigator.userAgent.match(/Trident.*rv\:11\./) ){
         //pdf.output("dataurlnewwindow"); Dont open this popup window
         pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }else{
         pdf.output("dataurlnewwindow");
    pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }
    
    

});
});

$(document).ready(function() {
  $("#btnExport2").click(function(e) {
  var today = new Date(); 
    var pdf = new jsPDF('p', 'pt', 'ledger');
     pdf.setFontSize(22);
    pdf.text(20, 20, 'CancelledBookings');
    pdf.cellInitialize();
    pdf.setFontSize(9);
   
   
    $.each( $('#cancelledbooks tr '), function (i, row){
        $.each( $(row).find("td, th"), function(j, cell){
            var txt = $(cell).text().trim() || " ";
            var width = (j==0) ? 80:100; //make 4th column smaller
           
            var splitTitle = pdf.splitTextToSize(txt, 60);
            pdf.cell(5, 30, width, 70, splitTitle, i);
            
           
        });
    });
    
    // pdf.autoPrint();
    //Check whether its IE 
      if(window.navigator.userAgent.indexOf("MSIE")>0 ||window.navigator.userAgent.match(/Trident.*rv\:11\./) ){
         //pdf.output("dataurlnewwindow"); Dont open this popup window
         pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }else{
         pdf.output("dataurlnewwindow");
    pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }
    
    

});
});

$(document).ready(function() {
  $("#btnExport3").click(function(e) {
  var today = new Date(); 
    var pdf = new jsPDF('p', 'pt', 'ledger');
    
     pdf.setFontSize(22);
    pdf.text(20, 20, 'Vacant Apartments');
    pdf.cellInitialize();
    pdf.setFontSize(9);
   
   
    $.each( $('#vacants tr '), function (i, row){
        $.each( $(row).find("td, th"), function(j, cell){
            var txt = $(cell).text().trim() || " ";
            var width = (j==0) ? 80:100; //make 4th column smaller
           
            var splitTitle = pdf.splitTextToSize(txt, 60);
            pdf.cell(5, 30, width, 70, splitTitle, i);
            
           
        });
    });
    
    // pdf.autoPrint();
    //Check whether its IE 
      if(window.navigator.userAgent.indexOf("MSIE")>0 ||window.navigator.userAgent.match(/Trident.*rv\:11\./) ){
         //pdf.output("dataurlnewwindow"); Dont open this popup window
         pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }else{
         pdf.output("dataurlnewwindow");
    pdf.save('Report'+ today.getDate()+"-"+today.getMonth()+"-"+today.getFullYear()+"-"+today.getHours()+":"+today.getMinutes()+":"+today.getSeconds()+".pdf"); 
      }
    
    

});
});

</script>
   
</body>
</html>
