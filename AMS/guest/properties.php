<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Property management</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href=" https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.0/css/responsive.bootstrap.min.css">
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
 <link rel='stylesheet' type='text/css' href='http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css'/>
        <script type='text/javascript' src='script.js'></script>
        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
 
  
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
                        <a href="index.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                    
                    <li class="active-link">
                        <a href="#"><i class="fa fa-edit "></i>Properties <span class="badge"></span></a>
                    </li>

                      <li>
                   <a href="policy.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Read Policy <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="booking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Bookings <span class="badge"></span></a>
                    </li>

                    <li>
                   <a href="reports.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Reports <span class="badge"></span></a>
                    </li>

                   
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>PROPERTiES </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                            <?php if (isset($_GET['username']))
                             {
                              ?>
                            
                             <strong>Welcome: <?php
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
                 <!-- /. ROW  --> 
                  <div>

                        
                        <ul class="nav nav-tabs">
                        

                           
                            <li class=""><a href="#checkout" data-toggle="tab">Check out Property</a>
                            </li>

                        </ul>
                        <div class="tab-content">
                        
    
          
    
                        

    <div class="tab-pane fade active in" style="overflow:auto"; id="checkout">
    <!--<img src="fetchimage.php?" width="175" height="200" />-->
   <table id="aparts" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            
              
 
 
        </tr>
    </thead>
    <?php
     include('../config/dbConfig.php');
        $query="SELECT *  FROM houses where available_units > 0";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $house_id = $row['house_id'];
                  $housename = $row['housename'];
                  $location = $row['Location'];
                  $rentamt = $row['rentamt'];
                 
    ?>
            <tr>
    
                
               

                <td><center><img src="../admin/fetchimage.php?id=<?php echo $house_id?>" width="400" height="200" />
                <p>Property Name: <?php echo $housename; ?> </p>
                <p>Property Location: <?php echo $location; ?></p>
                <p>Property Amount: <?php echo $rentamt; ?></p>
                <p> <a class="btn update" style="color:red"  href="#bookModal<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal">Book</a>
                
                
               


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            
                            <!--Yor Edit Modal Goes Here-->
                            <div id="bookModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">
                             <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Book Apartment</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="bookApartment.php" method="post" enctype="multipart/form-data" name="form7" id="form7">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Apartment ID &nbsp
</td>
<td>
 <input id="apartment_id" type="" class="form-control" readonly="true" name="apartment_id" value="<?php echo $house_id; ?>" placeholder="<?php echo $house_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="username" type="" class="form-control" readonly="true" name="username" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Tenant Full Name &nbsp
</td>
<td>
   <input id="fullnamebook" type=""  required = "true" class="form-control"  name="fullnamebook" value="" placeholder="Enter tenant full names" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
National ID &nbsp
</td>
<td>
 <input id="natidbook" type="number" class="form-control" name="natidbook" value="" placeholder="Enter national id" style="width : 600px;" maxlength = "8">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone number &nbsp
</td>
<td>
 <input id="telephonebook" type="number" class="form-control" name="telephonebook" value="" placeholder="Enter a valid phone number" style="width : 600px;" maxlength="10">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Deposit &nbsp
</td>
<td>
 <input id="depobook" type="number" class="form-control" name="depobook" value="" placeholder="Enter deposit amount" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
MPESA Receipt No. &nbsp
</td>
<td>
 <input id="mpesabook" type="" class="form-control" name="mpesabook" value="" placeholder="Enter mpesa receipt no: e.g KGH79399..." style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Book" />
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

  <div id="payModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">
                             <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Pay Apartment</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="payApartment.php" method="post" enctype="multipart/form-data" name="form8" id="form8">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Apartment ID &nbsp
</td>
<td>
 <input id="apartment_idpay" type="" class="form-control" readonly="true" name="apartment_idpay" value="<?php echo $house_id; ?>" placeholder="<?php echo $house_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="usernamepay" type="" class="form-control" readonly="true" name="usernamepay" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Tenant Full Name &nbsp
</td>
<td>
   <input id="fullnamepay" type=""  required = "true" class="form-control"  name="fullnamepay" value="" placeholder="Enter tenant full names" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
National ID &nbsp
</td>
<td>
 <input id="natidpay" type="number" class="form-control" name="natidpay" value="" placeholder="Enter national id" style="width : 600px;" maxlength = "8">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone number &nbsp
</td>
<td>
 <input id="telephonepay" type="number" class="form-control" name="telephonepay" value="" placeholder="Enter a valid phone number" style="width : 600px;" maxlength="10">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Balance &nbsp
</td>
<td>
 <input id="balancepay" type="number" class="form-control" name="balancepay" value="" placeholder="Enter Remaining balance" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
MPESA Receipt No. &nbsp
</td>
<td>
 <input id="mpesapay" type="" class="form-control" name="mpesapay" value="" placeholder="Enter mpesa receipt no: e.g KGH79399..." style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<
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
    </p>
    </table>
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
        /* attach a submit handler to the form */
    $("#form1").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, { name: $('#name').val(), marital: $('#marital').val(),phoneno: $('#phoneno').val(),address: $('#address').val(),bank_name: $('#bank_name').val(),bank_branch: $('#bank_branch').val(),accnumber: $('#accnumber').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        //window.location.reload();
        
        
      });
    });
     $("#form3").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { rentamt: $('#rentamt').val(), typeedit: $('#typeedit').val(),unitsno: $('#unitsno').val(),locationedit: $('#locationedit').val(),recordidedit: $('#recordidedit').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
      });
    });

     $("#form4").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { recordiddelete: $('#recordiddelete').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form4").reset();
        window.location.reload();
        
        
      });
    });
      $("#form5").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { owner_idedit: $('#owner_idedit').val(), fullnamesedit: $('#fullnamesedit').val(),accnumberedit: $('#accnumberedit').val(),mstatusedit: $('#mstatusedit').val(),telephoneedit: $('#telephoneedit').val(),bank_branchedit: $('#bank_branchedit').val(),bank_nameedit: $('#bank_nameedit').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form5").reset();
        window.location.reload();
        
        
      });
    });
      $("#form6").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { owner_idel: $('#owner_idel').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form6").reset();
        window.location.reload();
        
        
      });
    });
      $("#form7").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { apartment_id: $('#apartment_id').val(), fullnamebook: $('#fullnamebook').val(),natidbook: $('#natidbook').val(),telephonebook: $('#telephonebook').val(),depobook: $('#depobook').val(),mpesabook: $('#mpesabook').val() ,username: $('#username').val()} );

      /* Alerts the results */
      posting.done(function( data ) {
          
        //alert(data);
        document.getElementById("form7").reset();
         window.location.reload();
       // window.location.replace('http://localhost:8080/AMS/admin/propertymanagement.php?username='+$('#username').val());
        
        
      });
    });
      $("#form8").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element*/ 
      var $form = $( this ),
          url = $form.attr( 'action' );
          

      /* Send the data using post with element id name and name2**/
       var posting = $.post( url, { apartment_idpay: $('#apartment_idpay').val(), fullnamepay: $('#fullnamepay').val(),natidpay: $('#natidpay').val(),telephonepay: $('#telephonepay').val(),balancepay: $('#balancepay').val(),mpesapay: $('#mpesapay').val(),usernamepay: $('#usernamepay').val()  } );

      /* Alerts the results */
      posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form8").reset();
        window.location.reload();
        
        
      });
    });
    </script>
   <script type="text/javascript">
     // Get the modal
