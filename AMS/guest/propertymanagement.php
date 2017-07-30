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
                        <a href="#"><i class="fa fa-edit "></i>Property Management  <span class="badge"></span></a>
                    </li>
                   <li>
                   <a href="manageBooking.php?username=<?php echo $_GET['username'];?>" ><i class="fa fa-desktop "></i>Booking Management <span class="badge"></span></a>
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
                     <h2>PROPERTY MANAGEMENT </h2>   
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
                 <!-- /. ROW  --> 
                  <div>

                        
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Add Property Owner</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Add Property</a>
                            </li>
                            <li class=""><a href="#messages" data-toggle="tab">Update Property Details</a>
                            </li>
                            </li>
                            <li class=""><a href="#changeowner" data-toggle="tab">Update Property Owner Details</a>
                            </li>

                            </li>
                            <li class=""><a href="#checkout" data-toggle="tab">Check out Property</a>
                            </li>

                        </ul>
                        <div class="tab-content">
                        
    
                            <div class="tab-pane fade active in" style="overflow:auto"; id="home">
                                 <p>Add Property Owner</p>
   
                                 <form action="add_new_property_owner.php" method="post" name="form1" id="form1" >
                                  <table id="form_table22" >

<tr style="height:50px; width:150px">
<td>
Full Names
</td>
<td>
<input id="name" type="text" required="true" class="form-control" name="name" required value="" placeholder="Full Names" style="width:600px">                                        
 <span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>




<tr style=" height:50px;">
<td>
Marital Status
</td>
<td>
<select name="marital" class="input-xlarge form-control"  id="marital" maxlength="800"  >
 <option value="" > --Select--</option>
 <option value="Married" >Married</option>
 <option value="Single" > Single</option>
 <option value="Others" > Others</option>

      
       </select>
<span class=" control-label " style="color:red;" for="" ></span>
    

</td>
</tr>


<tr style=" height:50px; ">
<td>
Phone Number
</td>
<td>
<input id="phoneno" type="number" class="form-control" required="true" name="phoneno" required value="" placeholder="Phone Number">  
<span class=" control-label " style="color:red;" for="" ></span>
                                      

</td>
</tr>

<tr style=" height:50px; ">
<td>
Address
</td>
<td>
<input id="address" type="" class="form-control" required="true" name="address" required value="" placeholder="Address">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>



<tr style=" height:50px; ">
<td>
Bank Name
</td>
<td>
<input id="bank_name" type="" class="form-control" required="true" name="bank_name" required value="" placeholder="Bank Name">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>


<tr style=" height:50px; ">
<td>
Bank Branch
</td>
<td>
<input id="bank_branch" type="" class="form-control" required="true" name="bank_branch" required value="" placeholder="Bank Branch">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>




<tr style=" height:50px; ">
<td>
Bank Account No.
</td>
<td>
<input id="accnumber" type="" class="form-control" required="true" name="accnumber" required value="" placeholder="Account Number">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>




<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Save" />
</td>
</tr>
</table>
                                 </form>
                              
                               
                            
                            </div>

                            <div class="tab-pane fade" id="profile">
                            <p>Add Property</p>
                               <div class="panel-body" style="overflow:auto;">
   
   <form action="add_new_property.php" method="post" enctype="multipart/form-data" name="form2" id="form2">
<table id="form_table" >

<tr style=" height:50px; width:150px">
<td>
House Name
</td>
<td>
<input id="house_name" type="text" class="form-control" name="house_name" required value="" placeholder="House Name" style="width:600px">                                        
 <span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>




<tr style=" height:50px; ">
<td>
Owner
</td>
<td>
<select name="owner" class="input-xlarge form-control"  id="owner" maxlength="800"  >
 <option value="" > --Select--</option>
 <?php 
  include("../config/dbConfig.php");
  $sql="select * from propertyowners";
 $result = mysqli_query($db,$sql);
while($sql_res1=mysqli_fetch_assoc($result))
       {       
      ?>
      
       <option value="<?php echo $sql_res1["owner_id"]; ?>" > <?php echo $sql_res1["fullnames"]; ?></option>

        <?php
        }
        ?>

      
       </select>
<span class=" control-label " style="color:red;" for="" ></span>
    

</td>
</tr>


<tr style=" height:50px; ">
<td>
House Type
</td>
<td>
<select name="type" class="input-xlarge form-control"  id="type" maxlength="800"  >
 <option value="" > --Select--</option>
 <option value="Single" > Single</option>
 <option value="Bed Sitter" > Bed Sitter</option>
 <option value="Double" > Double</option>
 <option value="One Bedroom" > One Bedroom</option>
 <option value="Two Bedroom" > Two Bedroom</option>
 <option value="Others"> Others</option>
 
       </select>
       <span class=" control-label " style="color:red;" for="" ></span>
                                      

</td>
</tr>

