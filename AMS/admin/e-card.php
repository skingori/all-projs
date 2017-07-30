<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>AMS Admin</title>
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
                    <a class="navbar-brand"  href="#" style="color:#fff;">
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
                        <a href="index.php" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                  
                    <li class="active-link">
                        <a href="#"><i class="fa fa-edit "></i>User Management  <span class="badge"></span></a>
                    </li>



                 <li>
                        <a href="propertymanagement.php?username=<?php echo $username?>"><i class="fa fa-qrcode "></i>Property Management</a>
                    </li>
                   
                     <li>
                   <a href="manageBooking.php?username=<?php echo $username?>" ><i class="fa fa-desktop "></i>Booking Management <span class="badge"></span></a>
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
                     <h2>e_card </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  --> 
                  <div>
                        
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#home" data-toggle="tab">Administrators</a>
                            </li>
                            <li class=""><a href="#profile" data-toggle="tab">Normal Users</a>
                            </li>
                            <li class=""><a href="#messages" data-toggle="tab">Guests</a>
                            </li>
                            <li class=""><a href="#messages2" data-toggle="tab">Add User</a>
                            </li>


                        </ul>
                     
                        <div class="tab-content">
                            <div class="tab-pane fade active in" id="home">
                                <h4>Admin Tab</h4>
                                <table id="admin" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Username</th>
                                        <th>Phone number</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>Date Created</th>
 
 <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
    include('../config/dbConfig.php');
        $query="SELECT * FROM ams_users WHERE role = 'admin'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $user_id = $row['ID'];
                  $name = $row['user_name'];
                  $phone = $row['phone_number'];
                  $email = $row['email'];
                  $gender = $row['gender'];
                  $date = $row['date_created'];
                  
    ?>
            <tr>
    <?php         $rowID = $row['ID']; ?>
                
               

                <td><?php echo $row['user_name']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['gender']; ?></td>
                
                <td><?php echo $row['date_created']; ?></td>


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#deleteAdmin<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#adminModal<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                            <div id="adminModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Edit property owner details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="update.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

<div id="deleteAdmin<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Delete property owner</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
  <form action="deleteUser.php" method="post" enctype="multipart/form-data" name="form5" id="form2">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control" readonly="true"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" readonly="true" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" readonly="true" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

    <script type='text/javascript'>
        
       // var modal = document.getElementById('editModal');
        /* attach a submit handler to the form */
    $("#form1").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form2").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val() } );

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
    </p>
    </table>
    </div>
                                
                       
                            <div class="tab-pane fade" id="profile">
                                <!--<div class="tab-pane fade active in" id="home">-->
                                <h4>Normal User</h4>
                                <table id="normals" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Username</th>
                                        <th>Phone number</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>Date Created</th>
 
 <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
    //include('../config/dbConfig.php');
        $query="SELECT * FROM ams_users WHERE role = 'normal'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $user_id = $row['ID'];
                  $name = $row['user_name'];
                  $phone = $row['phone_number'];
                  $email = $row['email'];
                  $gender = $row['gender'];
                  $date = $row['date_created'];
                  
    ?>
            <tr>
    <?php         $rowID = $row['ID']; ?>
                
               

                <td><?php echo $row['user_name']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['gender']; ?></td>
                
                <td><?php echo $row['date_created']; ?></td>


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#deleteAdmin<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#normalModal<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                            <div id="normalModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Edit property owner details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="update.php" method="post" enctype="multipart/form-data" name="form3" id="form3">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