var modal = document.getElementById('myModal');

var modalOwner = document.getElementById('myOwnerModal');


var modalDelete = document.getElementById('delete');


// Get the button that opens the modal deleteHouseBtn
var btn = document.getElementById("myBtn");

var btnOwner = document.getElementById("myOwnerBtn");

var btnDelete = document.getElementById("deleteHouseBtn");


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var spanOwner = document.getElementsByClassName("closeOwner")[0];

var spanDelete = document.getElementsByClassName("closeDelete")[0];

//Get the <span> element that closes the modal
var spanclose = document.getElementsByClassName("closesignup")[0];


//Get the <span> element that closes the modal
var spanrecovery = document.getElementsByClassName("closerecovery")[0];

// When the user clicks the button, open the modal
btn.onclick = function() {
  alert("I have been clicked");
    modal.style.display = "block";
}
btnOwner.onclick = function() {
    modalOwner.style.display = "block";
}
btnDelete.onclick = function() {
    modalDelete.style.display = "block";
}


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
} 
spanOwner.onclick = function() {
    modalOwner.style.display = "none";
}
spanDelete.onclick = function() {
    modalDelete.style.display = "none";
}

//When the user clicks on <span> (x), close the modal


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }else if(event.target == modalDelete){
          modalDelete.style.display = "none";
    }else if(event.target == modalOwner){
          modalOwner.style.display = "none";
    }
}

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
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    $('#aparts').dataTable();
} );
</script>
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    $('#propertydetails').dataTable();
} );
</script>
</body>
</html>