<tr style=" height:50px; ">
<td>
No. of Units
</td>
<td>
<input id="units" type="" class="form-control" name="units" value="" placeholder="No. of Units">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>



<tr style=" height:50px; ">
<td>
Rent Payable per Month
</td>
<td>
<input id="rent" type="" class="form-control" name="rent" value="" placeholder="Rent Payable per Month">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>


<tr style=" height:50px; ">
<td>
House Location
</td>
<td>
<input id="location" type="" class="form-control" name="location" value="" placeholder="House Location">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>

<tr style=" height:50px; ">
<td>
Attach File
</td>
<td>
<input type="file" name="image"  />
<span class=" control-label "  style="color:red;" for="" ></span>
</td>
</tr>





<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Save" />
</td>
</tr>

</table>
</form>
</div> 
                           
                            </div>
                            <div class="tab-pane fade" id="messages">
                                <table id="propertydetails" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Propety Name</th>
            <th>Property Owner</th>
            <th>Property Type</th>
            <th>No of units</th>
            <th>Rent per month</th>
            <th>Location</th>
            <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
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
                 $unitsno = $row['unitsno'];
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


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#delete<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#editModal<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                           <div id="editModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModalLabel" aria-hidden="true' class="modal">

  <!-- Modal content -->

  <div class="modal-content">
    <div class="modal-header">
      <span class="close" data-dismiss="modal">×</span>
      <h2><center>Edit property details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="edit_property.php" method="post" enctype="multipart/form-data" name="form3" id="form3">


<table id="form_table" >
<tr style=" height:50px; ">
<td>
Record No &nbsp
</td>
<td>
 <input id="recordidedit" type="" class="form-control" readonly="true" name="recordidedit" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
House type &nbsp
</td>
<td>
 <select name="typeedit" class="input-xlarge form-control"  id="typeedit" maxlength="800"  >
 <option value="<?php echo $housetype; ?>" ><?php echo $housetype; ?></option>
 <option value="Single" > Single</option>
 <option value="Bed Sitter" > Bed Sitter</option>
 <option value="Double" > Double</option>
 <option value="One Bedroom" > One Bedroom</option>
 <option value="Two Bedroom" > Two Bedroom</option>
 <option value="Others"> Others</option>
 
     </select>                                         
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
No. of Units &nbsp
</td>
<td>
 <input id="unitsno" type="" class="form-control" name="unitsno" value="<?php echo $unitsno; ?>" placeholder="<?php echo $unitsno; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Rent &nbsp
</td>
<td>
 <input id="rentamt" type="" class="form-control" name="rentamt" value="<?php echo $rentamt; ?>" placeholder="<?php echo $rentamt; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Location &nbsp
</td>
<td>
 <input id="locationedit" type="" class="form-control" name="locationedit" value="<?php echo $location; ?>" placeholder="<?php echo $location; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Update" />
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
      <h2><center>Delete property</center></h2>
    </div>
    <div class="modal-body">
   
 <div class="panel-body" style="overflow:auto;">
   
   <form action="delete_property.php" method="post" enctype="multipart/form-data" name="form4" id="form4">

<table id="form_table_delete" >
<tr style=" height:50px; ">
<td>
Record No &nbsp
</td>
<td>
 <input id="recordiddelete" type="" class="form-control" readonly="true" name="recordiddelete" value="<?php echo $recordid; ?>" placeholder="<?php echo $recordid; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
House type &nbsp
</td>
<td>
 <select name="typedelete"  readonly="true" class="input-xlarge form-control"  id="typedelete" maxlength="800"  >
 <option value="<?php echo $housetype; ?>" ><?php echo $housetype; ?></option>
 <option value="Single" > Single</option>
 <option value="Bed Sitter" > Bed Sitter</option>
 <option value="Double" > Double</option>
 <option value="One Bedroom" > One Bedroom</option>
 <option value="Two Bedroom" > Two Bedroom</option>
 <option value="Others"> Others</option>
 
     </select>                                         
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
No. of Units &nbsp
</td>
<td>
 <input id="unitsnodelete" type="" readonly="true" class="form-control" name="unitsnodelete" value="<?php echo $unitsno; ?>" placeholder="<?php echo $unitsno; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Rent &nbsp
</td>
<td>
 <input id="rentamtdelete" type="" readonly="true" class="form-control" name="rentamtdelete" value="<?php echo $rentamt; ?>" placeholder="<?php echo $rentamt; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Location &nbsp
</td>
<td>
 <input id="locationdelete" type="" readonly="true" class="form-control" name="locationdelete" value="<?php echo $location; ?>" placeholder="<?php echo $location; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Delete" />
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
        document.getElementById("form3").reset();
        window.location.reload();
        
        
      });
    });