<div id="deleteNormal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Delete property owner</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
  <form action="deleteUser.php" method="post" enctype="multipart/form-data" name="form4" id="form4">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control" readonly="true"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" readonly="true" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" readonly="true" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

    <script type='text/javascript'>
        
       // var modal = document.getElementById('editModal');
        /* attach a submit handler to the form */
    $("#form3").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form4").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form4").reset();
        window.location.reload();
        
        
    });
        
        
    });
    
    </script>
                         
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
    </p>
    </table>
    </div>

    <div class="tab-pane fade" id="messages">
                            <h4>Guest Tab</h4>
                                <table id="guests" class="table table-striped table-bordered nowrap" cellspacing="0" width="100%">
    <link rel="stylesheet" type="text/css" href="../css/jquerydataTables.css">
    <p>
    <thead>
        <tr>
            <th>Username</th>
                                        <th>Phone number</th>
                                        <th>Email</th>
                                        <th>Gender</th>
                                        <th>Date Created</th>
 
 <th>Edit/Delete</th>
        </tr>
    </thead>
    <?php
   // include('../config/dbConfig.php');
        $query="SELECT * FROM ams_users WHERE role = 'guest'";
        $result = mysqli_query($db,$query);
        $i=1;
        while($row = mysqli_fetch_assoc($result))
        {
          

        

                  $user_id = $row['ID'];
                  $name = $row['user_name'];
                  $phone = $row['phone_number'];
                  $email = $row['email'];
                  $gender = $row['gender'];
                  $date = $row['date_created'];
                  
    ?>
            <tr>
    <?php         $rowID = $row['ID']; ?>
                
               

                <td><?php echo $row['user_name']; ?></td>
                <td><?php echo $row['phone_number']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['gender']; ?></td>
                
                <td><?php echo $row['date_created']; ?></td>


                <td style="text-align: center">
                    <div class="btn-toolbar">
                        <div class="btn-group">
                            <a class="btn btn-danger" href="#deleteGuest<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal"><i class="icon-trash icon-white"></i> Delete</a>

                             <a class="btn update"  href="#guestModal<?php echo$i?>" data-sfid='"<?php echo $row['ID'];?>"' data-toggle="modal">Edit</a>
                            <!--Yor Edit Modal Goes Here-->
                            <div id="guestModal<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Edit property owner details</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
   <form action="update.php" method="post" enctype="multipart/form-data" name="form5" id="form5">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

<div id="deleteGuest<?php echo $i; ?>" class="modal fade in" role="dialog" ria-labelledby="myModals" aria-hidden="true">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="closeOwner" data-dismiss="modal">X</span>
      <h2><center>Delete property owner</center></h2>
    </div>
    <div class="modal-body">
   
   <div class="panel-body" style="overflow:auto;">
   
  <form action="deleteUser.php" method="post" enctype="multipart/form-data" name="form6" id="form6">
    
                   
              
<table id="form_table" >
<tr style=" height:50px; ">
<td>
Requestor &nbsp
</td>
<td>
 <input id="uid" type="" class="form-control" readonly="true" name="uid" value="<?php echo $_GET['username']; ?>" placeholder="<?php echo $_GET['username']; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Record ID &nbsp
</td>
<td>
 <input id="id" type="" class="form-control" readonly="true" name="id" value="<?php echo $user_id; ?>" placeholder="<?php echo $user_id; ?>" style="width : 600px;">  
                                       
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Name &nbsp
</td>
<td>
   <input id="name" type="" class="form-control" readonly="true"  name="name" value="<?php echo $name; ?>" placeholder="<?php echo $name; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Phone Number &nbsp
</td>
<td>
 <input id="phone" type="" class="form-control" readonly="true" name="phone" value="<?php echo $phone; ?>" placeholder="<?php echo $phone; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
Email Address &nbsp
</td>
<td>
 <input id="email" type="" class="form-control" readonly="true" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $email; ?>" style="width : 600px;">                                        
<span class=" control-label " style="color:red;" for="" ></span>

</td>
</tr>
<tr style=" height:50px; ">
<td>
User Role &nbsp
</td>
<td>
 <select id="role" name="role" style="color: #000">
      <option value="admin" id="admin">Admin</option>
      <option value="normal" id = "normal">Normal User</option>
      <option value="guest" id = "guest">Guest</option>
                                        </select>  
                                       
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

    <script type='text/javascript'>
        
       // var modal = document.getElementById('editModal');
        /* attach a submit handler to the form */
    $("#form1").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form2").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form2").reset();
        window.location.reload();
        
        
    });
        
        
    });
       $("#form3").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form3").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form4").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form4").reset();
        window.location.reload();
        
        
    });
        
        
    });
     $("#form5").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
         $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form5").reset();
        window.location.reload();
        
        
    });
    
    
      $("#form6").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val() } );

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form6").reset();
        window.location.reload();
        
        
    });
        
        
    });
    
    
    </script>
                         
                             </div>
                    </div>
                </td>
             </tr>
     <?php $i++; }  ?>
    </p>
    </table>
                               
     </div>
      <div class="tab-pane fade" id="messages2">
                            <h4>Add User</h4>
                             
    <form name = "formAddUser" id = "formAddUser" method = "post" action = "../signup/normalUserSignup.php">
     <p>
      Requestor:
      <input type = "text" name="username" value="<?php echo $_GET['username'];?>" id = "name" readonly = "true" placeholder = "<?php echo $_GET['username'];?>">
     </p>
     <p>
     <select id="gender" name= "gender">
      <option value="male" id="male">Male</option>
      <option value="female" id = "female">Female</option>
      
      
     </select></p>
        <p><input type="text" name="usernamesignup" value="" id = "usernamesignup" placeholder="Username"></p>
        <p><input type="password" name="passwordsignup" value="" id = "passwordsignup" placeholder="Password"></p>
        <p><input type="email" name="emailsignup" value="" id = "emailsignup" placeholder="you@yourmailaddress.com"></p>
        <p><input type="text" name="phonesignup" value="" maxlength="10" min="10" id = "phonesignup" placeholder="072"></p>
        
        <p class="submit"><input type="submit"  name="commit" value="AddUser" onclick="Signup();"></p>
      </form>
     

                            </div>                       

                        

                
                
                 
    
             <!-- /. PAGE INNER  -->
             
            
         <!-- /. PAGE WRAPPER  -->
         
        </div>

    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                   
                </div>
        </div>
        </div>
          
     <div id="form_sample"></div>
         
    </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    