</script>
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; } } ?>
 </table>
    </p>
    </table>
    </div>
    <div class="tab-pane fade active in" style="overflow:auto"; id="changeowner">
                         <table id="owners" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Owner Name </th>   
                      <th>Marital status </th>

                     <th>Phone No </th> 

 <th>Account No</th>
 <th>Bank Name</th>
 <th>Bank Branch</th>
 
 <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
     //include('../config/dbConfig.php');
        $query="SELECT *  FROM propertyowners";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $owner_id = $row['owner_id'];
                  $fullnames = $row['fullnames'];
                  $mstatus = $row['mstatus'];
                  $telephone = $row['telephone'];
                  $accnumber = $row['accnumber'];
                  $bank_name = $row['bank_name'];
                  $bank_branch = $row['bank_branch'];
    ?>
            <tr>
    <?php         $rowID = $row['owner_id']; ?>
                
               

                <td><?php echo $row['fullnames']; ?></td>
                <td><?php echo $row['mstatus']; ?></td>
                <td><?php echo $row['telephone']; ?></td>
                <td><?php echo $row['accnumber']; ?></td>
                <td><?php echo $row['bank_name']; ?></td>
                <td><?php echo $row['bank_branch']; ?></td>


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#deleteCustomer<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#myOwnerModal<?php echo$i?>" data-sfid='"<?php echo $row['house_id'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                            <div id="myOwnerModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Edit property owner details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="edit_owner.php" method="post" enctype="multipart/form-data" name="form5" id="form5">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Record No &nbsp
</td>
<td>
 <input id="owner_idedit" type="" class="form-control" readonly="true" name="owner_idedit" value="<?php echo $owner_id; ?>" placeholder="<?php echo $owner_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Full Name &nbsp
</td>
<td>
   <input id="fullnamesedit" type="" class="form-control"  name="fullnamesedit" value="<?php echo $fullnames; ?>" placeholder="<?php echo $fullnames; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Marital Status &nbsp
</td>
<td>
 <input id="mstatusedit" type="" class="form-control" name="mstatusedit" value="<?php echo $mstatus; ?>" placeholder="<?php echo $mstatus; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone number &nbsp
</td>
<td>
 <input id="telephoneedit" type="" class="form-control" name="telephoneedit" value="<?php echo $telephone; ?>" placeholder="<?php echo $telephone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Account number &nbsp
</td>
<td>
 <input id="accnumberedit" type="" class="form-control" name="accnumberedit" value="<?php echo $accnumber; ?>" placeholder="<?php echo $accnumber; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Branch &nbsp
</td>
<td>
 <input id="bank_branchedit" type="" class="form-control" name="bank_branchedit" value="<?php echo $bank_branch; ?>" placeholder="<?php echo $bank_branch; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Name &nbsp
</td>
<td>
 <input id="bank_nameedit" type="" class="form-control" name="bank_nameedit" value="<?php echo $bank_name; ?>" placeholder="<?php echo $bank_name; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Update" />
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

<div id="deleteCustomer<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Delete property owner</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="delete.php" method="post" enctype="multipart/form-data" name="form6" id="form6">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Record No &nbsp
</td>
<td>
 <input id="owner_idel" type="" class="form-control" readonly="true" name="owner_idel" value="<?php echo $owner_id; ?>" placeholder="<?php echo $owner_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Full Name &nbsp
</td>
<td>
   <input id="fullnamesedit" type="" class="form-control" readonly="true" name="fullnamesedit" value="<?php echo $fullnames; ?>" placeholder="<?php echo $fullnames; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Marital Status &nbsp
</td>
<td>
 <input id="mstatusedit" type="" class="form-control" name="mstatusedit"  readonly="true" value="<?php echo $mstatus; ?>" placeholder="<?php echo $mstatus; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone number &nbsp
</td>
<td>
 <input id="telephoneedit" type="" class="form-control" name="telephoneedit"  readonly="true" value="<?php echo $telephone; ?>" placeholder="<?php echo $telephone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Account number &nbsp
</td>
<td>
 <input id="accnumberedit" type="" class="form-control" readonly="true" name="accnumberedit" value="<?php echo $accnumber; ?>" placeholder="<?php echo $accnumber; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Branch &nbsp
</td>
<td>
 <input id="bank_branchedit" type="" class="form-control" name="bank_branchedit" readonly="true"  value="<?php echo $bank_branch; ?>" placeholder="<?php echo $bank_branch; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Bank Name &nbsp
</td>
<td>
 <input id="bank_nameedit" type="" class="form-control" name="bank_nameedit" readonly="true" value="<?php echo $bank_name; ?>" placeholder="<?php echo $bank_name; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>

</td>
<td>
<input type="submit" id="save" name="save" class="buttoncustom btn " value="Delete" />
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
     //include('../config/dbConfig.php');
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
    
                
               

                <td><center><img src="fetchimage.php?id=<?php echo $house_id?>" width="400" height="200" />
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