</script>
    
    <script type='text/javascript'>
        
       // var modal = document.getElementById('editModal');
        /* attach a submit handler to the form */
    $("#form1").submit(function(event) {
     // alert("i am here ");
      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, {id: $('#id').val(),name: $('#name').val(),phone: $('#phone').val(),email: $('#email').val(),role: $('#role').val(), uid: $('#uid').val() } );

      /* Alerts the results */
      /*posting.done(function(data) {
    	 $('#editModal').modal.style.display="none"
         alert(data);
         document.getElementById("editor").reset();
        //modal.style.display = "none";
        
        
      });*/

       posting.done(function( data ) {
          
        alert(data);
        document.getElementById("form1").reset();
        window.location.reload();
        
        
    });
       $("#formAddUser").submit(function(event) {

      /* stop form from submitting normally */
      event.preventDefault();

      /* get the action attribute from the <form action=""> element */
      var $form = $( this ),
          url = $form.attr( 'action' );

      /* Send the data using post with element id name and name2*/
      var posting = $.post( url, { usernamesignup: $('#usernamesignup').val(), passwordsignup: $('#passwordsignup').val(),gender: $('#gender').val(),emailsignup: $('#emailsignup').val(),phonesignup: $('#phonesignup').val(),username: $('username').val() } );

      /* Alerts the results */
      posting.done(function( data ) {
        modal.style.display = "none";
        alert(data);
        document.getElementById("formAddUser").reset();
         window.location.reload();
        
      });
    });
    
    
      $("#form2").submit(function(event) {
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
        document.getElementById("form2").reset();
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
    $('#admin').dataTable();
} );

$(document).ready(function() {
    $('#normals').dataTable();
} );
$(document).ready(function() {
    $('#guests').dataTable();
} );
</script>



</script>
</body>
</html>




